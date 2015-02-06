QT += core gui opengl script network

# Add more folders to ship with the application, here



folder_01.source = qml/stellarium-n9
folder_01.target = qml


folder_02.source = stellarium/data/default_config.ini \
    stellarium/data/ssystem.ini \
    stellarium/data/stellarium.ico \
    stellarium/data/base_locations.bin.gz \
    stellarium/data/DejaVuSans.ttf \
    stellarium/data/DejaVuSansMono.ttf \
    stellarium/data/constellations_boundaries.dat \
    stellarium/data/iso639-1.utf8 \
    stellarium/data/iso3166-1-alpha-2.utf8 \
    stellarium/data/countryCodes.dat

folder_02.target = share/data


folder_03.source = stellarium/textures
folder_03.target = share


folder_04.source = stellarium/stars
folder_04.target = share


folder_05.source = stellarium/data/gui
folder_05_target = data

folder_06.source = stellarium/landscapes
folder_06.target = share

folder_07.source = stellarium/skycultures
folder_07.target = share

folder_08.source = stellarium/nebulae
folder_08.target = share

#folder_09.source = stellarium/po
#folder_09.target = share

folder_10.source = stellarium/scripts
folder_10.target = share

folder_11.source = locale
folder_11.target = share


DEPLOYMENTFOLDERS = folder_11 folder_01 folder_02 folder_03 folder_04 folder_05 folder_06 folder_07 folder_08 folder_10

# Additional import path used to resolve QML modules in Creator's code model
QML_IMPORT_PATH =

symbian:TARGET.UID3 = 0xE42EC054

# Smart Installer package's UID
# This UID is from the protected range and therefore the package will
# fail to install if self-signed. By default qmake uses the unprotected
# range value if unprotected UID is defined for the application and
# 0x2002CCCF value if protected UID is given to the application
#symbian:DEPLOYMENT.installer_header = 0x2002CCCF

# Allow network access on Symbian
symbian:TARGET.CAPABILITY += NetworkServices

# If your application uses the Qt Mobility libraries, uncomment the following
# lines and add the respective components to the MOBILITY variable.
CONFIG += mobility
MOBILITY += sensors

# Speed up launching on MeeGo/Harmattan when using applauncherd daemon
CONFIG += qdeclarative-boostable

# Add dependency to Symbian components
# CONFIG += qt-components



DEFINES += DEFAULT_GRAPHICS_SYSTEM=\\\"raster\\\"
DEFINES += PACKAGE_VERSION=\\\"0.11.4\\\"
#DEFINES += INSTALL_DATADIR=\\\"/usr/share/stellarium-n9_data/\\\"
DEFINES += INSTALL_DATADIR=\\\"/opt/stellarium-n9/share/\\\"
DEFINES += USE_OPENGL_ES2
DEFINES += STELN9_VERSION=\\\"0.3.6\\\"
DEFINES += ENABLE_NLS

INCLUDEPATH += stellarium/src \
    stellarium/src/core \
    stellarium/src/core/external \
    stellarium/src/core/external/kfilter \
    stellarium/src/core/external/glues_stel/source \
    stellarium/src/core/external/glues_stel/source/libtess \
    stellarium/src/core/modules \
    stellarium/src/core/planetsephems \
    stellarium/src/gui \
    stellarium/src/gui_n9 \
    stellarium/src/scripting


