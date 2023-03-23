# See http://www.fast-downward.org/ForDevelopers/AddingSourceFiles
# for general information on adding source files and CMake plugins.
#
# All plugins are enabled by default and users can disable them by specifying
#    -DPLUGIN_FOO_ENABLED=FALSE
# The default behavior can be changed so all non-essential plugins are
# disabled by default by specifying
#    -DDISABLE_PLUGINS_BY_DEFAULT=TRUE
# In that case, individual plugins can be enabled with
#    -DPLUGIN_FOO_ENABLED=TRUE
#
# Defining a new plugin:
#    fast_downward_plugin(
#        NAME <NAME>
#        [ DISPLAY_NAME <DISPLAY_NAME> ]
#        [ HELP <HELP> ]
#        SOURCES
#            <FILE_1> [ <FILE_2> ... ]
#        [ DEPENDS <PLUGIN_NAME_1> [ <PLUGIN_NAME_2> ... ] ]
#        [ DEPENDENCY_ONLY ]
#        [ CORE_PLUGIN ]
#    )
#
# <DISPLAY_NAME> defaults to lower case <NAME> and is used to group files
#   in IDEs and for messages.
# <HELP> defaults to <DISPLAY_NAME> and is used to describe the cmake option.
# SOURCES lists the source files that are part of the plugin. Entries are
#   listed without extension. For an entry <file>, both <file>.h and <file>.cc
#   are added if the files exist.
# DEPENDS lists plugins that will be automatically enabled if this plugin is
#   enabled. If the dependency was not enabled before, this will be logged.
# DEPENDENCY_ONLY disables the plugin unless it is needed as a dependency and
#   hides the option to enable the plugin in cmake GUIs like ccmake.
# CORE_PLUGIN always enables the plugin (even if DISABLE_PLUGINS_BY_DEFAULT
#   is used) and hides the option to disable it in CMake GUIs like ccmake.

option(
    DISABLE_PLUGINS_BY_DEFAULT
    "If set to YES only plugins that are specifically enabled will be compiled"
    NO)
# This option should not show up in CMake GUIs like ccmake where all
# plugins are enabled or disabled manually.
mark_as_advanced(DISABLE_PLUGINS_BY_DEFAULT)

fast_downward_plugin(
    NAME CORE_SOURCES
    HELP "Core source files"
    SOURCES
        planner

        abstract_task
        axioms
        combining_evaluator
        command_line
        eager_search
        enforced_hill_climbing_search
        evaluator
        factoring
        g_evaluator
        globals
        heuristic
        ipc_max_heuristic
        iterated_search
        lazy_search
        max_evaluator
        operator
        operator_cost
        operator_factor_info
        operator_id
        option_parser
        option_parser_util
        per_state_information
        per_task_information
        plan_manager
        pref_evaluator
        pruning_method
        relaxation_heuristic
        search_engine
        search_node_info
        search_progress
        search_space
        state
        state_id
        state_registry
        sum_evaluator
        task_id
        task_proxy

        weighted_evaluator

        open_lists/open_list_buckets
        open_lists/open_list_plugins

        additive_heuristic
        blind_search_heuristic
        cea_heuristic
        cg_heuristic
        cg_cache
        ff_heuristic
        goal_count_heuristic
        hm_heuristic
        lm_cut_heuristic
        max_heuristic

    DEPENDS CAUSAL_GRAPH INT_PACKER SEGMENTED_VECTOR SUCCESSOR_GENERATOR
    CORE_PLUGIN
)

fast_downward_plugin(
    NAME OPTIONS
    HELP "Option parsing and plugin definition"
    SOURCES
        options/any
        options/bounds
        options/doc_printer
        options/doc_utils
        options/errors
        options/option_parser
        options/options
        options/parse_tree
        options/predefinitions
        options/plugin
        options/raw_registry
        options/registries
        options/type_namer
    CORE_PLUGIN
)

