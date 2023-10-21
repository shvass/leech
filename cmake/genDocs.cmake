# This file is a part of  cmake-template
# Copyright (C) 2022  akshay bansod <aksh.bansod@yahoo.com>

# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.

# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <https://www.gnu.org/licenses/>.


# cmake build script to generate doxygen documentation

OPTION(BUILD_DOCS "Generate Doxygen (html) documentation" ON)


if(${BUILD_DOCS})
find_package(Doxygen
    COMPONENTS dot
    OPTIONAL_COMPONENTS mscgen dia)
endif()

# checks for documentation build
if(${Doxygen_FOUND})

    set(DOXYGEN_EXCLUDE_PATTERNS
    */build/*
    */out/*

    */.vscode/*
    */.vs/*
    
    */deps/*
    */cmake/*
    */tests/*
    )

    set(DOXYGEN_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/docs)

    doxygen_add_docs(chitra_docs  ${CMAKE_SOURCE_DIR} ALL )

endif()
