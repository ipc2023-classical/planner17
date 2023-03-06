
#include "successor_generator_factory.h"

#include "automatic_successor_generator.h"
#include "full_reducer_successor_generator.h"
#include "naive_successor.h"
#include "ordered_join_successor.h"
#include "random_successor.h"
#include "yannakakis.h"
#include "clique_successor_generator.h"

#include "../database/table.h"

#include <iostream>

#include <boost/algorithm/string.hpp>

SuccessorGenerator *SuccessorGeneratorFactory::create(const std::string &method,
                                                      unsigned seed,
                                                      Task &task)
{
    std::cout << "Creating successor generator factory..." << std::endl;
    if (boost::iequals(method, "join")) {
        return new NaiveSuccessorGenerator(task);
    }
    else if (boost::iequals(method, "full_reducer")) {
        return new FullReducerSuccessorGenerator(task);
    }
    else if (boost::iequals(method, "inverse_ordered_join")) {
        return new OrderedJoinSuccessorGenerator<InverseOrderTable>(task);
    }
    else if (boost::iequals(method, "ordered_join")) {
        return new OrderedJoinSuccessorGenerator<OrderTable>(task);
    }
    else if (boost::iequals(method, "random_join")) {
        return new RandomSuccessorGenerator(task, seed);
    }
    else if (boost::iequals(method, "yannakakis")) {
        return new YannakakisSuccessorGenerator(task);
    }
    else if (boost::iequals(method, "clique_first")) {
        return new CliqueSuccessorGenerator(task, First);
    }
    else if (boost::iequals(method, "clique_max_neighborhood")) {
        return new CliqueSuccessorGenerator(task, MaxNeighborhood);
    }
    else if (boost::iequals(method, "clique_min_difference")) {
        return new CliqueSuccessorGenerator(task, MinDifference);
    }
    else if (boost::iequals(method, "automatic")) {
        for (const auto& action : task.get_action_schemas()) {
            for (const Atom &p : action.get_precondition()) {
                bool is_ineq = (p.get_name() == "=");
                if (p.is_negated() and !is_ineq) {
                    // We assume the first generator does not support negative-preconditions but the second generator does.
                    std::cout << "[AutomaticSuccessorGenerator] Defaulting to 'clique_first' due to negative-preconditions" << std::endl;
                    return new CliqueSuccessorGenerator(task, First);
                }
            }
        }

        return new AutomaticSuccessorGenerator(new FullReducerSuccessorGenerator(task), "full_reducer", new CliqueSuccessorGenerator(task, First), "clique_first", 100);
    }
    else {
        std::cerr << "Invalid successor generator method \"" << method << "\"" << std::endl;
        exit(-1);
    }
}
