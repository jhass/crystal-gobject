require "./lib_gtk"

lib LibGObject
 fun signal_connect_data = g_signal_connect_data(instance : Void*, signal : UInt8*, callback : -> Void, data : Void*, destroy_data : Void*, connect_flags : ConnectFlags) : UInt64
end

LibGtk.init pointerof(ARGC_UNSAFE), pointerof(ARGV_UNSAFE)


window = LibGtk.window_new(LibGtk::WindowType::TOPLEVEL) as LibGtk::Window*
LibGtk.window_set_title(window, "Hello World!")
LibGObject.signal_connect_data(window as Void*, "destroy", -> { LibGtk.main_quit }, nil, nil, LibGObject::ConnectFlags::ZERO_NONE)

LibGtk.widget_show(window as LibGtk::Widget*)

LibGtk.main