fast_downward_plugin(
    NAME UTILS
    HELP "System utilities"
    SOURCES
        utils/array_pool
        utils/collections
        utils/countdown_timer
        utils/exceptions
        utils/hash
        utils/language
        utils/logging
        utils/markup
        utils/math
        utils/memory
        utils/rng
        utils/rng_options
        utils/strings
        utils/system
        utils/system_unix
        utils/system_windows
        utils/timer
    CORE_PLUGIN
)

fast_downward_plugin(
    NAME ALTERNATION_OPEN_LIST
    HELP "Open list that alternates between underlying open lists in a round-robin manner"
    SOURCES
        open_lists/alternation_open_list
)

fast_downward_plugin(
    NAME PARETO_OPEN_LIST
    HELP "Pareto open list"
    SOURCES
        open_lists/pareto_open_list
)

fast_downward_plugin(
    NAME STANDARD_SCALAR_OPEN_LIST
    HELP "Standard scalar open list"
    SOURCES
        open_lists/standard_scalar_open_list
)

fast_downward_plugin(
    NAME TIEBREAKING_OPEN_LIST
    HELP "Tiebreaking open list"
    SOURCES
        open_lists/tiebreaking_open_list
)

fast_downward_plugin(
    NAME DYNAMIC_BITSET
    HELP "Poor man's version of boost::dynamic_bitset"
    SOURCES
        algorithms/dynamic_bitset
    DEPENDENCY_ONLY
)

fast_downward_plugin(
    NAME MAXIMUM_INDEPENDENT_SET
    HELP "Class that computes maximum independent sets"
    SOURCES
        algorithms/mis
    DEPENDENCY_ONLY
)

fast_downward_plugin(
    NAME EQUIVALENCE_RELATION
    HELP "Equivalence relation over [1, ..., n] that can be iteratively refined"
    SOURCES
        algorithms/equivalence_relation
    DEPENDENCY_ONLY
)

fast_downward_plugin(
    NAME INT_HASH_SET
    HELP "Hash set storing non-negative integers"
    SOURCES
        algorithms/int_hash_set
    DEPENDENCY_ONLY
)

fast_downward_plugin(
    NAME INT_PACKER
    HELP "Greedy bin packing algorithm to pack integer variables with small domains tightly into memory"
    SOURCES
        algorithms/int_packer
    DEPENDENCY_ONLY
)

fast_downward_plugin(
    NAME MAX_CLIQUES
    HELP "Implementation of the Max Cliques algorithm by Tomita et al."
    SOURCES
        algorithms/max_cliques
    DEPENDENCY_ONLY
)

fast_downward_plugin(
    NAME PRIORITY_QUEUES
    HELP "Three implementations of priority queue: HeapQueue, BucketQueue and AdaptiveQueue"
    SOURCES
        algorithms/priority_queues
    DEPENDENCY_ONLY
)

fast_downward_plugin(
    NAME ORDERED_SET
    HELP "Set of elements ordered by insertion time"
    SOURCES
        algorithms/ordered_set
    DEPENDENCY_ONLY
)

fast_downward_plugin(
    NAME SEGMENTED_VECTOR
    HELP "Memory-friendly and vector-like data structure"
    SOURCES
        algorithms/segmented_vector
    DEPENDENCY_ONLY
)

fast_downward_plugin(
    NAME SUBSCRIBER
    HELP "Allows object to subscribe to the destructor of other objects"
    SOURCES
        algorithms/subscriber
    DEPENDENCY_ONLY
)

