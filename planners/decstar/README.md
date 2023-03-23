The following heuristics/search engines/pruning options are adapted for decoupled search:

blind, hmax, add, lmcut, ff
astar, eager_greedy, lazy_wastar, lazy_greedy
stubborn_sets_decoupled

To run decoupled search, add the command line option --decoupling "profile(options)"

where profile can be any of {fork, ifork, xshape, incarcs}

available search options: 
search_type = {fra, [sda], asda, sat, unsat} where the first three correspond to different types of optimal search, the last one is a slight optimization of sat for exhausting large state spaces

