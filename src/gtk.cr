require "./lib_gtk"

lib LibGObject
 fun signal_connect_data = g_signal_connect_data(instance : Void*, signal : UInt8*, callback : -> Void, data : Void*, destroy_data : Void*, connect_flags : ConnectFlags) : UInt64
end

redefine_main do |main|
  LibGtk.init pointerof(ARGC_UNSAFE), pointerof(ARGV_UNSAFE)

  {{main}}

  LibGtk.main
end

module Gtk
  class Widget
    def show
      LibGtk.widget_show widget
    end

    def connect signal, &callback
      LibGObject.signal_connect_data(widget as Void*, "destroy", callback, callback.closure_data, nil, LibGObject::ConnectFlags::ZERO_NONE)
    end

    private def widget
      to_unsafe as LibGtk::Widget*
    end
  end

  class Window < Widget
    def initialize
      @ptr = LibGtk.window_new(LibGtk::WindowType::TOPLEVEL) as LibGtk::Window*
    end

    def title= title
      LibGtk.window_set_title self, title
    end

    def to_unsafe
      @ptr
    end
  end

  def self.quit
    LibGtk.main_quit
  end
end