# The .cpp file which was generated for your project. Feel free to hack it.
SOURCES += \
    stellarium/src/StelMainWindow.cpp \
    stellarium/src/StelMainGraphicsView.cpp \
    stellarium/src/StelLogger.cpp \
    stellarium/src/main.cpp \
    stellarium/src/CLIProcessor.cpp \
    #stellarium/src/tests/testStelVertexArray.cpp \
    #stellarium/src/tests/testStelSphericalIndex.cpp \
    #stellarium/src/tests/testStelSphereGeometry.cpp \
    #stellarium/src/tests/testStelJsonParser.cpp \
    #stellarium/src/tests/testStelFileMgr.cpp \
    #stellarium/src/tests/testRefractionExtinction.cpp \
    #stellarium/src/tests/testDates.cpp \
    stellarium/src/scripting/StratoscriptPreprocessor.cpp \
    stellarium/src/scripting/StelScriptMgr.cpp \
    stellarium/src/scripting/StelMainScriptAPIProxy.cpp \
    stellarium/src/scripting/StelMainScriptAPI.cpp \
    stellarium/src/scripting/ScreenImageMgr.cpp \
    stellarium/src/gui/ViewDialog.cpp \
    stellarium/src/gui/StelScriptSyntaxHighlighter.cpp \
    stellarium/src/gui/StelGuiItems.cpp \
    stellarium/src/gui/StelGui.cpp \
    stellarium/src/gui/StelDialog.cpp \
    stellarium/src/gui/SkyGui.cpp \
    stellarium/src/gui/SearchDialog.cpp \
    stellarium/src/gui/ScriptConsole.cpp \
    stellarium/src/gui/MapLabel.cpp \
    stellarium/src/gui/LocationDialog.cpp \
    stellarium/src/gui/HelpDialog.cpp \
    stellarium/src/gui/Dialog.cpp \
    stellarium/src/gui/DateTimeDialog.cpp \
    stellarium/src/gui/ConfigurationDialog.cpp \
    stellarium/src/gui/AtmosphereDialog.cpp \
    stellarium/src/gui/AngleSpinBox.cpp \
    stellarium/src/gui/AddRemoveLandscapesDialog.cpp \
    stellarium/src/core/TrailGroup.cpp \
    stellarium/src/core/StelViewportEffect.cpp \
    stellarium/src/core/StelVideoMgr.cpp \
    stellarium/src/core/StelVertexArray.cpp \
    stellarium/src/core/StelUtils.cpp \
    stellarium/src/core/StelTranslator.cpp \
    stellarium/src/core/StelToneReproducer.cpp \
    stellarium/src/core/StelTextureMgr.cpp \
    stellarium/src/core/StelTexture.cpp \
    stellarium/src/core/StelSphericalIndexMultiRes.cpp \
    stellarium/src/core/StelSphericalIndex.cpp \
    stellarium/src/core/StelSphereGeometry.cpp \
    stellarium/src/core/StelSkyPolygon.cpp \
    stellarium/src/core/StelSkyLayerMgr.cpp \
    stellarium/src/core/StelSkyLayer.cpp \
    stellarium/src/core/StelSkyImageTile.cpp \
    stellarium/src/core/StelSkyDrawer.cpp \
    stellarium/src/core/StelSkyCultureMgr.cpp \
    stellarium/src/core/StelProjectorClasses.cpp \
    stellarium/src/core/StelProjector.cpp \
    stellarium/src/core/StelPainter.cpp \
    stellarium/src/core/StelObserver.cpp \
    stellarium/src/core/StelObjectModule.cpp \
    stellarium/src/core/StelObjectMgr.cpp \
    stellarium/src/core/StelObject.cpp \
    stellarium/src/core/StelMovementMgr.cpp \
    stellarium/src/core/StelModuleMgr.cpp \
    stellarium/src/core/StelModule.cpp \
    stellarium/src/core/StelLocationMgr.cpp \
    stellarium/src/core/StelLocation.cpp \
    stellarium/src/core/StelLocaleMgr.cpp \
    stellarium/src/core/StelLoadingBar.cpp \
    stellarium/src/core/StelJsonParser.cpp \
    stellarium/src/core/StelIniParser.cpp \
    stellarium/src/core/StelGuiBase.cpp \
    stellarium/src/core/StelGeodesicGrid.cpp \
    stellarium/src/core/StelFileMgr.cpp \
    stellarium/src/core/StelCore.cpp \
    stellarium/src/core/StelAudioMgr.cpp \
    stellarium/src/core/StelAppGraphicsWidget.cpp \
    stellarium/src/core/StelApp.cpp \
    stellarium/src/core/SphericMirrorCalculator.cpp \
    stellarium/src/core/SimbadSearcher.cpp \
    stellarium/src/core/RefractionExtinction.cpp \
    stellarium/src/core/OctahedronPolygon.cpp \
    stellarium/src/core/MultiLevelJsonBase.cpp \
    stellarium/src/core/external/glues_stel/source/libtess/tessmono.c \
    stellarium/src/core/external/glues_stel/source/libtess/tess.c \
    stellarium/src/core/external/glues_stel/source/libtess/sweep.c \
    stellarium/src/core/external/glues_stel/source/libtess/render.c \
    stellarium/src/core/external/glues_stel/source/libtess/priorityq.c \
    stellarium/src/core/external/glues_stel/source/libtess/normal.c \
    stellarium/src/core/external/glues_stel/source/libtess/mesh.c \
    stellarium/src/core/external/glues_stel/source/libtess/memalloc.c \
    stellarium/src/core/external/glues_stel/source/libtess/geom.c \
    stellarium/src/core/external/glues_stel/source/libtess/dict.c \
    stellarium/src/core/external/glues_stel/source/glues_error.c \
    stellarium/src/core/external/kfilter/kzip.cpp \
    stellarium/src/core/external/kfilter/klimitediodevice.cpp \
    stellarium/src/core/external/kfilter/kgzipfilter.cpp \
    stellarium/src/core/external/kfilter/kfilterdev.cpp \
    stellarium/src/core/external/kfilter/kfilterbase.cpp \
    stellarium/src/core/external/kfilter/karchive.cpp \
    #stellarium/src/core/external/GLee.c \
    stellarium/src/core/modules/ZoneArray.cpp \
    stellarium/src/core/modules/StarWrapper.cpp \
    stellarium/src/core/modules/StarMgr.cpp \
    stellarium/src/core/modules/Star.cpp \
    stellarium/src/core/modules/SolarSystem.cpp \
    stellarium/src/core/modules/Skylight.cpp \
    stellarium/src/core/modules/Skybright.cpp \
    stellarium/src/core/modules/Planet.cpp \
    stellarium/src/core/modules/Orbit.cpp \
    stellarium/src/core/modules/NebulaMgr.cpp \
    stellarium/src/core/modules/Nebula.cpp \
    stellarium/src/core/modules/MinorPlanet.cpp \
    stellarium/src/core/modules/MilkyWay.cpp \
    stellarium/src/core/modules/MeteorMgr.cpp \
    stellarium/src/core/modules/Meteor.cpp \
    stellarium/src/core/modules/LandscapeMgr.cpp \
    stellarium/src/core/modules/Landscape.cpp \
    stellarium/src/core/modules/LabelMgr.cpp \
    stellarium/src/core/modules/GridLinesMgr.cpp \
    #stellarium/src/core/modules/GeodesicGridDrawer.cpp \
    stellarium/src/core/modules/ConstellationMgr.cpp \
    stellarium/src/core/modules/Constellation.cpp \
    stellarium/src/core/modules/Comet.cpp \
    stellarium/src/core/modules/Atmosphere.cpp \
    stellarium/src/core/planetsephems/vsop87.c \
    stellarium/src/core/planetsephems/tass17.c \
    stellarium/src/core/planetsephems/stellplanet.c \
    stellarium/src/core/planetsephems/sideral_time.c \
    stellarium/src/core/planetsephems/pluto.c \
    stellarium/src/core/planetsephems/marssat.c \
    stellarium/src/core/planetsephems/l1.c \
    stellarium/src/core/planetsephems/gust86.c \
    stellarium/src/core/planetsephems/elp82b.c \
    stellarium/src/core/planetsephems/elliptic_to_rectangular.c \
    stellarium/src/core/planetsephems/calc_interpolated_elements.c \
    stellarium/src/gui_n9/StelGuiN9.cpp \
    stellarium/src/gui_n9/SkyGuiN9.cpp \
    stellarium/src/StelQmlGui.cpp \
    stellarium/src/StelQmlSearch.cpp \
    stellarium/src/StelQmlDateTime.cpp \
    stellarium/src/StelSensors.cpp \
    stellarium/src/StelQmlHudSettings.cpp




