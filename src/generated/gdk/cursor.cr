module Gdk
  class Cursor < GObject::Object
    @gdk_cursor : LibGdk::Cursor*?
    def initialize(@gdk_cursor : LibGdk::Cursor*)
    end

    def to_unsafe
      @gdk_cursor.not_nil!.as(Void*)
    end



    def self.new(cursor_type) : self
      __return_value = LibGdk.cursor_new(cursor_type)
      cast Gdk::Cursor.new(__return_value)
    end

    def self.new_for_display(display, cursor_type) : self
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
      __return_value = LibGdk.cursor_get_cursor_type(to_unsafe.as(LibGdk::Cursor*))
      __return_value
    end

    def display
      __return_value = LibGdk.cursor_get_display(to_unsafe.as(LibGdk::Cursor*))
      Gdk::Display.new(__return_value)
    end

    def image
      __return_value = LibGdk.cursor_get_image(to_unsafe.as(LibGdk::Cursor*))
      GdkPixbuf::Pixbuf.new(__return_value) if __return_value
    end

    def surface(x_hot, y_hot)
      __return_value = LibGdk.cursor_get_surface(to_unsafe.as(LibGdk::Cursor*), x_hot, y_hot)
      Cairo::Surface.new(__return_value) if __return_value
    end

    def ref
      __return_value = LibGdk.cursor_ref(to_unsafe.as(LibGdk::Cursor*))
      Gdk::Cursor.new(__return_value)
    end

    def unref
      __return_value = LibGdk.cursor_unref(to_unsafe.as(LibGdk::Cursor*))
      __return_value
    end

  end
end

