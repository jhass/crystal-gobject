module Gtk
  class IconInfo < GObject::Object
    def initialize(@gtk_icon_info)
    end

    def to_unsafe
      @gtk_icon_info.not_nil!
    end

    def self.new_for_pixbuf(icon_theme, pixbuf)
      __return_value = LibGtk.icon_info_new_for_pixbuf((icon_theme.to_unsafe as LibGtk::IconTheme*), (pixbuf.to_unsafe as LibGdkPixbuf::Pixbuf*))
      Gtk::IconInfo.new(__return_value)
    end

    def attach_points(points, n_points)
      __return_value = LibGtk.icon_info_get_attach_points((to_unsafe as LibGtk::IconInfo*), points, Int32.new(n_points))
      __return_value
    end

    def base_scale
      __return_value = LibGtk.icon_info_get_base_scale((to_unsafe as LibGtk::IconInfo*))
      __return_value
    end

    def base_size
      __return_value = LibGtk.icon_info_get_base_size((to_unsafe as LibGtk::IconInfo*))
      __return_value
    end

    def builtin_pixbuf
      __return_value = LibGtk.icon_info_get_builtin_pixbuf((to_unsafe as LibGtk::IconInfo*))
      GdkPixbuf::Pixbuf.new(__return_value)
    end

    def display_name
      __return_value = LibGtk.icon_info_get_display_name((to_unsafe as LibGtk::IconInfo*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def embedded_rect(rectangle)
      __return_value = LibGtk.icon_info_get_embedded_rect((to_unsafe as LibGtk::IconInfo*), rectangle)
      __return_value
    end

    def filename
      __return_value = LibGtk.icon_info_get_filename((to_unsafe as LibGtk::IconInfo*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def symbolic?
      __return_value = LibGtk.icon_info_is_symbolic((to_unsafe as LibGtk::IconInfo*))
      __return_value
    end

    def load_icon
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGtk.icon_info_load_icon((to_unsafe as LibGtk::IconInfo*), pointerof(__error))
      GLib::Error.assert __error
      GdkPixbuf::Pixbuf.new(__return_value)
    end

    def load_icon_async(cancellable, callback : LibGio::AsyncReadyCallback?, user_data)
      __return_value = LibGtk.icon_info_load_icon_async((to_unsafe as LibGtk::IconInfo*), cancellable && (cancellable.to_unsafe as LibGio::Cancellable*), callback && callback, user_data)
      __return_value
    end

    def load_icon_finish(res)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGtk.icon_info_load_icon_finish((to_unsafe as LibGtk::IconInfo*), (res.to_unsafe as LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      GdkPixbuf::Pixbuf.new(__return_value)
    end

    def load_surface(for_window)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGtk.icon_info_load_surface((to_unsafe as LibGtk::IconInfo*), for_window && (for_window.to_unsafe as LibGdk::Window*), pointerof(__error))
      GLib::Error.assert __error
      Cairo::Surface.new(__return_value)
    end

    def load_symbolic(fg, success_color, warning_color, error_color, was_symbolic)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGtk.icon_info_load_symbolic((to_unsafe as LibGtk::IconInfo*), (fg.to_unsafe as LibGdk::RGBA*), success_color && (success_color.to_unsafe as LibGdk::RGBA*), warning_color && (warning_color.to_unsafe as LibGdk::RGBA*), error_color && (error_color.to_unsafe as LibGdk::RGBA*), was_symbolic, pointerof(__error))
      GLib::Error.assert __error
      GdkPixbuf::Pixbuf.new(__return_value)
    end

    def load_symbolic_async(fg, success_color, warning_color, error_color, cancellable, callback : LibGio::AsyncReadyCallback?, user_data)
      __return_value = LibGtk.icon_info_load_symbolic_async((to_unsafe as LibGtk::IconInfo*), (fg.to_unsafe as LibGdk::RGBA*), success_color && (success_color.to_unsafe as LibGdk::RGBA*), warning_color && (warning_color.to_unsafe as LibGdk::RGBA*), error_color && (error_color.to_unsafe as LibGdk::RGBA*), cancellable && (cancellable.to_unsafe as LibGio::Cancellable*), callback && callback, user_data)
      __return_value
    end

    def load_symbolic_finish(res, was_symbolic)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGtk.icon_info_load_symbolic_finish((to_unsafe as LibGtk::IconInfo*), (res.to_unsafe as LibGio::AsyncResult*), was_symbolic, pointerof(__error))
      GLib::Error.assert __error
      GdkPixbuf::Pixbuf.new(__return_value)
    end

    def load_symbolic_for_context(context, was_symbolic)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGtk.icon_info_load_symbolic_for_context((to_unsafe as LibGtk::IconInfo*), (context.to_unsafe as LibGtk::StyleContext*), was_symbolic, pointerof(__error))
      GLib::Error.assert __error
      GdkPixbuf::Pixbuf.new(__return_value)
    end

    def load_symbolic_for_context_async(context, cancellable, callback : LibGio::AsyncReadyCallback?, user_data)
      __return_value = LibGtk.icon_info_load_symbolic_for_context_async((to_unsafe as LibGtk::IconInfo*), (context.to_unsafe as LibGtk::StyleContext*), cancellable && (cancellable.to_unsafe as LibGio::Cancellable*), callback && callback, user_data)
      __return_value
    end

    def load_symbolic_for_context_finish(res, was_symbolic)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGtk.icon_info_load_symbolic_for_context_finish((to_unsafe as LibGtk::IconInfo*), (res.to_unsafe as LibGio::AsyncResult*), was_symbolic, pointerof(__error))
      GLib::Error.assert __error
      GdkPixbuf::Pixbuf.new(__return_value)
    end

    def load_symbolic_for_style(style, state, was_symbolic)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGtk.icon_info_load_symbolic_for_style((to_unsafe as LibGtk::IconInfo*), (style.to_unsafe as LibGtk::Style*), state, was_symbolic, pointerof(__error))
      GLib::Error.assert __error
      GdkPixbuf::Pixbuf.new(__return_value)
    end

    def raw_coordinates=(raw_coordinates)
      __return_value = LibGtk.icon_info_set_raw_coordinates((to_unsafe as LibGtk::IconInfo*), raw_coordinates)
      __return_value
    end

  end
end