fast_downward_plugin(
    NAME DECOUPLED_SEARCH
    HELP "Classes relevant to run decoupled search"
    SOURCES
        leaf_state
        leaf_state_id

        compliant_paths/compliant_path_graph
        compliant_paths/cpg_storage
        compliant_paths/cudd_cpg
        compliant_paths/effective_prices
        compliant_paths/explicit_state_cpg
        compliant_paths/frontier_prices
        compliant_paths/path_price_tag
        compliant_paths/pricing_function
        compliant_paths/pruning_options
        compliant_paths/pruning_reachable
        compliant_paths/reachability_function
        compliant_paths/simulation_relation
        compliant_paths/symbolic_state_cpg
    DEPENDS SCCS CAUSAL_GRAPH SYMMETRIES SYMBOLIC_SEARCH
)

fast_downward_plugin(
    NAME SYMBOLIC_SEARCH
    HELP "Classes relevant to run symbolic search"
    SOURCES
        symbolic/breadth_first_search
        symbolic/closed_list
        symbolic/cudd_method
        symbolic/debug_macros
        symbolic/frontier
        symbolic/leaf_state_space
        symbolic/open_list
        symbolic/opt_order
        symbolic/solution_bound
        symbolic/sym_bucket
        symbolic/sym_controller
        symbolic/sym_decoupled_manager
        symbolic/sym_enums
        symbolic/sym_estimate
        symbolic/sym_params_search
        symbolic/sym_pricing_function_debug
        symbolic/sym_pricing_function
        symbolic/sym_pricing_function_sat
        symbolic/sym_search
        symbolic/sym_solution
        symbolic/sym_state_space_manager
        symbolic/sym_util
        symbolic/sym_variables
        symbolic/transition_relation
        symbolic/unidirectional_search
        symbolic/uniform_cost_search
    DEPENDS DECOUPLED_SEARCH
)

fast_downward_plugin(
    NAME SYMBOLIC_DECOUPLED_LMCUT
    HELP "A variant of the LM-cut heuristic for decoupled search with symbolic leaf representation"
    SOURCES
        lm_cut_heuristic_sym_dec
    DEPENDS DECOUPLED_SEARCH SYMBOLIC_SEARCH
)

fast_downward_plugin(
    NAME MIS_FACTORING
    HELP "Class relevant to use factoring strategies using an maximum indepedent sets"
    SOURCES
        factorings/factoring_ranking
        factorings/mis_factoring
    DEPENDS DECOUPLED_SEARCH MAXIMUM_INDEPENDENT_SET VARIABLE_INT
)

fast_downward_plugin(
    NAME LP_FACTORING
    HELP "Class relevant to use factoring strategies using an LP solver"
    SOURCES
        factorings/lp_factoring
        factorings/lp_general_factoring
        factorings/lp_star_factoring
    DEPENDS DECOUPLED_SEARCH LP_SOLVER
)

fast_downward_plugin(
    NAME SCHEMA_IA_FACTORING
    HELP "Similar to incarcs factoring, but working on effect schemas"
    SOURCES
        factorings/schema_ia_factoring
    DEPENDS DECOUPLED_SEARCH
)

fast_downward_plugin(
    NAME VARIABLE_INT
    HELP "Class representing an integer with variable memory footprint"
    SOURCES
        utils/variable_int
    DEPENDENCY_ONLY
)

fast_downward_plugin(
    NAME SYMMETRIES
    HELP "Classes relevant to use symmetry breaking"
    SOURCES
        symmetries/decoupled_group
        symmetries/decoupled_permutation
        symmetries/graph_creator
        symmetries/group
        symmetries/lexicographic_ordering
        symmetries/permutation
        symmetries/symmetry_cpg
    DEPENDENCY_ONLY
)

fast_downward_plugin(
    NAME STUBBORN_SETS
    HELP "Base class for all stubborn set partial order reduction methods"
    SOURCES
        pruning/stubborn_sets
    DEPENDS TASK_PROPERTIES
    DEPENDENCY_ONLY
)

fast_downward_plugin(
    NAME STUBBORN_SETS_SIMPLE
    HELP "Stubborn sets simple"
    SOURCES
        pruning/stubborn_sets_simple
    DEPENDS STUBBORN_SETS
)

