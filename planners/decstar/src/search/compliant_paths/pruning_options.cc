#include "pruning_options.h"

#include "compliant_path_graph.h"
#include "explicit_state_cpg.h"
#include "../factoring.h"
#include "../option_parser.h"
#include "../plugin.h"
#include "simulation_relation.h"


using namespace std;


bool PruningOptions::ignore_current_search_state = false;



PruningOptions::PruningOptions(const Options &opts)
                    : pruning_type(opts.get<PRUNING_TYPE>("pruning_type")),
                      hypercube_pruning(opts.get<bool>("hypercube_pruning")),
                      min_price_in_g(opts.get<bool>("include_price_in_g")),
                      g_in_dominance(opts.get<bool>("include_g_in_dominance")),
                      prices_in_dominance(opts.get<bool>("trade_prices_in_dominance")),
                      transitivity(opts.get<bool>("use_transitivity")),
                      exploit_leaf_invertibility(opts.get<bool>("exploit_leaf_invertibility")),
                      irrelevance(opts.get<IRRELEVANCE>("irrelevance")),
                      do_simulation(opts.get<bool>("simulation")),
                      goal_price_propagation(opts.get<bool>("goal_price_propagation")) {

    switch (pruning_type){
    case PRUNING_TYPE::DOMINANCE: cout << "using dominance pruning" << endl; break;
    case PRUNING_TYPE::DUPLICATE: cout << "using exact duplicate checking" << endl; break;
    case PRUNING_TYPE::FRONTIER: cout << "using frontier pruning method" << endl; break;
    }                                            
                                            
    if (goal_price_propagation || do_simulation || irrelevance != IRRELEVANCE::NO){
        ExplicitStateCPG::set_compute_leaf_backwards_graph();
        ExplicitStateCPG::set_store_leaf_goal_states();
        
        if (goal_price_propagation){
            cout << "using goal price propagation" << endl;
        }
        if (do_simulation){
            cout << "using simulation within leaf factors" << endl;
        }
        if (irrelevance != IRRELEVANCE::NO){
            cout << "performing irrelevance analysis in leaf factors" << endl;
        }
    }
    if (hypercube_pruning){
        cout << "performing hypercube pruning" << endl;
    }
}

void PruningOptions::verify_options() {
    if (pruning_type == PRUNING_TYPE::FRONTIER &&
            (min_price_in_g ||
                    g_in_dominance ||
                    prices_in_dominance)){
        cout << "WARNING: include_price_in_g, include_g_in_dominance, or trade_prices_in_dominance are not"
                "supported for cost_frontier pruning, disabling these options in favor of frontier pruning." << endl;
        min_price_in_g = false;
        g_in_dominance = false;
        prices_in_dominance = false;
    }
    if (pruning_type == PRUNING_TYPE::DUPLICATE){
        if (hypercube_pruning){
            hypercube_pruning = false;
            cout << "Disabling hypercube pruning for exact duplicate checking." << endl;
        }
        if (g_in_dominance){
            g_in_dominance = false;
            cout << "Disabling incorporation of g-value difference into dominance check for exact duplicate checking." << endl;
        }
        if (prices_in_dominance){
            prices_in_dominance = false;
            cout << "Disabling trading of prices for exact duplicate checking." << endl;
        }
        if (transitivity){
            transitivity = false;
            cout << "Disabling exploitation of dominance transitivity for exact duplicate checking, this does not have any effect." << endl;
        }
    }
    if (g_factoring->get_leaf_representation_type() == LEAF_REPRESENTATION_TYPE::SYMBOLIC){
        if (goal_price_propagation || do_simulation || irrelevance != IRRELEVANCE::NO){
            cerr << "Goal price propagation, simulation, and irrelavance pruning are not supported with symbolic leaves." << endl;
            exit_with(utils::ExitCode::SEARCH_UNSUPPORTED);
        }
        if (pruning_type == PRUNING_TYPE::FRONTIER){
            cerr << "Frontier pruning is not supported with symbolic leaves." << endl;
            exit_with(utils::ExitCode::SEARCH_UNSUPPORTED);
        }
        if (pruning_type == PRUNING_TYPE::DUPLICATE){
            cerr << "Exact duplicate checking is not supported with symbolic leaves." << endl;
            exit_with(utils::ExitCode::SEARCH_UNSUPPORTED);
        }
        if (hypercube_pruning){
            cerr << "Hypercube pruning is not supported with symbolic leaves." << endl;
            exit_with(utils::ExitCode::SEARCH_UNSUPPORTED);
        }
        if (g_symmetry_graph){
            cerr << "Symmetry breaking is not supported with symbolic leaves." << endl;
            exit_with(utils::ExitCode::SEARCH_UNSUPPORTED);
        }
        if (exploit_leaf_invertibility){
            exploit_leaf_invertibility = false;
            cout << "WARNING: exploiting leaf invertibility and symbolic leaves are not compatible; exploiting invertibility will be switched off." << endl;
        }
        if (g_in_dominance || prices_in_dominance){
            g_in_dominance = false;
            prices_in_dominance = false;
            cout << "WARNING: cannot incorporate the g-value or price differences across leaves in dominance checking with symbolic leaves." <<  endl;
        }
    }
    if (g_factoring->get_profile() != FORK){
        if (pruning_type == PRUNING_TYPE::FRONTIER ||
                goal_price_propagation ||
                do_simulation ||
                irrelevance != IRRELEVANCE::NO){

            cerr << "Advanced pruning methods are only supported for fork factorings!" << endl;
            exit_with(utils::ExitCode::SEARCH_UNSUPPORTED);
        }
    }
    if (g_factoring->get_search_type() == SAT || g_factoring->get_search_type() == UNSAT){
        if (goal_price_propagation){
            cerr << "goal price propagation is not (yet) supported for satisficing search" << endl;
            exit_with(utils::ExitCode::SEARCH_UNSUPPORTED);
        }        
        if (do_simulation){
            cerr << "simulation is not (yet) supported for satisficing search" << endl;
            exit_with(utils::ExitCode::SEARCH_UNSUPPORTED);
        }
    }
    if (hypercube_pruning){
        if (g_factoring->get_search_type() != SAT && g_factoring->get_search_type() != UNSAT){
            cerr << "Hypercube pruning is only supported for satisficing planning." << endl;
            exit_with(utils::ExitCode::SEARCH_UNSUPPORTED);
        }
        if (pruning_type == PRUNING_TYPE::FRONTIER){
            cerr << "Hypercube pruning is not supported with frontier pruning." << endl;
            exit_with(utils::ExitCode::SEARCH_UNSUPPORTED);
        }
    }
    if (g_symmetry_graph){
        if (irrelevance != IRRELEVANCE::NO){
            cerr << "Irrelevance pruning is not supported for decoupled orbit search!" << endl;
            exit_with(utils::ExitCode::SEARCH_UNSUPPORTED);
        }
        if (pruning_type == PRUNING_TYPE::FRONTIER && 
               (g_factoring->get_search_type() == SAT || g_factoring->get_search_type() == UNSAT)){
            cerr << "Satisficing search with frontier pruning is not supported for decoupled orbit search!" << endl;
            exit_with(utils::ExitCode::SEARCH_UNSUPPORTED);
        }
        if (exploit_leaf_invertibility){
            cout << "WARNING: exploiting leaf invertibility and symmetry state pruning are not fully compatible; probably exploiting invertibility will be switched off." << endl;
        }
    }
}

