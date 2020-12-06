add_subdirectory(mongo-c-driver-b/src/libmongoc)
# find_package (bson-1.0  REQUIRED)
find_package (mongoc-1.0 1.7 REQUIRED)
#-DENABLE_AUTOMATIC_INIT_AND_CLEANUP=OFF
target_link_libraries (hello_mongoc PRIVATE mongo::mongoc_shared)