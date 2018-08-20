# project name
project (transcodium)

# the oldest stable cmake version we support
cmake_minimum_required (VERSION 2.6)

# tell cmake where its modules can be found in our project directory
list (APPEND CMAKE_MODULE_PATH ${CMAKE_SOURCE_DIR}/cmake)

# Some configuration
# configure_file (${CMAKE_SOURCE_DIR}/src/config.vala.cmake ${CMAKE_SOURCE_DIR}/src/config.vala)

#GSettings
# include(GSettings)
# add_schema("org.laberba.transcodium.gschema.xml")

# where we install data directory (if we have any)
set (DATADIR "${CMAKE_INSTALL_PREFIX}/share")

# what to call that directory where we install data too
set (PKGDATADIR "${DATADIR}/transcodium")

set (EXEC_NAME "transcodium")
set (RELEASE_NAME "Akwaaba")
set (VERSION "0.1")
set (VERSION_INFO "First Release")

# we're about to use pkgconfig to make sure dependencies are installed so let's find pkgconfig first
find_package(PkgConfig)

# now let's actually check for the required dependencies
pkg_check_modules(DEPS REQUIRED gtk+-3.0 granite)

add_definitions(${DEPS_CFLAGS})
link_libraries(${DEPS_LIBRARIES})
link_directories(${DEPS_LIBRARY_DIRS})

# make sure we have vala
find_package(Vala REQUIRED)

# make sure we use vala
include(ValaVersion)

# make sure it's the desired version of vala
ensure_vala_version("0.22" MINIMUM)

# files we want to compile
include(ValaPrecompile)
vala_precompile(VALA_C ${EXEC_NAME}
	src/Widgets/AddFileDialog.vala
	src/Transcodium.vala
    src/main.vala

# tell what libraries to use when compiling
PACKAGES
    gtk+-3.0
    granite
)

# tell cmake what to call the executable we just made
add_executable(${EXEC_NAME} ${VALA_C})

# add uninstall target
configure_file (
    "${CMAKE_SOURCE_DIR}/cmake/Uninstall.cmake"
    "${CMAKE_CURRENT_BINARY_DIR}/Uninstall.cmake"
    IMMEDIATE @ONLY)

add_custom_target (uninstall
    COMMAND ${CMAKE_COMMAND} -P ${CMAKE_CURRENT_BINARY_DIR}/Uninstall.cmake)

# install the binaries we just made
install (TARGETS ${EXEC_NAME} RUNTIME DESTINATION bin)

# install our .desktop file so the Applications menu will see it
install (FILES ${CMAKE_CURRENT_SOURCE_DIR}/data/Transcodium.desktop DESTINATION ${DATADIR}/applications/)

# install icons, gschema, banner, etc
# install (FILES ${CMAKE_CURRENT_SOURCE_DIR}/data/transcodium.desktop.appdata.xml DESTINATION share/appdata)

# install icons
install (FILES ${CMAKE_CURRENT_SOURCE_DIR}/data/icons/16/transcodium.svg DESTINATION share/icons/hicolor/16x16/apps)
install (FILES ${CMAKE_CURRENT_SOURCE_DIR}/data/icons/22/transcodium.svg DESTINATION share/icons/hicolor/22x22/apps)
install (FILES ${CMAKE_CURRENT_SOURCE_DIR}/data/icons/24/transcodium.svg DESTINATION share/icons/hicolor/24x24/apps)
install (FILES ${CMAKE_CURRENT_SOURCE_DIR}/data/icons/32/transcodium.svg DESTINATION share/icons/hicolor/32x32/apps)
install (FILES ${CMAKE_CURRENT_SOURCE_DIR}/data/icons/48/transcodium.svg DESTINATION share/icons/hicolor/48x48/apps)
install (FILES ${CMAKE_CURRENT_SOURCE_DIR}/data/icons/64/transcodium.svg DESTINATION share/icons/hicolor/64x64/apps)
install (FILES ${CMAKE_CURRENT_SOURCE_DIR}/data/icons/128/transcodium.svg DESTINATION share/icons/hicolor/128x128/apps)
install (FILES ${CMAKE_CURRENT_SOURCE_DIR}/data/icons/scalable/transcodium-symbolic.svg DESTINATION share/icons/hicolor/scalable/apps)

# regenerate icon cache for hicolor theme
install(
    CODE
         "execute_process (COMMAND gtk-update-icon-cache -t -f ${CMAKE_INSTALL_PREFIX}/share/icons/hicolor)"
    CODE
        "message (STATUS \"Updated icon cache in ${CMAKE_INSTALL_PREFIX}/share/icons/hicolor\")"
)

# install banner
# install (FILES ${CMAKE_CURRENT_SOURCE_DIR}/data/icons/assets/banner.png DESTINATION share/transcodium)

# Install an asset
# install (FILES ${CMAKE_CURRENT_SOURCE_DIR}/data/icons/assets/vocal-missing.png DESTINATION share/transcodium)


# Translation files
set (GETTEXT_PACKAGE "${CMAKE_PROJECT_NAME}")
add_definitions (-DGETTEXT_PACKAGE=\"${GETTEXT_PACKAGE}\")


add_subdirectory (po)