void PruningOptions::apply_leaf_state_space_pruning() const {
    if (do_simulation || irrelevance != IRRELEVANCE::NO){
        SimulationRelation rel(ExplicitStateCPG::leaf_state_successors, ExplicitStateCPG::leaf_state_predecessors);
        rel.init();
        rel.statistics();
        if (irrelevance != IRRELEVANCE::NO) {
            rel.perform_leaf_irrelevance_pruning(ExplicitStateCPG::compute_leaf_backwards_graph, irrelevance == STATES, true);
        }

        if (do_simulation) {
            rel.set_list_dominated_states(); 
        }
    }
}


void PruningOptions::add_options_to_parser(OptionParser &parser){
    parser.add_option<bool>("hypercube_pruning",
                            "perform hypercube pruning",
                            "false");

    parser.add_option<bool>("include_price_in_g",
                            "increase the g-value of decoupled states by the sum of minimum prices",
                            "true");

    parser.add_option<bool>("include_g_in_dominance",
                            "incorporate the difference in g-values of decoupled states into the dominance checking",
                            "true");

    parser.add_option<bool>("trade_prices_in_dominance",
                            "trade prices across leaves in dominance checking",
                            "true");

    parser.add_option<bool>("use_transitivity",
                            "exploit transitivity of dominance relation to avoid computational overhead",
                            "true");

    parser.add_option<bool>("exploit_leaf_invertibility",
                            "compute and exploit invertibility of leaf state spaces",
                            "true");

    parser.add_option<bool>("goal_price_propagation",
                            "perform goal price propagation", "false");
    
    parser.add_option<bool>("simulation",
                            "perform simulation dominance pruning", "false");

    vector<string> irr_options({"NO", "STATES", "TRANSITIONS"});
    parser.add_enum_option<IRRELEVANCE>("irrelevance",
                           irr_options,
                           "perform simulation irrelevance pruning", "NO");
}

static PluginTypePlugin<PruningOptions> _type_plugin(
    "PruningOptions",
    "TODO");

shared_ptr<PruningOptions> PruningOptions::_parse_dominance(OptionParser &parser) {
    PruningOptions::add_options_to_parser(parser);
    Options opts = parser.parse();
    
    opts.set<PruningOptions::PRUNING_TYPE>("pruning_type", PruningOptions::PRUNING_TYPE::DOMINANCE);

    if (!parser.dry_run()) {
        return make_shared<PruningOptions>(opts);
    }

    return 0;
}

shared_ptr<PruningOptions> PruningOptions::_parse_duplicate(OptionParser &parser) {
    PruningOptions::add_options_to_parser(parser);
    Options opts = parser.parse();

    opts.set<PruningOptions::PRUNING_TYPE>("pruning_type", PruningOptions::PRUNING_TYPE::DUPLICATE);

    if (!parser.dry_run()) {
        return make_shared<PruningOptions>(opts);
    }

    return 0;
}

shared_ptr<PruningOptions> PruningOptions::_parse_frontier(OptionParser &parser) {
    PruningOptions::add_options_to_parser(parser);
    Options opts = parser.parse();
    
    opts.set<PruningOptions::PRUNING_TYPE>("pruning_type", PruningOptions::PRUNING_TYPE::FRONTIER);

    if (!parser.dry_run()) {
        return make_shared<PruningOptions>(opts);
    }

    return 0;
}

static Plugin<PruningOptions> _plugin_dominance("dominance", PruningOptions::_parse_dominance);
static Plugin<PruningOptions> _plugin_duplicate("duplicate", PruningOptions::_parse_duplicate);
static Plugin<PruningOptions> _plugin_frontier("cost_frontier", PruningOptions::_parse_frontier);