fast_downward_plugin(
    NAME STUBBORN_SETS_EC
    HELP "Stubborn set method that dominates expansion core"
    SOURCES
        pruning/stubborn_sets_ec
    DEPENDS STUBBORN_SETS
)

 fast_downward_plugin(
    NAME STUBBORN_SETS_DECOUPLED
    HELP "Stubborn set implementation for decoupled search"
    SOURCES
        pruning/stubborn_sets_decoupled
    DEPENDS STUBBORN_SETS_SIMPLE DECOUPLED_SEARCH
)

fast_downward_plugin(
    NAME LP_SOLVER
    HELP "Interface to an LP solver"
    SOURCES
        lp/cplex_solver
        lp/lp_internals
        lp/lp_solver
    DEPENDENCY_ONLY
)

fast_downward_plugin(
    NAME CORE_TASKS
    HELP "Core task transformations"
    SOURCES
        tasks/cost_adapted_task
        tasks/delegating_task
        tasks/root_task
    CORE_PLUGIN
)

fast_downward_plugin(
    NAME EXTRA_TASKS
    HELP "Non-core task transformations"
    SOURCES
        tasks/domain_abstracted_task
        tasks/domain_abstracted_task_factory
        tasks/modified_goals_task
        tasks/modified_operator_costs_task
    DEPENDS TASK_PROPERTIES
    DEPENDENCY_ONLY
)

fast_downward_plugin(
    NAME DOMAIN_TRANSITION_GRAPH
    HELP "DTGs"
    SOURCES
        task_utils/domain_transition_graph
    DEPENDENCY_ONLY
)

fast_downward_plugin(
    NAME CAUSAL_GRAPH
    HELP "Causal Graph"
    SOURCES
        task_utils/causal_graph
    DEPENDENCY_ONLY
)

fast_downward_plugin(
    NAME SAMPLING
    HELP "Sampling"
    SOURCES
        task_utils/sampling
    DEPENDS NEW_SUCCESSOR_GENERATOR TASK_PROPERTIES
    DEPENDENCY_ONLY
)

fast_downward_plugin(
    NAME SUCCESSOR_GENERATOR
    HELP "Successor generator"
    SOURCES
        task_utils/successor_generator
        task_utils/successor_generator_factory
        task_utils/successor_generator_internals
    DEPENDS TASK_PROPERTIES
    DEPENDENCY_ONLY
)

fast_downward_plugin(
    NAME NEW_SUCCESSOR_GENERATOR
    HELP "New successor generator"
    SOURCES
        successor_generator/successor_generator
        successor_generator/successor_generator_factory
        successor_generator/successor_generator_internals
    DEPENDS TASK_PROPERTIES
    DEPENDENCY_ONLY
)

fast_downward_plugin(
    NAME TASK_PROPERTIES
    HELP "Task properties"
    SOURCES
        task_utils/task_properties
    DEPENDENCY_ONLY
)

fast_downward_plugin(
    NAME VARIABLE_ORDER_FINDER
    HELP "Variable order finder"
    SOURCES
        task_utils/variable_order_finder
    DEPENDENCY_ONLY
)

fast_downward_plugin(
    NAME CEGAR
    HELP "Plugin containing the code for CEGAR heuristics"
    SOURCES
        cegar/abstraction
        cegar/abstract_search
        cegar/abstract_state
        cegar/additive_cartesian_heuristic
        cegar/cartesian_heuristic_function
        cegar/cartesian_set
        cegar/cegar
        cegar/cost_saturation
        cegar/refinement_hierarchy
        cegar/split_selector
        cegar/subtask_generators
        cegar/transition
        cegar/transition_system
        cegar/types
        cegar/utils
        cegar/utils_landmarks
    DEPENDS ADDITIVE_HEURISTIC DYNAMIC_BITSET EXTRA_TASKS LANDMARKS PRIORITY_QUEUES TASK_PROPERTIES
)

