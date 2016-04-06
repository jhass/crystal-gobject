module Gtk
  class IconSet
    include GObject::WrappedType

    def initialize(@gtk_icon_set)
    end

    def to_unsafe
      @gtk_icon_set.not_nil!
    end

    def self.new_internal
      __return_value = LibGtk.icon_set_new
      Gtk::IconSet.new(__return_value)
    end

    def self.new_from_pixbuf(pixbuf)
      __return_value = LibGtk.icon_set_new_from_pixbuf((pixbuf.to_unsafe as LibGdkPixbuf::Pixbuf*))
      Gtk::IconSet.new(__return_value)
    end

    def add_source(source)
      __return_value = LibGtk.icon_set_add_source((to_unsafe as LibGtk::IconSet*), (source.to_unsafe as LibGtk::IconSource*))
      __return_value
    end

    def copy
      __return_value = LibGtk.icon_set_copy((to_unsafe as LibGtk::IconSet*))
      Gtk::IconSet.new(__return_value)
    end

    def sizes(sizes, n_sizes)
      __return_value = LibGtk.icon_set_get_sizes((to_unsafe as LibGtk::IconSet*), sizes, Int32.new(n_sizes))
      __return_value
    end

    def ref
      __return_value = LibGtk.icon_set_ref((to_unsafe as LibGtk::IconSet*))
      Gtk::IconSet.new(__return_value)
    end

    def render_icon(style, direction, state, size, widget, detail)
      __return_value = LibGtk.icon_set_render_icon((to_unsafe as LibGtk::IconSet*), style && (style.to_unsafe as LibGtk::Style*), direction, state, Int32.new(size), widget && (widget.to_unsafe as LibGtk::Widget*), detail && detail)
      GdkPixbuf::Pixbuf.new(__return_value)
    end

    def render_icon_pixbuf(context, size)
      __return_value = LibGtk.icon_set_render_icon_pixbuf((to_unsafe as LibGtk::IconSet*), (context.to_unsafe as LibGtk::StyleContext*), Int32.new(size))
      GdkPixbuf::Pixbuf.new(__return_value)
    end

    def render_icon_surface(context, size, scale, for_window)
      __return_value = LibGtk.icon_set_render_icon_surface((to_unsafe as LibGtk::IconSet*), (context.to_unsafe as LibGtk::StyleContext*), Int32.new(size), Int32.new(scale), for_window && (for_window.to_unsafe as LibGdk::Window*))
      Cairo::Surface.new(__return_value)
    end

    def unref
      __return_value = LibGtk.icon_set_unref((to_unsafe as LibGtk::IconSet*))
      __return_value
    end

  end
end

