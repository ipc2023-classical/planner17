#include "operator_factor_info.h"

#include "factoring.h"
#include "operator.h"
#include "utils/logging.h"
#include "utils/memory.h"

#include <iostream>

using namespace std;


class SingleFactorInfo: public FactorInfo {
    // operator is only preconditioned by and affects a single factor
    const LeafFactorID affected_factor;
    const vector<Condition> &preconditions;
    const vector<Effect> &effects;
public:
    SingleFactorInfo(LeafFactorID affected_factor,
                     const vector<Condition> &preconditions,
                     const vector<Effect> &effects) :
                         affected_factor(affected_factor),
                        preconditions(preconditions),
                        effects(effects) {
    }

    LeafFactorID get_affected_factor() const override {
        return affected_factor;
    }

    size_t get_number_leaf_pre_factors() const override {
        if (affected_factor == LeafFactorID::CENTER || preconditions.empty()){
            return 0;
        }
        return 1;
    }

    bool has_leaf_precondition() const override {
        return affected_factor != LeafFactorID::CENTER;
    }

    bool has_leaf_effect() const override {
        return affected_factor != LeafFactorID::CENTER;
    }

    OpsLeafProps<Condition> get_preconditions(LeafFactorID factor) const override {
        if (factor != affected_factor){
            return OpsLeafProps<Condition>(preconditions.begin(), preconditions.begin());
        }
        return OpsLeafProps<Condition>(preconditions.begin(), preconditions.end());
    }

    OpsLeafProps<Effect> get_effects(LeafFactorID factor) const override {
        if (factor != affected_factor){
            return OpsLeafProps<Effect>(effects.begin(), effects.begin());
        }
        return OpsLeafProps<Effect>(effects.begin(), effects.end());
    }

    bool has_precondition_on(LeafFactorID factor) const override {
        return factor == affected_factor && !preconditions.empty();
    }

    bool has_effect_on(LeafFactorID factor) const override {
        return factor == affected_factor && !effects.empty();
    }

    vector<LeafFactorID> get_leaf_pre_factors() const override {
        if (affected_factor == LeafFactorID::CENTER){
            return vector<LeafFactorID>();
        } else {
            return vector<LeafFactorID>(1, affected_factor);
        }
    }

    vector<LeafFactorID> get_leaf_effect_factors() const override {
        if (affected_factor == LeafFactorID::CENTER){
            return vector<LeafFactorID>();
        } else {
            return vector<LeafFactorID>(1, affected_factor);
        }
    }

    void dump() const override {
        cout << "SingleFactorInfo" << endl;
    }
};

class LeafOpCenterLeafPreFactorInfo: public FactorInfo {
    // leaf operator that is preconditioned by CENTER and (possibly) by affected_factor
    // effects only on affected_factor
    const LeafFactorID affected_factor;
    const vector<Condition>::const_iterator center_pre;
    const vector<Condition>::const_iterator leaf_pre;
    const vector<Condition>::const_iterator end_pre;
    const vector<Effect> &effects;
public:
    LeafOpCenterLeafPreFactorInfo(LeafFactorID affected_factor,
            const vector<Condition>::const_iterator center_pre,
            const vector<Condition>::const_iterator leaf_pre,
            const vector<Condition>::const_iterator end_pre,
            const vector<Effect> &effects) :
                        affected_factor(affected_factor),
                        center_pre(center_pre),
                        leaf_pre(leaf_pre),
                        end_pre(end_pre),
                        effects(effects) {
        assert(affected_factor != LeafFactorID::CENTER);
    }

    LeafFactorID get_affected_factor() const override {
        return affected_factor;
    }

    size_t get_number_leaf_pre_factors() const override {
        if (leaf_pre == end_pre){
            return 0;
        }
        return 1;
    }

    bool has_leaf_precondition() const override {
        return leaf_pre != end_pre;
    }

    bool has_leaf_effect() const override {
        return true;
    }

    OpsLeafProps<Condition> get_preconditions(LeafFactorID factor) const override {
        if (factor == affected_factor){
            return OpsLeafProps<Condition>(leaf_pre, end_pre);
        }
        if (factor == LeafFactorID::CENTER){
            return OpsLeafProps<Condition>(center_pre, leaf_pre);
        }
        return OpsLeafProps<Condition>(center_pre, center_pre);
    }

