cmake_minimum_required(VERSION 2.8.3)

if(NOT FAST_DOWNWARD_MAIN_CMAKELISTS_READ)
    message(
        FATAL_ERROR
        "Run cmake on the CMakeLists.txt in the 'src' directory, "
        "not the one in 'src/search'. Please delete CMakeCache.txt "
        "from the current directory and restart cmake.")
endif()


## == Project ==

project(downward)
fast_downward_set_compiler_flags()
fast_downward_set_linker_flags()

# Collect source files needed for the active plugins.
include("${CMAKE_CURRENT_SOURCE_DIR}/DownwardFiles.cmake")
add_executable(downward ${PLANNER_SOURCES})

## == Includes ==

include_directories(${CMAKE_CURRENT_SOURCE_DIR}/ext)

## == Libraries ==

# On Linux, find the rt library for clock_gettime().
if(UNIX AND NOT APPLE)
    target_link_libraries(downward rt)
endif()

# On Windows, find the psapi library for determining peak memory.
if(WIN32)
    target_link_libraries(downward psapi)
endif()

# If any enabled plugin requires an LP solver, compile with all
# available LP solvers. If no solvers are installed, the planner will
# still compile, but using heuristics that depend on an LP solver will
# cause an error. This behavior can be overwritten by setting the
# option USE_LP to false.
option(
  USE_LP
  "Compile with support for all LP solvers installed on this system."
  TRUE)

if(PLUGIN_LP_SOLVER_ENABLED AND USE_LP)
    find_package(OSI OPTIONAL_COMPONENTS Cpx Clp Grb Spx)
    if(OSI_FOUND AND (OSI_Cpx_FOUND OR OSI_Clp_FOUND OR OSI_Grb_FOUND OR OSI_Spx_FOUND))
        foreach(SOLVER Cpx Clp Grb Spx)
            if(OSI_${SOLVER}_FOUND)
                string(TOUPPER ${SOLVER} TMP_SOLVER_UPPER_CASE)
                mark_as_advanced(TMP_SOLVER_UPPER_CASE)
                add_definitions("-D COIN_HAS_${TMP_SOLVER_UPPER_CASE}")
                include_directories(${OSI_${SOLVER}_INCLUDE_DIRS})
                target_link_libraries(downward ${OSI_${SOLVER}_LIBRARIES})
            endif()
        endforeach()

        # Note that basic OSI libs must be added after (!) all OSI solver libs.
        add_definitions("-D USE_LP")
        include_directories(${OSI_INCLUDE_DIRS})
        target_link_libraries(downward ${OSI_LIBRARIES})

        find_package(ZLIB REQUIRED)
        if(ZLIB_FOUND)
            include_directories(${ZLIB_INCLUDE_DIRS})
            target_link_libraries(downward ${ZLIB_LIBRARIES})
        endif()
    endif()

    if(OSI_Cpx_FOUND AND CPLEX_RUNTIME_LIBRARY)
        add_custom_command(TARGET downward POST_BUILD
            COMMAND ${CMAKE_COMMAND} -E copy
            ${CPLEX_RUNTIME_LIBRARY}
            $<TARGET_FILE_DIR:downward>
        )
    endif()
endif()


# If any enabled plugin requires CPLEX, compile with it. 
# If CPLEX is not installed, the planner will still compile, but 
# using components that depend on CPLEX will cause an error. 
# This behavior can be overwritten by setting the
# option USE_CPLEX to false.
option(
  USE_CPLEX
  "Compile with support for CPLEX if installed on this system."
  TRUE)

if(PLUGIN_LP_FACTORING_ENABLED AND USE_CPLEX)
    find_package(CplexStandalone)
    if(CplexStandalone_FOUND)
        add_definitions("-D IL_STD") # this fixes compiler errors for CPLEX 
        add_definitions("-D USE_CPLEX")
        include_directories(${CPLEX_STANDALONE_INCLUDE_DIRS})
        target_link_libraries(downward ${CPLEX_STANDALONE_LIBRARIES})
    endif()
endif()

# If any enabled plugin requires the bliss library, compile with it. 
# If bliss is not installed, the planner will still compile, but 
# using components that depend on bliss will cause an error. 
# This behavior can be overwritten by setting the
# option USE_BLISS to false.
option(
  USE_BLISS
  "Compile with support for bliss if installed on this system."
  TRUE)

if(PLUGIN_SYMMETRIES_ENABLED AND USE_BLISS)
    find_package(Bliss)
    if(Bliss_FOUND)
        add_definitions("-D USE_BLISS")
        include_directories(${BLISS_INCLUDE_DIRS})
        target_link_libraries(downward ${BLISS_LIBRARIES})
    endif()
endif()

# If any enabled plugin requires the CUDD library, compile with it. 
# If CUDD is not installed, the planner will still compile, but 
# using components that depend on CUDD will cause an error. 
# This behavior can be overwritten by setting the
# option USE_CUDD to false.
option(
  USE_CUDD
  "Compile with support for CUDD if installed on this system."
  TRUE)

if(PLUGIN_SYMBOLIC_SEARCH_ENABLED AND USE_CUDD)
    find_package(Cudd)
    if(Cudd_FOUND)
        add_definitions("-D USE_CUDD")
        include_directories(${CUDD_INCLUDE_DIRS})
        target_link_libraries(downward ${CUDD_LIBRARIES})
        set(CMAKE_CXX_FLAGS_DEBUG "-O3") # need to exclude the -D_GLIBCXX_DEBUG flag for CUDD
    endif()
endif()