# Please do not modify the following two lines. Required for deployment.
include(qmlapplicationviewer/qmlapplicationviewer.pri)
qtcAddDeployment()

OTHER_FILES += \
    qtc_packaging/debian_harmattan/rules \
    qtc_packaging/debian_harmattan/README \
    qtc_packaging/debian_harmattan/manifest.aegis \
    qtc_packaging/debian_harmattan/copyright \
    qtc_packaging/debian_harmattan/control \
    qtc_packaging/debian_harmattan/compat \
    qtc_packaging/debian_harmattan/changelog \
    qmlapplicationviewer/qmlapplicationviewer.pri \
    stellarium/data/zone.tab \
    stellarium/data/stellarium.xpm \
    stellarium/data/stellarium.rc \
    stellarium/data/stellarium.ico \
    stellarium/data/stellarium.desktop \
    stellarium/data/ssystem.ini \
    stellarium/data/splash.bmp \
    stellarium/data/PkgInfo \
    stellarium/data/name.txt \
    stellarium/data/iso3166-1-alpha-2.utf8 \
    stellarium/data/iso639-1.utf8 \
    stellarium/data/Info.plist \
    stellarium/data/Icon.icns \
    stellarium/data/icon.bmp \
    stellarium/data/DejaVuSansMono.ttf \
    stellarium/data/DejaVuSans.ttf \
    stellarium/data/default_config.ini \
    stellarium/data/countryCodes.dat \
    stellarium/data/constellations_boundaries.dat \
    stellarium/data/CMakeLists.txt \
    stellarium/data/base_locations.txt \
    stellarium/data/base_locations.bin.gz