    OpsLeafProps<Effect> get_effects(LeafFactorID factor) const override {
        if (factor != affected_factor){
            return OpsLeafProps<Effect>(effects.begin(), effects.begin());
        }
        return OpsLeafProps<Effect>(effects.begin(), effects.end());
    }

    bool has_precondition_on(LeafFactorID factor) const override {
        return factor == LeafFactorID::CENTER || (factor == affected_factor && leaf_pre != end_pre);
    }

    bool has_effect_on(LeafFactorID factor) const override {
        return factor == affected_factor && !effects.empty();
    }

    vector<LeafFactorID> get_leaf_pre_factors() const override {
        if (leaf_pre != end_pre){
            return vector<LeafFactorID>(1, affected_factor);
        } else {
            return vector<LeafFactorID>();
        }
    }

    vector<LeafFactorID> get_leaf_effect_factors() const override {
        return vector<LeafFactorID>(1, affected_factor);
    }

    void dump() const override {
        cout << "LeafOpCenterLeafPreFactorInfo, factor " << affected_factor << endl;
    }
};

class CenterOpLeafPreFactorInfo: public FactorInfo {
    // center operator that is preconditioned by pre_factor and (possibly) by CENTER
    // effects only on CENTER
    const LeafFactorID pre_factor;
    const vector<Condition>::const_iterator center_pre;
    const vector<Condition>::const_iterator leaf_pre;
    const vector<Condition>::const_iterator end_pre;
    const vector<Effect> &effects;
public:
    CenterOpLeafPreFactorInfo(LeafFactorID pre_factor,
            const vector<Condition>::const_iterator center_pre,
            const vector<Condition>::const_iterator leaf_pre,
            const vector<Condition>::const_iterator end_pre,
            const vector<Effect> &effects) :
                        pre_factor(pre_factor),
                        center_pre(center_pre),
                        leaf_pre(leaf_pre),
                        end_pre(end_pre),
                        effects(effects) {
            assert(pre_factor != LeafFactorID::CENTER);
            assert(leaf_pre != end_pre);
    }

    LeafFactorID get_affected_factor() const override {
        return LeafFactorID::CENTER;
    }

    size_t get_number_leaf_pre_factors() const override {
        return 1;
    }

    bool has_leaf_precondition() const override {
        return true;
    }

    bool has_leaf_effect() const override {
        return false;
    }

    OpsLeafProps<Condition> get_preconditions(LeafFactorID factor) const override {
        if (factor == pre_factor){
            return OpsLeafProps<Condition>(leaf_pre, end_pre);
        }
        if (factor == LeafFactorID::CENTER){
            return OpsLeafProps<Condition>(center_pre, leaf_pre);
        }
        return OpsLeafProps<Condition>(center_pre, center_pre);
    }

    OpsLeafProps<Effect> get_effects(LeafFactorID factor) const override {
        if (factor != LeafFactorID::CENTER){
            return OpsLeafProps<Effect>(effects.begin(), effects.begin());
        }
        return OpsLeafProps<Effect>(effects.begin(), effects.end());
    }

    bool has_precondition_on(LeafFactorID factor) const override {
        return factor == pre_factor || (factor == LeafFactorID::CENTER && center_pre != leaf_pre);
    }

    bool has_effect_on(LeafFactorID factor) const override {
        return factor == LeafFactorID::CENTER && !effects.empty();
    }

    vector<LeafFactorID> get_leaf_pre_factors() const override {
        return vector<LeafFactorID>(1, pre_factor);
    }

    vector<LeafFactorID> get_leaf_effect_factors() const override {
        return vector<LeafFactorID>();
    }

    void dump() const override {
        cout << "CenterOpLeafPreFactorInfo, pre-factor " << pre_factor << endl;
    }
};

