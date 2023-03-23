# TODO adapt docu
# TODO check that the right version is installed, we need >= 0.72
# - Find the Bliss graph symmetry library.
# This code defines the following variables:
#
#  BLISS_FOUND                 - TRUE if BLISS was found.
#  BLISS_INCLUDE_DIRS          - Full paths to all include dirs.
#  BLISS_LIBRARIES             - Full paths to all libraries.
#
# Usage:
#  find_package(bliss)
#
# Note that the standard FIND_PACKAGE features are supported
# (QUIET, REQUIRED, etc.).

foreach(BUILDMODE "RELEASE" "DEBUG")
    set(_CMAKE_FIND_ROOT_PATH_${BUILDMODE} ${CMAKE_FIND_ROOT_PATH})

    find_path(BLISS_INCLUDE_DIRS
        NAMES graph.hh
        HINTS ${_CMAKE_FIND_ROOT_PATH_${BUILDMODE}}
        PATH_SUFFIXES include/bliss
    )
    find_library(BLISS_LIBRARY_${BUILDMODE}
        NAMES bliss
        HINTS ${_CMAKE_FIND_ROOT_PATH_${BUILDMODE}}
        PATH_SUFFIXES lib
    )
endforeach()

set(BLISS_LIBRARIES
    optimized ${BLISS_LIBRARY_RELEASE}
    debug ${BLISS_LIBRARY_DEBUG})

# Check if everything was found and set BLISS_FOUND.
include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(
    Bliss
    REQUIRED_VARS BLISS_INCLUDE_DIRS BLISS_LIBRARIES
)

mark_as_advanced(BLISS_LIBRARY_RELEASE BLISS_LIBRARY_DEBUG BLISS_INCLUDE_DIRS BLISS_LIBRARIES)
