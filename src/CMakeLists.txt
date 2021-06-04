add_executable(helloworld)
target_sources(helloworld PRIVATE testplot_widget.cpp testplot_main.cpp)
target_link_libraries(helloworld Qt5::Widgets KF5::Plotting)

install(TARGETS helloworld RUNTIME DESTINATION /usr/bin)
install(PROGRAMS helloworld.desktop DESTINATION ${XDG_APPS_INSTALL_DIR})
