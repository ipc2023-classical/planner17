#ifndef CPG_STORAGE
#define CPG_STORAGE

#include "../per_state_information.h"

class CompliantPathGraph;
class PruningOptions;

class CPGStorage {

protected:

    virtual void register_at_compliant_path_graph() = 0;

public:

    virtual ~CPGStorage() = default;

    virtual const CompliantPathGraph* get_cpg(const GlobalState &state) const = 0;

    virtual size_t size(const StateRegistry *registry) const = 0;


    static CPGStorage *storage; // TODO make this private and the access methods static?

    static void initialize(const PruningOptions &pruning_options);

};

template<class T>
class Storage : public CPGStorage {
    friend T; // to get non-const cpg

    PerStateInformation<T> cpgs;

    void store_cpg(const GlobalState &state, T &cpg) {
        cpgs[state] = std::move(cpg);
    }

protected:

    virtual void register_at_compliant_path_graph() override;

public:

    virtual const CompliantPathGraph* get_cpg(const GlobalState &state) const override {
        return &cpgs[state];
    }

    virtual size_t size(const StateRegistry *registry) const override {
        return cpgs.size(registry);
    }

};


#endif
