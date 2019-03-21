# This file will be configured to contain variables for CPack. These variables
# should be set in the CMake list file of the project before CPack module is
# included. The list of available CPACK_xxx variables and their associated
# documentation may be obtained using
#  cpack --help-variable-list
#
# Some variables are common to all generators (e.g. CPACK_PACKAGE_NAME)
# and some are specific to a generator
# (e.g. CPACK_NSIS_EXTRA_INSTALL_COMMANDS). The generator specific variables
# usually begin with CPACK_<GENNAME>_xxxx.


SET(CPACK_BINARY_7Z "")
SET(CPACK_BINARY_BUNDLE "")
SET(CPACK_BINARY_CYGWIN "")
SET(CPACK_BINARY_DEB "")
SET(CPACK_BINARY_DRAGNDROP "")
SET(CPACK_BINARY_FREEBSD "")
SET(CPACK_BINARY_IFW "")
SET(CPACK_BINARY_NSIS "")
SET(CPACK_BINARY_OSXX11 "")
SET(CPACK_BINARY_PACKAGEMAKER "")
SET(CPACK_BINARY_PRODUCTBUILD "")
SET(CPACK_BINARY_RPM "")
SET(CPACK_BINARY_STGZ "")
SET(CPACK_BINARY_TBZ2 "")
SET(CPACK_BINARY_TGZ "")
SET(CPACK_BINARY_TXZ "")
SET(CPACK_BINARY_TZ "")
SET(CPACK_BINARY_WIX "")
SET(CPACK_BINARY_ZIP "")
SET(CPACK_BUILD_SOURCE_DIRS "/Users/zhangyanjun/Desktop/test/mariadb-connector-c-3.0.9-src;/Users/zhangyanjun/Desktop/test/mariadb-connector-c-3.0.9-src")
SET(CPACK_CMAKE_GENERATOR "Unix Makefiles")
SET(CPACK_COMPONENTS_ALL "ClientPlugins;Development;SharedLibraries")
SET(CPACK_COMPONENT_UNSPECIFIED_HIDDEN "TRUE")
SET(CPACK_COMPONENT_UNSPECIFIED_REQUIRED "TRUE")
SET(CPACK_GENERATOR "TGZ")
SET(CPACK_INSTALL_CMAKE_PROJECTS "/Users/zhangyanjun/Desktop/test/mariadb-connector-c-3.0.9-src;mariadb-connector-c;ALL;/")
SET(CPACK_INSTALL_PREFIX "/usr/local")
SET(CPACK_MODULE_PATH "")
SET(CPACK_NSIS_DISPLAY_NAME "mariadb_connector_c 3.0.9")
SET(CPACK_NSIS_INSTALLER_ICON_CODE "")
SET(CPACK_NSIS_INSTALLER_MUI_ICON_CODE "")
SET(CPACK_NSIS_INSTALL_ROOT "$PROGRAMFILES")
SET(CPACK_NSIS_PACKAGE_NAME "mariadb_connector_c 3.0.9")
SET(CPACK_OSX_SYSROOT "/Library/Developer/CommandLineTools/SDKs/MacOSX10.14.sdk")
SET(CPACK_OUTPUT_CONFIG_FILE "/Users/zhangyanjun/Desktop/test/mariadb-connector-c-3.0.9-src/CPackConfig.cmake")
SET(CPACK_PACKAGE_DEFAULT_LOCATION "/")
SET(CPACK_PACKAGE_DESCRIPTION "MariaDB Connector/C. A library for connecting to MariaDB and MySQL servers")
SET(CPACK_PACKAGE_DESCRIPTION_FILE "/Users/zhangyanjun/Desktop/test/mariadb-connector-c-3.0.9-src/README")
SET(CPACK_PACKAGE_DESCRIPTION_SUMMARY "mariadb-connector-c built using CMake")
SET(CPACK_PACKAGE_FILE_NAME "mariadb-connector-c-3.0.9-darwin-x86_64")
SET(CPACK_PACKAGE_INSTALL_DIRECTORY "mariadb_connector_c 3.0.9")
SET(CPACK_PACKAGE_INSTALL_REGISTRY_KEY "mariadb_connector_c 3.0.9")
SET(CPACK_PACKAGE_NAME "mariadb_connector_c")
SET(CPACK_PACKAGE_RELOCATABLE "true")
SET(CPACK_PACKAGE_VENDOR "MariaDB Corporation Ab")
SET(CPACK_PACKAGE_VERSION "3.0.9")
SET(CPACK_PACKAGE_VERSION_MAJOR "3")
SET(CPACK_PACKAGE_VERSION_MINOR "0")
SET(CPACK_PACKAGE_VERSION_PATCH "9")
SET(CPACK_RESOURCE_FILE_LICENSE "/Users/zhangyanjun/Desktop/test/mariadb-connector-c-3.0.9-src/COPYING.LIB")
SET(CPACK_RESOURCE_FILE_README "/usr/local/share/cmake-3.9/Templates/CPack.GenericDescription.txt")
SET(CPACK_RESOURCE_FILE_WELCOME "/usr/local/share/cmake-3.9/Templates/CPack.GenericWelcome.txt")
SET(CPACK_SET_DESTDIR "OFF")
SET(CPACK_SOURCE_7Z "")
SET(CPACK_SOURCE_CYGWIN "")
SET(CPACK_SOURCE_GENERATOR "TGZ")
SET(CPACK_SOURCE_IGNORE_FILES "\\.git/;\\.gitignore;\\.gitattributes;CMakeCache\\.txt;cmake_dist\\.cmake;CPackConfig\\.cmake;mariadb_config\\.c$;\\.build/;html/;unittest;/cmake_install.cmake;/CTestTestfile.cmake;/CPackSourceConfig.cmake;/CMakeFiles/;/version_resources/;/_CPack_Packages/;\\.gz$;\\.zip$;mariadb_config/mariadb_config$;/CMakeFiles/;/version_resources/;/_CPack_Packages/;Makefile$;include/my_config\\.h$")
SET(CPACK_SOURCE_OUTPUT_CONFIG_FILE "/Users/zhangyanjun/Desktop/test/mariadb-connector-c-3.0.9-src/CPackSourceConfig.cmake")
SET(CPACK_SOURCE_PACKAGE_FILE_NAME "mariadb-connector-c-3.0.9-src")
SET(CPACK_SOURCE_RPM "")
SET(CPACK_SOURCE_TBZ2 "")
SET(CPACK_SOURCE_TGZ "")
SET(CPACK_SOURCE_TXZ "")
SET(CPACK_SOURCE_TZ "")
SET(CPACK_SOURCE_ZIP "")
SET(CPACK_SYSTEM_NAME "Darwin")
SET(CPACK_TOPLEVEL_TAG "Darwin")
SET(CPACK_WIX_SIZEOF_VOID_P "8")

if(NOT CPACK_PROPERTIES_FILE)
  set(CPACK_PROPERTIES_FILE "/Users/zhangyanjun/Desktop/test/mariadb-connector-c-3.0.9-src/CPackProperties.cmake")
endif()

if(EXISTS ${CPACK_PROPERTIES_FILE})
  include(${CPACK_PROPERTIES_FILE})
endif()
