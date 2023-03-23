#include "open_list_plugins.h"

#include "alternation_open_list.h"
#include "standard_scalar_open_list.h"
#include "tiebreaking_open_list.h"

#include "../lazy_search.h"
#include "open_list.h"
#include "../option_parser.h"
#include "../plugin.h"
#include "../state_id.h"

using namespace std;

static PluginTypePlugin<OpenList<StateID>> _type_plugin_openlist_stateid(
    "OpenList<StateID>",
    "HACK: this plugin exists only to let the option parser registry"
    "know about the templated open list.");

static shared_ptr<OpenList<StateID>> _parse_alternation_openlist_stateid(OptionParser &parser) {
    parser.document_synopsis("Alternation open list with StateID",
            "HACK: this plugin exists only to let the option parser registry"
            "know about the templated open list.");

    Options opts = parser.parse();
    if (parser.dry_run())
        return 0;
    else
        return make_shared<AlternationOpenList<StateID>>(opts);
}

static shared_ptr<OpenList<StateID>> _parse_standard_scalar_openlist_stateid(OptionParser &parser) {
    parser.document_synopsis("Standard-scalar open list with StateID",
            "HACK: this plugin exists only to let the option parser registry"
            "know about the templated open list.");

    Options opts = parser.parse();
    if (parser.dry_run())
        return 0;
    else
        return make_shared<StandardScalarOpenList<StateID>>(opts);
}

static shared_ptr<OpenList<StateID>> _parse_tiebreaking_openlist_stateid(OptionParser &parser) {
    parser.document_synopsis("TieBreaking open list with StateID",
            "HACK: this plugin exists only to let the option parser registry"
            "know about the templated open list.");

    Options opts = parser.parse();
    if (parser.dry_run())
        return 0;
    else
        return make_shared<TieBreakingOpenList<StateID>>(opts);
}

static Plugin<OpenList<StateID>> _plugin_alternation_openlist_stateid("never_use_this1", _parse_alternation_openlist_stateid);
static Plugin<OpenList<StateID>> _plugin_standard_scalar_openlist_stateid("never_use_this2", _parse_standard_scalar_openlist_stateid);
static Plugin<OpenList<StateID>> _plugin_tiebreaking_openlist_stateid("never_use_this3", _parse_tiebreaking_openlist_stateid);


static PluginTypePlugin<OpenList<OpenListEntryLazy>> _type_plugin_openlist_entrylazy(
    "OpenList<OpenListEntryLazy>",
    "HACK: this plugin exists only to let the option parser registry"
    "know about the templated open list.");

static shared_ptr<OpenList<OpenListEntryLazy>> _parse_alternation_openlist_entrylazy(OptionParser &parser) {
    parser.document_synopsis("Alternation open list with OpenListEntryLazy",
            "HACK: this plugin exists only to let the option parser registry"
            "know about the templated open list.");

    Options opts = parser.parse();
    if (parser.dry_run())
        return 0;
    else
        return make_shared<AlternationOpenList<OpenListEntryLazy>>(opts);
}

static shared_ptr<OpenList<OpenListEntryLazy>> _parse_standard_scalar_openlist_entrylazy(OptionParser &parser) {
    parser.document_synopsis("Standard-scalar open list with OpenListEntryLazy",
            "HACK: this plugin exists only to let the option parser registry"
            "know about the templated open list.");

    Options opts = parser.parse();
    if (parser.dry_run())
        return 0;
    else
        return make_shared<StandardScalarOpenList<OpenListEntryLazy>>(opts);
}

static Plugin<OpenList<OpenListEntryLazy>> _plugin_alternation_openlist_entrylazy("never_use_this4", _parse_alternation_openlist_entrylazy);
static Plugin<OpenList<OpenListEntryLazy>> _plugin_standard_scalar_openlist_entrylazy("never_use_this5", _parse_standard_scalar_openlist_entrylazy);