class CenterOpLeafEffFactorInfo: public FactorInfo {
    // center operator that is preconditioned only by CENTER
    // effects on eff_factor and CENTER
    const LeafFactorID eff_factor;
    const vector<Condition> &preconditions;
    const vector<Effect>::const_iterator center_eff;
    const vector<Effect>::const_iterator leaf_eff;
    const vector<Effect>::const_iterator end_eff;
public:
    CenterOpLeafEffFactorInfo(LeafFactorID eff_factor,
            const vector<Condition> &preconditions,
            const vector<Effect>::const_iterator center_eff,
            const vector<Effect>::const_iterator leaf_eff,
            const vector<Effect>::const_iterator end_eff) :
                        eff_factor(eff_factor),
                        preconditions(preconditions),
                        center_eff(center_eff),
                        leaf_eff(leaf_eff),
                        end_eff(end_eff) {
            assert(eff_factor != LeafFactorID::CENTER);
            assert(leaf_eff != end_eff);
    }

    LeafFactorID get_affected_factor() const override {
        return LeafFactorID::CENTER;
    }

    size_t get_number_leaf_pre_factors() const override {
        return 0;
    }

    bool has_leaf_precondition() const override {
        return false;
    }

    bool has_leaf_effect() const override {
        return true;
    }

    OpsLeafProps<Condition> get_preconditions(LeafFactorID factor) const override {
        if (factor == LeafFactorID::CENTER){
            return OpsLeafProps<Condition>(preconditions.begin(), preconditions.end());
        }
        return OpsLeafProps<Condition>(preconditions.begin(), preconditions.begin());
    }

    OpsLeafProps<Effect> get_effects(LeafFactorID factor) const override {
        if (factor == LeafFactorID::CENTER){
            return OpsLeafProps<Effect>(center_eff, leaf_eff);
        }
        if (factor == eff_factor){
            return OpsLeafProps<Effect>(leaf_eff, end_eff);
        }
        return OpsLeafProps<Effect>(center_eff, center_eff);
    }

    bool has_precondition_on(LeafFactorID factor) const override {
        return factor == LeafFactorID::CENTER && !preconditions.empty();
    }

    bool has_effect_on(LeafFactorID factor) const override {
        return factor == eff_factor || (factor == LeafFactorID::CENTER && center_eff != leaf_eff);
    }

    vector<LeafFactorID> get_leaf_pre_factors() const override {
        return vector<LeafFactorID>();
    }

    vector<LeafFactorID> get_leaf_effect_factors() const override {
        return vector<LeafFactorID>(1, eff_factor);
    }

    void dump() const override {
        cout << "CenterOpLeafEffFactorInfo, eff-factor " << eff_factor << endl;
    }
};

class CenterOpPreEffOneLeafFactorInfo: public FactorInfo {
    // center operator that is preconditioned by and has effect on leaf_factor
    const LeafFactorID leaf_factor;
    const vector<Condition>::const_iterator center_pre;
    const vector<Condition>::const_iterator leaf_pre;
    const vector<Condition>::const_iterator end_pre;
    const vector<Effect>::const_iterator center_eff;
    const vector<Effect>::const_iterator leaf_eff;
    const vector<Effect>::const_iterator end_eff;
public:
    CenterOpPreEffOneLeafFactorInfo(LeafFactorID leaf_factor,
            const vector<Condition>::const_iterator center_pre,
            const vector<Condition>::const_iterator leaf_pre,
            const vector<Condition>::const_iterator end_pre,
            const vector<Effect>::const_iterator center_eff,
            const vector<Effect>::const_iterator leaf_eff,
            const vector<Effect>::const_iterator end_eff) :
                        leaf_factor(leaf_factor),
                        center_pre(center_pre),
                        leaf_pre(leaf_pre),
                        end_pre(end_pre),
                        center_eff(center_eff),
                        leaf_eff(leaf_eff),
                        end_eff(end_eff) {
            assert(leaf_factor != LeafFactorID::CENTER);
            assert(leaf_pre != end_pre);
            assert(leaf_eff != end_eff);
    }

    LeafFactorID get_affected_factor() const override {
        return LeafFactorID::CENTER;
    }

    size_t get_number_leaf_pre_factors() const override {
        return 1;
    }

    bool has_leaf_precondition() const override {
        return true;
    }

    bool has_leaf_effect() const override {
        return true;
    }

    OpsLeafProps<Condition> get_preconditions(LeafFactorID factor) const override {
        if (factor == LeafFactorID::CENTER){
            return OpsLeafProps<Condition>(center_pre, leaf_pre);
        }
        if (factor == leaf_factor){
            return OpsLeafProps<Condition>(leaf_pre, end_pre);
        }
        return OpsLeafProps<Condition>(center_pre, center_pre);
    }

