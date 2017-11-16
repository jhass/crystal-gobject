module Gdk
  class Cursor < GObject::Object
    @pointer : Void*
    def initialize(pointer : LibGdk::Cursor*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGdk::Cursor*)
    end

    def cursor_type
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "cursor_type", gvalue)
      gvalue.enum
    end

    def display
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "display", gvalue)
      Gdk::Display.cast(gvalue.object)
    end

    def self.new(cursor_type : Gdk::CursorType) : self
      __return_value = LibGdk.cursor_new(cursor_type)
      cast Gdk::Cursor.new(__return_value)
    end

    def self.new_for_display(display, cursor_type : Gdk::CursorType) : self
      __return_value = LibGdk.cursor_new_for_display(display.to_unsafe.as(LibGdk::Display*), cursor_type)
      cast Gdk::Cursor.new(__return_value)
    end

    def self.new_from_name(display, name) : self
      __return_value = LibGdk.cursor_new_from_name(display.to_unsafe.as(LibGdk::Display*), name.to_unsafe)
      cast Gdk::Cursor.new(__return_value) if __return_value
    end

    def self.new_from_pixbuf(display, pixbuf, x, y) : self
      __return_value = LibGdk.cursor_new_from_pixbuf(display.to_unsafe.as(LibGdk::Display*), pixbuf.to_unsafe.as(LibGdkPixbuf::Pixbuf*), Int32.new(x), Int32.new(y))
      cast Gdk::Cursor.new(__return_value)
    end

    def self.new_from_surface(display, surface, x, y) : self
      __return_value = LibGdk.cursor_new_from_surface(display.to_unsafe.as(LibGdk::Display*), surface.to_unsafe.as(LibCairo::Surface*), Float64.new(x), Float64.new(y))
      cast Gdk::Cursor.new(__return_value)
    end

    def cursor_type
      __return_value = LibGdk.cursor_get_cursor_type(@pointer.as(LibGdk::Cursor*))
      __return_value
    end

    def display
      __return_value = LibGdk.cursor_get_display(@pointer.as(LibGdk::Cursor*))
      Gdk::Display.new(__return_value)
    end

    def image
      __return_value = LibGdk.cursor_get_image(@pointer.as(LibGdk::Cursor*))
      GdkPixbuf::Pixbuf.new(__return_value) if __return_value
    end

    def surface(x_hot, y_hot)
      __return_value = LibGdk.cursor_get_surface(@pointer.as(LibGdk::Cursor*), x_hot, y_hot)
      Cairo::Surface.new(__return_value) if __return_value
    end

    def ref
      __return_value = LibGdk.cursor_ref(@pointer.as(LibGdk::Cursor*))
      Gdk::Cursor.new(__return_value)
    end

    def unref
      LibGdk.cursor_unref(@pointer.as(LibGdk::Cursor*))
      nil
    end

  end
end

