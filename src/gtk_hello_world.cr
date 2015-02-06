require "./lib_gtk"

LibGtk.init pointerof(ARGC_UNSAFE), pointerof(ARGV_UNSAFE)


window = LibGtk.window_new(LibGtk::WindowType::TOPLEVEL) as LibGtk::Window*
LibGtk.window_set_title(window, "Hello World!")

LibGtk.widget_show(window as LibGtk::Widget*)

LibGtk.main