    OpsLeafProps<Effect> get_effects(LeafFactorID factor) const override {
        if (factor == LeafFactorID::CENTER){
            return OpsLeafProps<Effect>(center_eff, leaf_eff);
        }
        if (factor == leaf_factor){
            return OpsLeafProps<Effect>(leaf_eff, end_eff);
        }
        return OpsLeafProps<Effect>(center_eff, center_eff);
    }

    bool has_precondition_on(LeafFactorID factor) const override {
        return factor == leaf_factor || (factor == LeafFactorID::CENTER && center_pre != leaf_pre);
    }

    bool has_effect_on(LeafFactorID factor) const override {
        return factor == leaf_factor || (factor == LeafFactorID::CENTER && center_eff != leaf_eff);
    }

    vector<LeafFactorID> get_leaf_pre_factors() const override {
        return vector<LeafFactorID>(1, leaf_factor);
    }

    vector<LeafFactorID> get_leaf_effect_factors() const override {
        return vector<LeafFactorID>(1, leaf_factor);
    }

    void dump() const override {
        cout << "CenterOpPreEffOneLeafFactorInfo, leaf-factor " << leaf_factor << endl;
    }
};

class ManyLeafPreNoEffFactorInfo: public FactorInfo {
    // center operator without leaf effect but with preconditions
    // on more than 1 leaf

    // index 0 is center factor, leaves shifted by one;
    // last is end iterator of preconditions/effects of Operator
    const vector<vector<Condition>::const_iterator> pre_by_factor;
    const vector<Effect> &effects;
public:
    ManyLeafPreNoEffFactorInfo(vector<vector<Condition>::const_iterator> pre_by_factor,
                               const vector<Effect> &effects) :
                        pre_by_factor(pre_by_factor),
                        effects(effects) {
    }

    LeafFactorID get_affected_factor() const override {
        return LeafFactorID::CENTER;
    }

    size_t get_number_leaf_pre_factors() const override {
        size_t pre_factors = 0;
        for (size_t i = 1; i < pre_by_factor.size() - 1; ++i){
            // if pre_by_factor[i] == pre_by_factor[i+1] => no preconditions on factor i-1
            if (pre_by_factor[i] != pre_by_factor[i+1]){
                ++pre_factors;
            }
        }
        return pre_factors;
    }

    bool has_leaf_precondition() const override {
        return true;
    }

    bool has_leaf_effect() const override {
        return false;
    }

    OpsLeafProps<Condition> get_preconditions(LeafFactorID factor) const override {
        if (factor == LeafFactorID::CENTER){
            return OpsLeafProps<Condition>(pre_by_factor[0], pre_by_factor[1]);
        }
        if ((size_t) factor + 1 >= pre_by_factor.size() - 1){ // +1 for center shift; -1 for end() iterator
            return OpsLeafProps<Condition>(pre_by_factor[0], pre_by_factor[0]);
        }
        return OpsLeafProps<Condition>(pre_by_factor[factor + 1], pre_by_factor[factor + 2]);
    }

    OpsLeafProps<Effect> get_effects(LeafFactorID factor) const override {
        if (factor == LeafFactorID::CENTER){
            return OpsLeafProps<Effect>(effects.begin(), effects.end());
        }
        return OpsLeafProps<Effect>(effects.begin(), effects.begin());
    }

    bool has_precondition_on(LeafFactorID factor) const override {
        if (factor == LeafFactorID::CENTER){
            return pre_by_factor[0] != pre_by_factor[1];
        }
        if ((size_t) factor + 1 < pre_by_factor.size() - 1){ // +1 for center shift; -1 for end() iterator
            return pre_by_factor[factor + 1] != pre_by_factor[factor + 2];
        }
        return false;
    }

    bool has_effect_on(LeafFactorID factor) const override {
        return factor == LeafFactorID::CENTER && !effects.empty();
    }

    vector<LeafFactorID> get_leaf_pre_factors() const override {
        vector<LeafFactorID> pre_factors;
        for (size_t i = 1; i < pre_by_factor.size() - 1; ++i){
            // if pre_by_factor[i] == pre_by_factor[i+1] => no preconditions on factor i-1
            if (pre_by_factor[i] != pre_by_factor[i+1]){
                pre_factors.push_back(LeafFactorID(i - 1));
            }
        }
        return pre_factors;
    }

