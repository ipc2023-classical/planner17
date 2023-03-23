#include "command_line.h"
#include "globals.h"
#include "option_parser.h"
#include "search_engine.h"

#include "options/registries.h"
#include "utils/system.h"
#include "utils/timer.h"

#include <iostream>

using namespace std;
using utils::ExitCode;

int main(int argc, const char **argv) {
    utils::register_event_handlers();

    if (argc < 2) {
        cout << usage(argv[0]) << endl;
        exit_with(utils::ExitCode::SEARCH_INPUT_ERROR);
    }

    if (static_cast<string>(argv[1]) != "--help"){
        try {
            options::Registry registry(*options::RawRegistry::instance());
            parse_decoupled_search(argc, argv, registry, true);
            g_factoring = parse_decoupled_search(argc, argv, registry, false);
        } catch (const ArgError &error) {
            error.print();
            usage(argv[0]);
            utils::exit_with(ExitCode::SEARCH_INPUT_ERROR);
        } catch (const OptionParserError &error) {
            error.print();
            usage(argv[0]);
            utils::exit_with(ExitCode::SEARCH_INPUT_ERROR);
        } catch (const ParseError &error) {
            error.print();
            utils::exit_with(ExitCode::SEARCH_INPUT_ERROR);
        }
        read_everything(cin);
    }

    shared_ptr<SearchEngine> engine;

    // The command line is parsed twice: once in dry-run mode, to
    // check for simple input errors, and then in normal mode.
    bool unit_cost = is_unit_cost();
    try {
        options::Registry registry(*options::RawRegistry::instance());
        parse_cmd_line(argc, argv, registry, true, unit_cost);
        engine = parse_cmd_line(argc, argv, registry, false, unit_cost);
    } catch (const ArgError &error) {
        error.print();
        usage(argv[0]);
        utils::exit_with(ExitCode::SEARCH_INPUT_ERROR);
    } catch (const OptionParserError &error) {
        error.print();
        usage(argv[0]);
        utils::exit_with(ExitCode::SEARCH_INPUT_ERROR);
    } catch (const ParseError &error) {
        error.print();
        utils::exit_with(ExitCode::SEARCH_INPUT_ERROR);
    }

    utils::Timer search_timer;
    engine->search();
    search_timer.stop();
    utils::g_timer.stop();

    engine->save_plan_if_necessary();
    engine->statistics();
    engine->heuristic_statistics();
    cout << "Search time: " << search_timer << endl;
    cout << "Total time: " << utils::g_timer << endl;

    if (engine->found_solution()) {
        exit_with(ExitCode::SUCCESS);
    } else {
        exit_with(ExitCode::SEARCH_UNSOLVED_INCOMPLETE);
    }
}
