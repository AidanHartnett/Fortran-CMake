cmake_minimum_required(VERSION 3.15)
file(STRINGS "VERSION" pVersion)
project(sample11 VERSION ${pVersion} LANGUAGES Fortran)
add_subdirectory(src)

