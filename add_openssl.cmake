include(FetchContent)
FetchContent_Declare(openssl
  URL               https://ftp.openbsd.org/pub/OpenBSD/LibreSSL/libressl-3.3.1.tar.gz
  SOURCE_DIR        "${CMAKE_BINARY_DIR}/openssl-src"
  BINARY_DIR        "${CMAKE_BINARY_DIR}/openssl-build"
  CONFIGURE_COMMAND ""
  BUILD_COMMAND     ""
  INSTALL_COMMAND   ""
  TEST_COMMAND      ""
  CMAKE_ARGS ""
)
FetchContent_GetProperties(openssl)
if(NOT openssl_POPULATED)
set(LIBRESSL_SKIP_INSTALL ON)
set(LIBRESSL_APPS OFF)
set(LIBRESSL_TESTS OFF)
set(ENABLE_ASM OFF)
set(ENABLE_EXTRATESTS OFF)
set(ENABLE_NC OFF)
  FetchContent_Populate(openssl)
  add_subdirectory(${openssl_SOURCE_DIR} ${openssl_BINARY_DIR})
  # set(OPENSSL_CRYPTO_LIBRARY crypto)
  # set(OPENSSL ssl)
endif()