module Gtk
  class IconSet
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGtk::IconSet*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::IconSet*)
    end

    def self.new : self
      __return_value = LibGtk.icon_set_new
      cast Gtk::IconSet.new(__return_value)
    end

    def self.new_from_pixbuf(pixbuf) : self
      __return_value = LibGtk.icon_set_new_from_pixbuf(pixbuf.to_unsafe.as(LibGdkPixbuf::Pixbuf*))
      cast Gtk::IconSet.new(__return_value)
    end

    def add_source(source)
      LibGtk.icon_set_add_source(@pointer.as(LibGtk::IconSet*), source.to_unsafe.as(LibGtk::IconSource*))
      nil
    end

    def copy
      __return_value = LibGtk.icon_set_copy(@pointer.as(LibGtk::IconSet*))
      Gtk::IconSet.new(__return_value)
    end

    def sizes(sizes, n_sizes)
      LibGtk.icon_set_get_sizes(@pointer.as(LibGtk::IconSet*), sizes, n_sizes)
      nil
    end

    def ref
      __return_value = LibGtk.icon_set_ref(@pointer.as(LibGtk::IconSet*))
      Gtk::IconSet.new(__return_value)
    end

    def render_icon(style, direction : Gtk::TextDirection, state : Gtk::StateType, size, widget, detail)
      __return_value = LibGtk.icon_set_render_icon(@pointer.as(LibGtk::IconSet*), style ? style.to_unsafe.as(LibGtk::Style*) : nil, direction, state, Int32.new(size), widget ? widget.to_unsafe.as(LibGtk::Widget*) : nil, detail ? detail.to_unsafe : nil)
      GdkPixbuf::Pixbuf.new(__return_value)
    end

    def render_icon_pixbuf(context, size)
      __return_value = LibGtk.icon_set_render_icon_pixbuf(@pointer.as(LibGtk::IconSet*), context.to_unsafe.as(LibGtk::StyleContext*), Int32.new(size))
      GdkPixbuf::Pixbuf.new(__return_value)
    end

    def render_icon_surface(context, size, scale, for_window)
      __return_value = LibGtk.icon_set_render_icon_surface(@pointer.as(LibGtk::IconSet*), context.to_unsafe.as(LibGtk::StyleContext*), Int32.new(size), Int32.new(scale), for_window ? for_window.to_unsafe.as(LibGdk::Window*) : nil)
      Cairo::Surface.new(__return_value)
    end

    def unref
      LibGtk.icon_set_unref(@pointer.as(LibGtk::IconSet*))
      nil
    end

  end
end

