cmake_minimum_required(VERSION 3.15)
file(STRINGS "VERSION" pVersion)
project(sample11 VERSION ${pVersion} LANGUAGES Fortran)

include(GNUInstallDirs)

add_subdirectory(src)

# Handle user options.
option(ENABLE_DOCS "Enable generation of doxygen-based documentation." OFF)

# Determine whether or not to generate documentation.
if(ENABLE_DOCS)
  find_package(Doxygen REQUIRED)
  add_subdirectory(docs)
endif()