    vector<LeafFactorID> get_leaf_effect_factors() const override {
        return vector<LeafFactorID>();
    }

    void dump() const override {
        cout << "ManyLeafPreNoEffFactorInfo" << endl;
        for (vector<Condition>::const_iterator it : pre_by_factor){
            cout << (int)(it - *pre_by_factor.cbegin()) << endl;
        }
    }
};

class GeneralFactorInfo: public FactorInfo {
    // operator does not fall into any other special case
    // this is necessarily a center action

    // index 0 is center factor, leaves shifted by one;
    // last is end iterator of preconditions/effects of Operator
    const vector<vector<Condition>::const_iterator> pre_by_factor;
    const vector<vector<Effect>::const_iterator> eff_by_factor;
public:
    GeneralFactorInfo(vector<vector<Condition>::const_iterator> pre_by_factor,
                      vector<vector<Effect>::const_iterator> eff_by_factor) :
                        pre_by_factor(pre_by_factor),
                        eff_by_factor(eff_by_factor) {
    }

    LeafFactorID get_affected_factor() const override {
        return LeafFactorID::CENTER;
    }

    size_t get_number_leaf_pre_factors() const override {
        size_t pre_factors = 0;
        for (size_t i = 1; i < pre_by_factor.size() - 1; ++i){
            // if pre_by_factor[i] == pre_by_factor[i+1] => no preconditions on factor i-1
            if (pre_by_factor[i] != pre_by_factor[i+1]){
                ++pre_factors;
            }
        }
        return pre_factors;
    }

    bool has_leaf_precondition() const override {
        return pre_by_factor[1] != pre_by_factor.back();
    }

    bool has_leaf_effect() const override {
        return eff_by_factor[1] != eff_by_factor.back();
    }

    OpsLeafProps<Condition> get_preconditions(LeafFactorID factor) const override {
        if (factor == LeafFactorID::CENTER){
            return OpsLeafProps<Condition>(pre_by_factor[0], pre_by_factor[1]);
        }
        if ((size_t) factor + 1 >= pre_by_factor.size() - 1){ // +1 for center shift; -1 for end() iterator
            return OpsLeafProps<Condition>(pre_by_factor[0], pre_by_factor[0]);
        }
        return OpsLeafProps<Condition>(pre_by_factor[factor + 1], pre_by_factor[factor + 2]);
    }

    OpsLeafProps<Effect> get_effects(LeafFactorID factor) const override {
        if (factor == LeafFactorID::CENTER){
            return OpsLeafProps<Effect>(eff_by_factor[0], eff_by_factor[1]);
        }
        if ((size_t) factor + 1 >= eff_by_factor.size() - 1){ // +1 for center shift; -1 for end() iterator
            return OpsLeafProps<Effect>(eff_by_factor[0], eff_by_factor[0]);
        }
        return OpsLeafProps<Effect>(eff_by_factor[factor + 1], eff_by_factor[factor + 2]);
    }

    bool has_precondition_on(LeafFactorID factor) const override {
        if (factor == LeafFactorID::CENTER){
            return pre_by_factor[0] != pre_by_factor[1];
        }
        if ((size_t) factor + 1 < pre_by_factor.size() - 1){ // +1 for center shift; -1 for end() iterator
            return pre_by_factor[factor + 1] != pre_by_factor[factor + 2];
        }
        return false;
    }

    bool has_effect_on(LeafFactorID factor) const override {
        if (factor == LeafFactorID::CENTER){
            return eff_by_factor[0] != eff_by_factor[1];
        }
        if ((size_t) factor + 1 < eff_by_factor.size() - 1){ // +1 for center shift; -1 for end() iterator
            return eff_by_factor[factor + 1] != eff_by_factor[factor + 2];
        }
        return false;
    }

    vector<LeafFactorID> get_leaf_pre_factors() const override {
        vector<LeafFactorID> pre_factors;
        for (size_t i = 1; i < pre_by_factor.size() - 1; ++i){
            // if pre_by_factor[i] == pre_by_factor[i+1] => no preconditions on factor i-1
            if (pre_by_factor[i] != pre_by_factor[i+1]){
                pre_factors.push_back(LeafFactorID(i - 1));
            }
        }
        return pre_factors;
    }

