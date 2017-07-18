module Gdk
  class DrawingContext < GObject::Object
    @gdk_drawing_context : LibGdk::DrawingContext*?
    def initialize(@gdk_drawing_context : LibGdk::DrawingContext*)
    end

    def to_unsafe
      @gdk_drawing_context.not_nil!
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
      __return_value = LibGdk.drawing_context_get_cairo_context(to_unsafe.as(LibGdk::DrawingContext*))
      Cairo::Context.new(__return_value)
    end

    def clip
      __return_value = LibGdk.drawing_context_get_clip(to_unsafe.as(LibGdk::DrawingContext*))
      Cairo::Region.new(__return_value) if __return_value
    end

    def window
      __return_value = LibGdk.drawing_context_get_window(to_unsafe.as(LibGdk::DrawingContext*))
      Gdk::Window.new(__return_value)
    end

    def valid?
      __return_value = LibGdk.drawing_context_is_valid(to_unsafe.as(LibGdk::DrawingContext*))
      __return_value
    end

  end
end