fast_downward_plugin(
    NAME COST_SATURATION
    HELP "Saturated cost partitioning"
    SOURCES
        cost_saturation/abstraction
        cost_saturation/abstraction_generator
        cost_saturation/cost_partitioning_heuristic
        cost_saturation/cost_partitioning_heuristic_collection_generator
        cost_saturation/diversifier
        cost_saturation/greedy_order_utils
        cost_saturation/max_cost_partitioning_heuristic
        cost_saturation/max_heuristic
        cost_saturation/order_generator
        cost_saturation/order_generator_dynamic_greedy
        cost_saturation/order_generator_greedy
        cost_saturation/order_generator_random
        cost_saturation/order_optimizer
        cost_saturation/plugin_group
        cost_saturation/projection
        cost_saturation/projection_generator
        cost_saturation/saturated_cost_partitioning_heuristic
        cost_saturation/types
        cost_saturation/unsolvability_heuristic
        cost_saturation/utils
    DEPENDS LP_SOLVER PDBS PRIORITY_QUEUES SAMPLING TASK_PROPERTIES
)

fast_downward_plugin(
    NAME MAS_HEURISTIC
    HELP "The Merge-and-Shrink heuristic"
    SOURCES
        merge_and_shrink/clustering
        merge_and_shrink/clustering_cg_sccs
        merge_and_shrink/clustering_compliant_factoring
        merge_and_shrink/clustering_lp_factoring
        merge_and_shrink/distances
        merge_and_shrink/factored_transition_system
        merge_and_shrink/fts_factory
        merge_and_shrink/label_equivalence_relation
        merge_and_shrink/label_reduction
        merge_and_shrink/labels
        merge_and_shrink/merge_and_shrink_algorithm
        merge_and_shrink/merge_and_shrink_heuristic
        merge_and_shrink/merge_and_shrink_representation
        merge_and_shrink/merge_scoring_function
        merge_and_shrink/merge_scoring_function_dfp
        merge_and_shrink/merge_scoring_function_goal_relevance
        merge_and_shrink/merge_scoring_function_miasm
        merge_and_shrink/merge_scoring_function_miasm_utils
        merge_and_shrink/merge_scoring_function_single_random
        merge_and_shrink/merge_scoring_function_total_order
        merge_and_shrink/merge_selector
        merge_and_shrink/merge_selector_score_based_filtering
        merge_and_shrink/merge_strategy
        merge_and_shrink/merge_strategy_clustering
        merge_and_shrink/merge_strategy_factory
        merge_and_shrink/merge_strategy_factory_clustering
        merge_and_shrink/merge_strategy_factory_precomputed
        merge_and_shrink/merge_strategy_factory_stateless
        merge_and_shrink/merge_strategy_precomputed
        merge_and_shrink/merge_strategy_stateless
        merge_and_shrink/merge_tree
        merge_and_shrink/merge_tree_factory
        merge_and_shrink/merge_tree_factory_linear
        merge_and_shrink/merge_tree_factory_linear_compliant
        merge_and_shrink/shrink_bisimulation
        merge_and_shrink/shrink_bucket_based
        merge_and_shrink/shrink_fh
        merge_and_shrink/shrink_random
        merge_and_shrink/shrink_strategy
        merge_and_shrink/transition_system
        merge_and_shrink/types
        merge_and_shrink/utils
    DEPENDS PRIORITY_QUEUES EQUIVALENCE_RELATION SCCS TASK_PROPERTIES VARIABLE_ORDER_FINDER
)

