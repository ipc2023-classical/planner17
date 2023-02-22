# Stage 1: Compile the planner
Bootstrap: docker
From: ubuntu:22.04
Stage: build

%files
    . /

%post
    ## Install all necessary dependencies.
    apt-get update
    apt-get -y install --no-install-recommends cmake g++ make python3.11 autoconf automake

    ## Clear build directory.
    rm -rf /planners/odin/builds

    ## Build planner.
    cd /planners/odin
    python3.11 build.py

    ## Strip binaries.
    strip --strip-all /planners/odin/builds/release/bin/downward /planners/odin/builds/release/bin/preprocess-h2

# Stage 2: Run the planner
Bootstrap: docker
From: ubuntu:22.04
Stage: run

%files from build
    /planners/odin/driver
    /planners/odin/fast-downward.py
    /planners/odin/builds/release/bin

%post
    apt-get update
    apt-get -y install --no-install-recommends python3.11
    rm -rf /var/lib/apt/lists/*


%runscript
    DOMAINFILE="$1"
    PROBLEMFILE="$2"
    PLANFILE="$3"

    python3.11 /planners/odin/fast-downward.py \
        --plan-file "$PLANFILE" \
        "$DOMAINFILE" \
        "$PROBLEMFILE" \
        --search "astar(stcp_online([projections(sys_scp(max_time=100, max_time_per_restart=10)),cartesian()],saturator=perimstar, max_time=1000, interval=10K, orders=greedy_orders(), max_num_transitions=100000),pruning=limited_pruning(pruning=atom_centric_stubborn_sets(), min_required_pruning_ratio=0.2))"

%labels
Name        Odin
Description Classical planning system with transition cost partitioning algorithms
Authors     Dominik Drexler <dominik.drexler@liu.se>, Jendrik Seipp <jendrik.seipp@liu.se>, David Speck <david.speck@liu.se>
License     GPL 3
Tracks      optimal
SupportsDerivedPredicates                       no
SupportsUniversallyQuantifiedPreconditions      yes
SupportsExistentiallyQuantifiedPreconditions    yes
SupportsUniversallyQuantifiedEffects            yes
SupportsNegativePreconditions                   yes
SupportsEqualityPreconditions                   yes
SupportsInequalityPreconditions                 yes
SupportsConditionalEffects                      yes
SupportsImplyPreconditions                      yes
