module Gdk
  class DrawingContext < GObject::Object
    @pointer : Void*
    def initialize(pointer : LibGdk::DrawingContext*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGdk::DrawingContext*)
    end

    def clip
      __return_value = LibGdk.drawing_context_get_clip(to_unsafe.as(LibGdk::DrawingContext*))
      Cairo::Region.new(__return_value)
    end

    def window
      __return_value = LibGdk.drawing_context_get_window(to_unsafe.as(LibGdk::DrawingContext*))
      Gdk::Window.new(__return_value)
    end

    def cairo_context
      __return_value = LibGdk.drawing_context_get_cairo_context(@pointer.as(LibGdk::DrawingContext*))
      Cairo::Context.new(__return_value)
    end

    def clip
      __return_value = LibGdk.drawing_context_get_clip(@pointer.as(LibGdk::DrawingContext*))
      Cairo::Region.new(__return_value) if __return_value
    end

    def window
      __return_value = LibGdk.drawing_context_get_window(@pointer.as(LibGdk::DrawingContext*))
      Gdk::Window.new(__return_value)
    end

    def valid?
      __return_value = LibGdk.drawing_context_is_valid(@pointer.as(LibGdk::DrawingContext*))
      __return_value
    end

  end
end

