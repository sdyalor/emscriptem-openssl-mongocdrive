project(ProjectName)
cmake_minimum_required(VERSION 3.19)

configure_file(CMakeLists.txt.in
               googletest-download/CMakeLists.txt)

execute_process(COMMAND ${CMAKE_COMMAND} -G "${CMAKE_GENERATOR}" .
  WORKING_DIRECTORY ${CMAKE_BINARY_DIR}/googletest-download )
execute_process(COMMAND ${CMAKE_COMMAND} --build .
  WORKING_DIRECTORY ${CMAKE_BINARY_DIR}/googletest-download )

add_subdirectory(${CMAKE_BINARY_DIR}/mongo-c-driver-src
                 ${CMAKE_BINARY_DIR}/mongo-c-driver-build EXCLUDE_FROM_ALL)
# add_subdirectory(mongo-c-driver-b EXCLUDE_FROM_ALL)
# find_package (bson-1.0  REQUIRED)
find_package (mongoc-1.0 1.7 REQUIRED)

#-DENABLE_AUTOMATIC_INIT_AND_CLEANUP=OFF
# target_link_libraries (hello_mongoc PRIVATE mongo::mongoc_shared)