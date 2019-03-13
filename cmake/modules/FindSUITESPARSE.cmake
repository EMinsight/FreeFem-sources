INCLUDE(FindPackageHandleStandardArgs)
INCLUDE(PackageManagerPaths)

FIND_PATH(SUITESPARSE_INCLUDES NAMES umfpack.h 
                          PATHS ${PACKMAN_INCLUDE_PATHS} 
                          PATH_SUFFIXES suitesparse)

FIND_LIBRARY(SUITESPARSE_LIBRARIES NAMES umfpack 
                              PATHS ${PACKMAN_LIBRARIES_PATHS})

IF(SUITESPARSE_INCLUDES AND SUITESPARSE_LIBRARIES)
  SET(SUITESPARSE_FOUND True)
ENDIF(SUITESPARSE_INCLUDES AND SUITESPARSE_LIBRARIES)

FIND_PACKAGE_HANDLE_STANDARD_ARGS(SUITESPARSE DEFAULT_MSG SUITESPARSE_INCLUDES SUITESPARSE_LIBRARIES)