HEADERS += \
    stellarium/src/translations.h \
    stellarium/src/StelMainWindow.hpp \
    stellarium/src/StelMainGraphicsView.hpp \
    stellarium/src/StelLogger.hpp \
    stellarium/src/CLIProcessor.hpp \
    stellarium/src/scripting/StelScriptMgr.hpp \
    stellarium/src/scripting/StelMainScriptAPIProxy.hpp \
    stellarium/src/scripting/StelMainScriptAPI.hpp \
    stellarium/src/scripting/ScreenImageMgr.hpp \
    stellarium/src/gui/ViewDialog.hpp \
    stellarium/src/gui/StelStyle.hpp \
    stellarium/src/gui/StelScriptSyntaxHighlighter.hpp \
    stellarium/src/gui/StelGuiItems.hpp \
    stellarium/src/gui/StelGui.hpp \
    stellarium/src/gui/StelDialog.hpp \
    stellarium/src/gui/SkyGui.hpp \
    stellarium/src/gui/SearchDialog.hpp \
    stellarium/src/gui/ScriptConsole.hpp \
    stellarium/src/gui/MapLabel.hpp \
    stellarium/src/gui/LocationDialog.hpp \
    stellarium/src/gui/HelpDialog.hpp \
    stellarium/src/gui/Dialog.hpp \
    stellarium/src/gui/DateTimeDialog.hpp \
    stellarium/src/gui/ConfigurationDialog.hpp \
    stellarium/src/gui/AtmosphereDialog.hpp \
    stellarium/src/gui/AngleSpinBox.hpp \
    stellarium/src/gui/AddRemoveLandscapesDialog.hpp \
    stellarium/src/core/VecMath.hpp \
    stellarium/src/core/TrailGroup.hpp \
    stellarium/src/core/StelViewportEffect.hpp \
    stellarium/src/core/StelVideoMgr.hpp \
    stellarium/src/core/StelVertexArray.hpp \
    stellarium/src/core/StelUtils.hpp \
    stellarium/src/core/StelTranslator.hpp \
    stellarium/src/core/StelToneReproducer.hpp \
    stellarium/src/core/StelTextureTypes.hpp \
    stellarium/src/core/StelTextureMgr.hpp \
    stellarium/src/core/StelTexture.hpp \
    stellarium/src/core/StelSphericalIndexMultiRes.hpp \
    stellarium/src/core/StelSphericalIndex.hpp \
    stellarium/src/core/StelSphereGeometry.hpp \
    stellarium/src/core/StelSkyPolygon.hpp \
    stellarium/src/core/StelSkyLayerMgr.hpp \
    stellarium/src/core/StelSkyLayer.hpp \
    stellarium/src/core/StelSkyImageTile.hpp \
    stellarium/src/core/StelSkyDrawer.hpp \
    stellarium/src/core/StelSkyCultureMgr.hpp \
    stellarium/src/core/StelRegionObject.hpp \
    stellarium/src/core/StelProjectorType.hpp \
    stellarium/src/core/StelProjectorClasses.hpp \
    stellarium/src/core/StelProjector.hpp \
    stellarium/src/core/StelPluginInterface.hpp \
    stellarium/src/core/StelPainter.hpp \
    stellarium/src/core/StelObserver.hpp \
    stellarium/src/core/StelObjectType.hpp \
    stellarium/src/core/StelObjectModule.hpp \
    stellarium/src/core/StelObjectMgr.hpp \
    stellarium/src/core/StelObject.hpp \
    stellarium/src/core/StelMovementMgr.hpp \
    stellarium/src/core/StelModuleMgr.hpp \
    stellarium/src/core/StelModule.hpp \
    stellarium/src/core/StelLocationMgr.hpp \
    stellarium/src/core/StelLocation.hpp \
    stellarium/src/core/StelLocaleMgr.hpp \
    stellarium/src/core/StelLoadingBar.hpp \
    stellarium/src/core/StelJsonParser.hpp \
    stellarium/src/core/StelIniParser.hpp \
    stellarium/src/core/StelGuiBase.hpp \
    stellarium/src/core/StelGeodesicGrid.hpp \
    stellarium/src/core/StelFileMgr.hpp \
    stellarium/src/core/StelFader.hpp \
    stellarium/src/core/StelCore.hpp \
    stellarium/src/core/StelAudioMgr.hpp \
    stellarium/src/core/StelAppGraphicsWidget.hpp \
    stellarium/src/core/StelApp.hpp \
    stellarium/src/core/SphericMirrorCalculator.hpp \
    stellarium/src/core/SimbadSearcher.hpp \
    stellarium/src/core/RefractionExtinction.hpp \
    stellarium/src/core/OctahedronPolygon.hpp \
    stellarium/src/core/MultiLevelJsonBase.hpp \
    stellarium/src/core/external/glues_stel/source/libtess/tessmono.h \
    stellarium/src/core/external/glues_stel/source/libtess/tess.h \
    stellarium/src/core/external/glues_stel/source/libtess/sweep.h \
    stellarium/src/core/external/glues_stel/source/libtess/render.h \
    stellarium/src/core/external/glues_stel/source/libtess/priorityq.h \
    stellarium/src/core/external/glues_stel/source/libtess/priorityq-sort.h \
    stellarium/src/core/external/glues_stel/source/libtess/priorityq-heap.h \
    stellarium/src/core/external/glues_stel/source/libtess/normal.h \
    stellarium/src/core/external/glues_stel/source/libtess/mesh.h \
    stellarium/src/core/external/glues_stel/source/libtess/memalloc.h \
    stellarium/src/core/external/glues_stel/source/libtess/geom.h \
    stellarium/src/core/external/glues_stel/source/libtess/dict.h \
    stellarium/src/core/external/glues_stel/source/libtess/dict-list.h \
    stellarium/src/core/external/glues_stel/source/glues.h \
    stellarium/src/core/external/glues_stel/source/glues_error.h \
    stellarium/src/core/external/kfilter/kzip.h \
    stellarium/src/core/external/kfilter/klimitediodevice.h \
    stellarium/src/core/external/kfilter/kgzipfilter.h \
    stellarium/src/core/external/kfilter/kfilterdev.h \
    stellarium/src/core/external/kfilter/kfilterbase.h \
    stellarium/src/core/external/kfilter/karchive.h \
    stellarium/src/core/external/GLee.h \
    stellarium/src/core/external/gettext.h \
    stellarium/src/core/external/fixx11h.h \
    stellarium/src/core/modules/ZoneData.hpp \
    stellarium/src/core/modules/ZoneArray.hpp \
    stellarium/src/core/modules/StarWrapper.hpp \
    stellarium/src/core/modules/StarMgr.hpp \
    stellarium/src/core/modules/Star.hpp \
    stellarium/src/core/modules/Solve.hpp \
    stellarium/src/core/modules/SolarSystem.hpp \
    stellarium/src/core/modules/Skylight.hpp \
    stellarium/src/core/modules/Skybright.hpp \
    stellarium/src/core/modules/Planet.hpp \
    stellarium/src/core/modules/Orbit.hpp \
    stellarium/src/core/modules/NebulaMgr.hpp \
    stellarium/src/core/modules/Nebula.hpp \
    stellarium/src/core/modules/MinorPlanet.hpp \
    stellarium/src/core/modules/MilkyWay.hpp \
    stellarium/src/core/modules/MeteorMgr.hpp \
    stellarium/src/core/modules/Meteor.hpp \
    stellarium/src/core/modules/LandscapeMgr.hpp \
    stellarium/src/core/modules/Landscape.hpp \
    stellarium/src/core/modules/LabelMgr.hpp \
    stellarium/src/core/modules/GridLinesMgr.hpp \
    #stellarium/src/core/modules/GeodesicGridDrawer.hpp \
    stellarium/src/core/modules/ConstellationMgr.hpp \
    stellarium/src/core/modules/Constellation.hpp \
    stellarium/src/core/modules/Comet.hpp \
    stellarium/src/core/modules/Atmosphere.hpp \
    stellarium/src/core/planetsephems/vsop87.h \
    stellarium/src/core/planetsephems/tass17.h \
    stellarium/src/core/planetsephems/stellplanet.h \
    stellarium/src/core/planetsephems/sideral_time.h \
    stellarium/src/core/planetsephems/pluto.h \
    stellarium/src/core/planetsephems/marssat.h \
    stellarium/src/core/planetsephems/l1.h \
    stellarium/src/core/planetsephems/gust86.h \
    stellarium/src/core/planetsephems/elp82b.h \
    stellarium/src/core/planetsephems/elliptic_to_rectangular.h \
    stellarium/src/core/planetsephems/calc_interpolated_elements.h \
    stellarium/src/gui_n9/StelGuiN9.hpp \
    stellarium/src/gui_n9/SkyGuiN9.hpp \
    stellarium/src/StelQmlGui.hpp \
    stellarium/src/StelQmlSearch.hpp \
    stellarium/src/StelQmlDateTime.hpp \
    stellarium/src/StelQuaternion.hpp \
    stellarium/src/StelSensors.hpp \
    stellarium/src/StelQmlHudSettings.hpp

