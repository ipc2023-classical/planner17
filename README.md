# Ragnarok

Ragnarok is a sequential portfolio planner that uses several classical planners
developed by members of the Representation, Learning and Planning Lab at
Linköping University in Sweden. Much like the Norse saga Ragnarök, from whom our
portfolio planner takes its name, our component planners battled each other in a
training phase, from which we obtained the time slices for each component to
create a portfolio that combines their individual strengths. This portfolio
participated in and won the Optimal Track of the International Planning
Competition 2023.

The following instructions are based on the [IPC 2023 competition webpage](https://ipc2023-classical.github.io/).

## Using IPC 2023 planners

All participating planners can be used as Apptainer images. To build such an image, install Apptainer and clone the corresponding planner repository. You can find links to them in the list of participants. Code repositories contain two branches: "ipc2023-classical" contains exactly the code version that ran in the IPC, while "latest" can contain additional bug fixes published after the competition. **We recommend using "latest" for all experiments**. Some code repositories contain multiple Apptainer files for different planners that share a code base. Use Apptainer to build the planner from one of those recipes like this:

Some planners (including Ragnarok) require CPLEX to run. To use them, you have to acquire a CPLEX license (IBM offers free academic licenses) and download the installer file `cplex_studio2211.linux_x86_64.bin`. Place it into a directory and use the environment variable `IPC_THIRD_PARTY` to identify it.

    export IPC_THIRD_PARTY=/path/to/some/directory
    cp cplex_studio2211.linux_x86_64.bin $IPC_THIRD_PARTY
    git clone https://github.com/ipc2023-classical/planner17.git
    cd planner17
    git switch latest
    apptainer build ragnarok.sif Apptainer.ragnarok
    ./ragnarok.sif path/to/domain.pddl path/to/problem.pddl sas_plan

You need to provide a CPLEX installer to run the IPC version of Ragnarok. Without CPLEX, the decoupled-search component (DecStar-1) does not work.

If you want to run Ragnarok without that component, you can define an environment variable as follows:

    export DISABLE_DECSTAR_ONE=1

The planner will then build and run without DecStar-1. Note that this only works on the "latest" branch.
