project(ProjectName)
cmake_minimum_required(VERSION 3.19)

add_executable(${PROJECT_NAME} my_hello_mongo.c)


# configure_file(CMakeLists.txt.in
#                googletest-download/CMakeLists.txt)

# execute_process(COMMAND ${CMAKE_COMMAND} -G "${CMAKE_GENERATOR}" .
#   WORKING_DIRECTORY ${CMAKE_BINARY_DIR}/googletest-download )
# execute_process(COMMAND ${CMAKE_COMMAND} --build .
#   WORKING_DIRECTORY ${CMAKE_BINARY_DIR}/googletest-download )




# add_subdirectory(${CMAKE_BINARY_DIR}/mongo-c-driver-src
#                  ${CMAKE_BINARY_DIR}/mongo-c-driver-build EXCLUDE_FROM_ALL)

# # add_subdirectory(mongo-c-driver-b EXCLUDE_FROM_ALL)
# # find_package (bson-1.0  REQUIRED)
# # find_package (mongoc-1.0 1.7 QUIET)

# #-DENABLE_AUTOMATIC_INIT_AND_CLEANUP=OFF
# target_link_libraries (${PROJECT_NAME} PRIVATE ${CMAKE_BINARY_DIR}/mongo-c-driver-build::mongoc_shared)

include(FetchContent)
FetchContent_Declare(
   mongo-c-driver
   GIT_REPOSITORY    https://github.com/mongodb/mongo-c-driver.git
   GIT_TAG           master
   SOURCE_DIR        "${CMAKE_BINARY_DIR}/mongo-c-driver-src"
   BINARY_DIR        "${CMAKE_BINARY_DIR}/mongo-c-driver-build"
   CONFIGURE_COMMAND ""
   BUILD_COMMAND     ""
   INSTALL_COMMAND   ""
   TEST_COMMAND      ""
   CMAKE_ARGS "-DENABLE_AUTOMATIC_INIT_AND_CLEANUP=OFF"
)
FetchContent_MakeAvailable(mongo-c-driver)