RESOURCES += \
    stellarium/data/mainRes.qrc \
    stellarium/data/gui/guiRes.qrc

FORMS += \
    stellarium/src/gui/viewDialog.ui \
    stellarium/src/gui/searchDialogGui.ui \
    stellarium/src/gui/scriptConsole.ui \
    stellarium/src/gui/locationDialogGui.ui \
    stellarium/src/gui/helpDialogGui.ui \
    stellarium/src/gui/dateTimeDialogGui.ui \
    stellarium/src/gui/configurationDialog.ui \
    stellarium/src/gui/AtmosphereDialog.ui \
    stellarium/src/gui/addRemoveLandscapesDialog.ui



#QMAKE_CXXFLAGS_RELEASE = -o2 -D_REENTRANT -DQT_GL_NO_SCISSOR_TEST -DQT_DEFAULT_TEXTURE_GLYPH_CACHE_WIDTH=1024 -mtune=cortex-a8 -march=armv7-a -ftree-vectorize -mfpu=neon -ffast-math -funroll-loops
#QMAKE_CXXFLAGS_RELEASE += -fno-omit-frame-pointer -fno-optimize-sibling-calls -D_REENTRANT -DQT_GL_NO_SCISSOR_TEST -DQT_DEFAULT_TEXTURE_GLYPH_CACHE_WIDTH=1024 -mtune=cortex-a8 -march=armv7-a -ftree-vectorize -mfpu=neon -funroll-loops
QMAKE_CXXFLAGS_RELEASE += -ftree-vectorize -funroll-loops -ffast-math