fast_downward_plugin(
    NAME LANDMARKS
    HELP "Plugin containing the code to reason with landmarks"
    SOURCES
        landmarks/exploration
        landmarks/landmark
        landmarks/landmark_factory
        landmarks/landmark_factory_h_m
        landmarks/landmark_factory_reasonable_orders_hps
        landmarks/landmark_factory_merged
        landmarks/landmark_factory_relaxation
        landmarks/landmark_factory_rpg_exhaust
        landmarks/landmark_factory_rpg_sasp
        landmarks/landmark_factory_zhu_givan
        landmarks/landmark_graph
        landmarks/util
    DEPENDS LP_SOLVER PRIORITY_QUEUES SUCCESSOR_GENERATOR TASK_PROPERTIES
)

fast_downward_plugin(
    NAME PDBS
    HELP "Plugin containing the code for PDBs"
    SOURCES
        pdbs/canonical_pdbs
        pdbs/canonical_pdbs_heuristic
        pdbs/canonical_pdbs_heuristic_approximate
        pdbs/canonical_pdbs_heuristic_exponential
        pdbs/canonical_pdbs_heuristic_exponential_broken
        pdbs/canonical_pdbs_heuristic_exponential_ilp
        pdbs/canonical_pdbs_heuristic_single_leaf
        pdbs/cegar
        pdbs/decoupled_canonical_pdbs_approximate
        pdbs/decoupled_canonical_pdbs_exponential
        pdbs/decoupled_canonical_pdbs_exponential_broken
        pdbs/decoupled_canonical_pdbs_exponential_ilp
        pdbs/decoupled_canonical_pdbs_single_leaf
        pdbs/decoupled_pdb_utils
        pdbs/dominance_pruning
        pdbs/incremental_canonical_pdbs
        pdbs/match_tree
        pdbs/max_cliques
        pdbs/max_scp_heuristic
        pdbs/max_scp_heuristic_approximate
        pdbs/max_scp_heuristic_exponential
        pdbs/max_scp_heuristic_exponential_broken
        pdbs/max_scp_heuristic_price_partitioning
        pdbs/max_scp_heuristic_single_leaf
        pdbs/pattern_cliques
        pdbs/pattern_collection_information
        pdbs/pattern_collection_generator_combo
        pdbs/pattern_collection_generator_disjoint_cegar
        pdbs/pattern_collection_generator_genetic
        pdbs/pattern_collection_generator_hillclimbing
        pdbs/pattern_collection_generator_manual
        pdbs/pattern_collection_generator_multiple_cegar
        pdbs/pattern_collection_generator_multiple_random
        pdbs/pattern_collection_generator_multiple
        pdbs/pattern_collection_generator_systematic
        pdbs/pattern_database
        pdbs/pattern_filter
        pdbs/pattern_filter_n_leaves_patterns
        pdbs/pattern_generator_cegar
        pdbs/pattern_generator_greedy
        pdbs/pattern_generator_manual
        pdbs/pattern_generator_random
        pdbs/pattern_generator
        pdbs/pattern_information
        pdbs/pdb_heuristic
        pdbs/plugin_group
        pdbs/random_pattern
        pdbs/types
        pdbs/utils
        pdbs/validation
        pdbs/zero_one_pdbs
        pdbs/zero_one_pdbs_heuristic
    DEPENDS CAUSAL_GRAPH MAX_CLIQUES PRIORITY_QUEUES SAMPLING SUCCESSOR_GENERATOR TASK_PROPERTIES VARIABLE_ORDER_FINDER
)

fast_downward_plugin(
    NAME SCCS
    HELP "Algorithm to compute the strongly connected components (SCCs) of a "
         "directed graph."
    SOURCES
        algorithms/sccs
    DEPENDENCY_ONLY
)

fast_downward_add_plugin_sources(PLANNER_SOURCES)

# The order in PLANNER_SOURCES influences the order in which object
# files are given to the linker, which can have a significant influence
# on performance (see issue67). The general recommendation seems to be
# to list files that define functions after files that use them.
# We approximate this by reversing the list, which will put the plugins
# first, followed by the core files, followed by the main file.
# This is certainly not optimal, but works well enough in practice.
list(REVERSE PLANNER_SOURCES)
