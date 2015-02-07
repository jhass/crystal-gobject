require "./lib_gtk"

lib LibGObject
 fun signal_connect_data = g_signal_connect_data(instance : Void*, signal : UInt8*, callback : Void*, data : Void*, destroy_data : Void*, connect_flags : ConnectFlags) : UInt64
end

redefine_main do |main|
  LibGtk.init pointerof(ARGC_UNSAFE), pointerof(ARGV_UNSAFE)

  {{main}}

  LibGtk.main
end

module Gtk
  abstract class Widget
    def show
      LibGtk.widget_show widget
    end

    def show_all
      LibGtk.widget_show_all widget
    end

    def connect signal, &callback
      LibGObject.signal_connect_data widget as Void*, signal, callback.pointer, callback.closure_data, nil, LibGObject::ConnectFlags::SWAPPED
    end

    def destroy
      LibGtk.widget_destroy widget
    end

    private def widget
      to_unsafe as LibGtk::Widget*
    end
  end

  abstract class Container < Widget
    def border_width= value
      LibGtk.container_set_border_width container, value.to_u32
    end

    def add widget
      LibGtk.container_add container, widget
    end

    private def container
      to_unsafe as LibGtk::Container*
    end
  end

  abstract class Bin < Container
  end

  class Window < Bin
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

  class Button < Bin
    def initialize label
      @ptr = LibGtk.button_new_with_label label
    end

    def to_unsafe
      @ptr
    end
  end

  def self.quit
    LibGtk.main_quit
  end
end
