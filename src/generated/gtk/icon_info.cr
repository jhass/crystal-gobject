module Gtk
  class IconInfo < GObject::Object
    @pointer : Void*
    def initialize(pointer : LibGtk::IconInfo*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::IconInfo*)
    end

    def self.new_for_pixbuf(icon_theme, pixbuf) : self
      __return_value = LibGtk.icon_info_new_for_pixbuf(icon_theme.to_unsafe.as(LibGtk::IconTheme*), pixbuf.to_unsafe.as(LibGdkPixbuf::Pixbuf*))
      cast Gtk::IconInfo.new(__return_value)
    end

    def attach_points(points, n_points)
      __return_value = LibGtk.icon_info_get_attach_points(@pointer.as(LibGtk::IconInfo*), points, n_points)
      __return_value
    end

    def base_scale
      __return_value = LibGtk.icon_info_get_base_scale(@pointer.as(LibGtk::IconInfo*))
      __return_value
    end

    def base_size
      __return_value = LibGtk.icon_info_get_base_size(@pointer.as(LibGtk::IconInfo*))
      __return_value
    end

    def builtin_pixbuf
      __return_value = LibGtk.icon_info_get_builtin_pixbuf(@pointer.as(LibGtk::IconInfo*))
      GdkPixbuf::Pixbuf.new(__return_value) if __return_value
    end

    def display_name
      __return_value = LibGtk.icon_info_get_display_name(@pointer.as(LibGtk::IconInfo*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def embedded_rect(rectangle)
      __return_value = LibGtk.icon_info_get_embedded_rect(@pointer.as(LibGtk::IconInfo*), rectangle)
      __return_value
    end

    def filename
      __return_value = LibGtk.icon_info_get_filename(@pointer.as(LibGtk::IconInfo*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value)) if __return_value
    end

    def symbolic?
      __return_value = LibGtk.icon_info_is_symbolic(@pointer.as(LibGtk::IconInfo*))
      __return_value
    end

    def load_icon # function
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGtk.icon_info_load_icon(@pointer.as(LibGtk::IconInfo*), pointerof(__error))
      GLib::Error.assert __error
      GdkPixbuf::Pixbuf.new(__return_value)
    end

    def load_icon_async(cancellable, callback, user_data)
      LibGtk.icon_info_load_icon_async(@pointer.as(LibGtk::IconInfo*), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, callback ? callback : nil, user_data ? user_data : nil)
      nil
    end

    def load_icon_finish(res) # function
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGtk.icon_info_load_icon_finish(@pointer.as(LibGtk::IconInfo*), res.to_unsafe.as(LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      GdkPixbuf::Pixbuf.new(__return_value)
    end

    def load_surface(for_window) # function
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGtk.icon_info_load_surface(@pointer.as(LibGtk::IconInfo*), for_window ? for_window.to_unsafe.as(LibGdk::Window*) : nil, pointerof(__error))
      GLib::Error.assert __error
      Cairo::Surface.new(__return_value)
    end

    def load_symbolic(fg, success_color, warning_color, error_color, was_symbolic) # function
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGtk.icon_info_load_symbolic(@pointer.as(LibGtk::IconInfo*), fg.to_unsafe.as(LibGdk::RGBA*), success_color ? success_color.to_unsafe.as(LibGdk::RGBA*) : nil, warning_color ? warning_color.to_unsafe.as(LibGdk::RGBA*) : nil, error_color ? error_color.to_unsafe.as(LibGdk::RGBA*) : nil, was_symbolic, pointerof(__error))
      GLib::Error.assert __error
      GdkPixbuf::Pixbuf.new(__return_value)
    end

    def load_symbolic_async(fg, success_color, warning_color, error_color, cancellable, callback, user_data)
      LibGtk.icon_info_load_symbolic_async(@pointer.as(LibGtk::IconInfo*), fg.to_unsafe.as(LibGdk::RGBA*), success_color ? success_color.to_unsafe.as(LibGdk::RGBA*) : nil, warning_color ? warning_color.to_unsafe.as(LibGdk::RGBA*) : nil, error_color ? error_color.to_unsafe.as(LibGdk::RGBA*) : nil, cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, callback ? callback : nil, user_data ? user_data : nil)
      nil
    end

    def load_symbolic_finish(res, was_symbolic) # function
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGtk.icon_info_load_symbolic_finish(@pointer.as(LibGtk::IconInfo*), res.to_unsafe.as(LibGio::AsyncResult*), was_symbolic, pointerof(__error))
      GLib::Error.assert __error
      GdkPixbuf::Pixbuf.new(__return_value)
    end

    def load_symbolic_for_context(context, was_symbolic) # function
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGtk.icon_info_load_symbolic_for_context(@pointer.as(LibGtk::IconInfo*), context.to_unsafe.as(LibGtk::StyleContext*), was_symbolic, pointerof(__error))
      GLib::Error.assert __error
      GdkPixbuf::Pixbuf.new(__return_value)
    end

    def load_symbolic_for_context_async(context, cancellable, callback, user_data)
      LibGtk.icon_info_load_symbolic_for_context_async(@pointer.as(LibGtk::IconInfo*), context.to_unsafe.as(LibGtk::StyleContext*), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, callback ? callback : nil, user_data ? user_data : nil)
      nil
    end

    def load_symbolic_for_context_finish(res, was_symbolic) # function
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGtk.icon_info_load_symbolic_for_context_finish(@pointer.as(LibGtk::IconInfo*), res.to_unsafe.as(LibGio::AsyncResult*), was_symbolic, pointerof(__error))
      GLib::Error.assert __error
      GdkPixbuf::Pixbuf.new(__return_value)
    end

    def load_symbolic_for_style(style, state : Gtk::StateType, was_symbolic) # function
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGtk.icon_info_load_symbolic_for_style(@pointer.as(LibGtk::IconInfo*), style.to_unsafe.as(LibGtk::Style*), state, was_symbolic, pointerof(__error))
      GLib::Error.assert __error
      GdkPixbuf::Pixbuf.new(__return_value)
    end

    def raw_coordinates=(raw_coordinates)
      LibGtk.icon_info_set_raw_coordinates(@pointer.as(LibGtk::IconInfo*), raw_coordinates)
      nil
    end

  end
end

