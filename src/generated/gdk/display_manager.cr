module Gdk
  class DisplayManager < GObject::Object
    @pointer : Void*
    def initialize(pointer : LibGdk::DisplayManager*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGdk::DisplayManager*)
    end

    def default_display
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "default_display", gvalue)
      Gdk::Display.cast(gvalue.object)
    end

    def self.get
      __return_value = LibGdk.display_manager_get
      Gdk::DisplayManager.new(__return_value)
    end

    def default_display
      __return_value = LibGdk.display_manager_get_default_display(@pointer.as(LibGdk::DisplayManager*))
      Gdk::Display.new(__return_value) if __return_value
    end

    def list_displays
      __return_value = LibGdk.display_manager_list_displays(@pointer.as(LibGdk::DisplayManager*))
      GLib::SListIterator(Gdk::Display, LibGdk::Display**).new(GLib::SList.new(__return_value.as(LibGLib::SList*)))
    end

    def open_display(name)
      __return_value = LibGdk.display_manager_open_display(@pointer.as(LibGdk::DisplayManager*), name.to_unsafe)
      Gdk::Display.new(__return_value) if __return_value
    end

    def default_display=(display)
      LibGdk.display_manager_set_default_display(@pointer.as(LibGdk::DisplayManager*), display.to_unsafe.as(LibGdk::Display*))
      nil
    end

    alias DisplayOpenedSignal = DisplayManager, Gdk::Display ->
    def on_display_opened(&__block : DisplayOpenedSignal)
      __callback = ->(_arg0 : LibGdk::DisplayManager*, _arg1 : LibGdk::Display**) {
       __return_value = __block.call(DisplayManager.new(_arg0), Gdk::Display.new(_arg1))
       __return_value
      }
      connect("display-opened", __callback)
    end

  end
end

