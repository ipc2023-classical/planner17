The following description is based on the IPC'23 competition webpage (https://ipc2023-classical.github.io/):

Using IPC 2023 planners

All participating planners can be used as Apptainer images. To build such an image, install Apptainer and clone the corresponding planner repository. You can find links to them in the list of participants. Code repositories contain two branches: ipc2023-classical contains exactly the code version that ran in the IPC, while latest can contain additional bug fixes published after the competition. We recommend using latest for all experiments. Some code repositories contain multiple Apptainer files for different planners that share a code base. Use Apptainer to build the planner from one of those recipes like this:

Some planners (including Ragnarok) require CPLEX to run. To use them, you have to acquire a CPLEX license (IBM offers free academic licenses) and download the installer file cplex_studio2211.linux_x86_64.bin. Place it into a directory and use the environment variable IPC_THIRD_PARTY to identify it.

```
export IPC_THIRD_PARTY=/path/to/some/directory
cp cplex_studio2211.linux_x86_64.bin $IPC_THIRD_PARTY
git clone https://github.com/ipc2023-classical/planner17.git
cd planner17
sudo apptainer build ragnarok.sif Apptainer.ragnarok
```

You need to provide a CPLEX installer to run the IPC version of Ragnarok. Without CPLEX, the decoupled-search component (DecStar-1) is not working.

If you want to run Ragnarok without that component, you can define an environment variable as follows:

```
export DISABLE_DECSTAR_ONE=1
```

The planner will then build and run without DecStar-1. Note that this only works in the branch latest.