    vector<LeafFactorID> get_leaf_effect_factors() const override {
        vector<LeafFactorID> eff_factors;
        for (size_t i = 1; i < eff_by_factor.size() - 1; ++i){
            // if eff_by_factor[i] == eff_by_factor[i+1] => no effects on factor i-1
            if (eff_by_factor[i] != eff_by_factor[i+1]){
                eff_factors.push_back(LeafFactorID(i - 1));
            }
        }
        return eff_factors;
    }

    void dump() const override {
        cout << "GeneralFactorInfo" << endl;
        cout << "# center pre: " << get_preconditions(LeafFactorID::CENTER).size() << endl;
        cout << "# center effects: " << get_effects(LeafFactorID::CENTER).size() << endl;
        cout << "precondition factors " << get_leaf_pre_factors() << endl;
        cout << "effect factors " << get_leaf_effect_factors() << endl;
    }
};



unique_ptr<FactorInfo> FactorInfo::create(const Operator *op, LeafFactorID affected_factor) {
    const vector<Condition> &preconditions = op->get_preconditions();
    const vector<Effect> &effects = op->get_effects();

    bool center_pre = !preconditions.empty();
    int num_leaf_pre = 0;
    vector<vector<Condition>::const_iterator> pre_by_factor;
    if (affected_factor == LeafFactorID::CENTER && g_factoring->get_profile() != FORK){
        pre_by_factor.reserve(min(preconditions.size() + 1, g_leaves.size() + 2));
    }
    pre_by_factor.push_back(preconditions.cbegin());
    LeafFactorID curr_factor(LeafFactorID::CENTER);
    for (vector<Condition>::const_iterator it = preconditions.cbegin(); it != preconditions.cend(); ++it){
        if (g_belongs_to_factor[it->var] != curr_factor){
            ++num_leaf_pre;
            if (curr_factor == LeafFactorID::CENTER){
                pre_by_factor.push_back(it);
                curr_factor = LeafFactorID(0);
                if (it == preconditions.cbegin()){
                    center_pre = false;
                }
            }
            while (curr_factor < g_belongs_to_factor[it->var]){
                pre_by_factor.push_back(it);
                ++curr_factor;
            }
        }
    }
    pre_by_factor.push_back(preconditions.cend());
    pre_by_factor.shrink_to_fit();

    vector<vector<Effect>::const_iterator> eff_by_factor;
    int num_leaf_eff = 0;
    if (affected_factor == LeafFactorID::CENTER){
        if (affected_factor == LeafFactorID::CENTER && g_factoring->get_profile() != FORK && g_factoring->get_profile() != IFORK){
            eff_by_factor.reserve(min(effects.size() + 1, g_leaves.size() + 2));
        }
        eff_by_factor.push_back(effects.cbegin());
        curr_factor = LeafFactorID::CENTER;
        for (vector<Effect>::const_iterator it = effects.cbegin(); it != effects.cend(); ++it){
            if (g_belongs_to_factor[it->var] != curr_factor){
                ++num_leaf_eff;
                if (curr_factor == LeafFactorID::CENTER){
                    eff_by_factor.push_back(it);
                    curr_factor = LeafFactorID(0);
                }
                while (curr_factor < g_belongs_to_factor[it->var]){
                    eff_by_factor.push_back(it);
                    ++curr_factor;
                }
            }
        }
        eff_by_factor.push_back(effects.cend());
        eff_by_factor.shrink_to_fit();
    }

    if (affected_factor == LeafFactorID::CENTER){
        if (num_leaf_pre == 0 && num_leaf_eff == 0){
            // not preconditioned by or affects any leaf factor
            return utils::make_unique_ptr<SingleFactorInfo>(affected_factor, preconditions, effects);
        } else if (num_leaf_pre == 1 && num_leaf_eff == 0){
            // effects only on center, preconditions on one leaf + possibly center
            vector<Condition>::const_iterator start_leaf_pre = pre_by_factor[0]; // in case there is no center precondition
            for (size_t i = 1; i < pre_by_factor.size() - 1; ++i){
                if (pre_by_factor[i] != pre_by_factor[i+1]){
                    start_leaf_pre = pre_by_factor[i];
                    break;
                }
            }
            // we have to find an iterator in the loop unless there are no center preconditions
            assert(start_leaf_pre != pre_by_factor[0] || pre_by_factor[0] == pre_by_factor[1]);
            return utils::make_unique_ptr<CenterOpLeafPreFactorInfo>(g_belongs_to_factor[start_leaf_pre->var],
                                                        preconditions.cbegin(), start_leaf_pre, preconditions.cend(),
                                                        effects);
        } else if (num_leaf_pre == 0 && num_leaf_eff == 1){
            // preconditions only on center, effects on one leaf + center
            vector<Effect>::const_iterator start_leaf_eff = eff_by_factor[0];
            for (size_t i = 1; i < eff_by_factor.size() - 1; ++i){
                if (eff_by_factor[i] != eff_by_factor[i+1]){
                    start_leaf_eff = eff_by_factor[i];
                    break;
                }
            }
            // we have to find an iterator in the loop
            assert(start_leaf_eff != eff_by_factor[0]);
            return utils::make_unique_ptr<CenterOpLeafEffFactorInfo>(g_belongs_to_factor[start_leaf_eff->var],
                                                        preconditions,
                                                        effects.cbegin(), start_leaf_eff, effects.cend());
        } else if (num_leaf_pre == 1 && num_leaf_eff == 1 && pre_by_factor.size() == eff_by_factor.size()){
            // conditions are: has pre/eff on exactly one leaf,
            // if pre_by_factor and eff_by_factor have same size => same leaf

            // affects/preconditioned by center + one leaf factor
            vector<Condition>::const_iterator start_leaf_pre = pre_by_factor[0];
            for (size_t i = 1; i < pre_by_factor.size() - 1; ++i){
                if (pre_by_factor[i] != pre_by_factor[i+1]){
                    start_leaf_pre = pre_by_factor[i];
                    break;
                }
            }
            // we have to find an iterator in the loop
            assert(start_leaf_pre != pre_by_factor[0] || g_belongs_to_factor[start_leaf_pre->var] != LeafFactorID::CENTER);

            vector<Effect>::const_iterator start_leaf_eff = eff_by_factor[0];
            for (size_t i = 1; i < eff_by_factor.size() - 1; ++i){
                if (eff_by_factor[i] != eff_by_factor[i+1]){
                    start_leaf_eff = eff_by_factor[i];
                    break;
                }
            }
            // we have to find an iterator in the loop
            assert(start_leaf_eff != eff_by_factor[0]);
            assert(g_belongs_to_factor[start_leaf_pre->var] == g_belongs_to_factor[start_leaf_eff->var]);

            return utils::make_unique_ptr<CenterOpPreEffOneLeafFactorInfo>(g_belongs_to_factor[start_leaf_pre->var],
                                                              preconditions.begin(), start_leaf_pre, preconditions.end(),
                                                              effects.begin(), start_leaf_eff, effects.end());
        } else if (num_leaf_pre > 1 && num_leaf_eff == 0){
            // only center effects, preconditions on more than one leaf factor
            return utils::make_unique_ptr<ManyLeafPreNoEffFactorInfo>(pre_by_factor, effects);
        } else {
            // no special case applies
            return utils::make_unique_ptr<GeneralFactorInfo>(pre_by_factor, eff_by_factor);
        }
    } else {
        if (center_pre){
            vector<Condition>::const_iterator start_leaf_pre = pre_by_factor.back(); // in case there is no leaf precondition
            for (size_t i = 1; i < pre_by_factor.size() - 1; ++i){
                if (pre_by_factor[i] != pre_by_factor[i+1]){
                    start_leaf_pre = pre_by_factor[i];
                    break;
                }
            }
            return utils::make_unique_ptr<LeafOpCenterLeafPreFactorInfo>(
                    affected_factor,
                    preconditions.cbegin(),
                    start_leaf_pre,
                    preconditions.cend(),
                    effects);
        } else {
            // not preconditioned by factor
            return utils::make_unique_ptr<SingleFactorInfo>(affected_factor, preconditions, effects);
        }
    }
}
