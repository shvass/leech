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



cmake_minimum_required(VERSION 3.5)
set(CMAKE_CXX_STANDARD 17)


# platform detection
if(WIN32)
    add_compile_definitions(_WIN32)
elseif(APPLE)
    add_compile_definitions(_APPLE)
elseif(UNIX)
    add_compile_definitions(_LINUX)
endif()

include(cmake/generate.cmake)
include(cmake/searchLib.cmake)

# add required library names here
# searchLib(aliasName   [libraries...])


# replace projectNameHere 
set(prjName leech)
project(leech)
generate(leech)

include(cmake/tests.cmake)
include(cmake/genDocs.cmake)
