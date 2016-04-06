module Gtk
  class IconSource
    include GObject::WrappedType

    def initialize(@gtk_icon_source)
    end

    def to_unsafe
      @gtk_icon_source.not_nil!
    end

    def self.new_internal
      __return_value = LibGtk.icon_source_new
      Gtk::IconSource.new(__return_value)
    end

    def copy
      __return_value = LibGtk.icon_source_copy((to_unsafe as LibGtk::IconSource*))
      Gtk::IconSource.new(__return_value)
    end

    def free
      __return_value = LibGtk.icon_source_free((to_unsafe as LibGtk::IconSource*))
      __return_value
    end

    def direction
      __return_value = LibGtk.icon_source_get_direction((to_unsafe as LibGtk::IconSource*))
      __return_value
    end

    def direction_wildcarded
      __return_value = LibGtk.icon_source_get_direction_wildcarded((to_unsafe as LibGtk::IconSource*))
      __return_value
    end

    def filename
      __return_value = LibGtk.icon_source_get_filename((to_unsafe as LibGtk::IconSource*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def icon_name
      __return_value = LibGtk.icon_source_get_icon_name((to_unsafe as LibGtk::IconSource*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def pixbuf
      __return_value = LibGtk.icon_source_get_pixbuf((to_unsafe as LibGtk::IconSource*))
      GdkPixbuf::Pixbuf.new(__return_value)
    end

    def size
      __return_value = LibGtk.icon_source_get_size((to_unsafe as LibGtk::IconSource*))
      __return_value
    end

    def size_wildcarded
      __return_value = LibGtk.icon_source_get_size_wildcarded((to_unsafe as LibGtk::IconSource*))
      __return_value
    end

    def state
      __return_value = LibGtk.icon_source_get_state((to_unsafe as LibGtk::IconSource*))
      __return_value
    end

    def state_wildcarded
      __return_value = LibGtk.icon_source_get_state_wildcarded((to_unsafe as LibGtk::IconSource*))
      __return_value
    end

    def direction=(direction)
      __return_value = LibGtk.icon_source_set_direction((to_unsafe as LibGtk::IconSource*), direction)
      __return_value
    end

    def direction_wildcarded=(setting)
      __return_value = LibGtk.icon_source_set_direction_wildcarded((to_unsafe as LibGtk::IconSource*), setting)
      __return_value
    end

    def filename=(filename)
      __return_value = LibGtk.icon_source_set_filename((to_unsafe as LibGtk::IconSource*), filename)
      __return_value
    end

    def icon_name=(icon_name)
      __return_value = LibGtk.icon_source_set_icon_name((to_unsafe as LibGtk::IconSource*), icon_name && icon_name)
      __return_value
    end

    def pixbuf=(pixbuf)
      __return_value = LibGtk.icon_source_set_pixbuf((to_unsafe as LibGtk::IconSource*), (pixbuf.to_unsafe as LibGdkPixbuf::Pixbuf*))
      __return_value
    end

    def size=(size)
      __return_value = LibGtk.icon_source_set_size((to_unsafe as LibGtk::IconSource*), Int32.new(size))
      __return_value
    end

    def size_wildcarded=(setting)
      __return_value = LibGtk.icon_source_set_size_wildcarded((to_unsafe as LibGtk::IconSource*), setting)
      __return_value
    end

    def state=(state)
      __return_value = LibGtk.icon_source_set_state((to_unsafe as LibGtk::IconSource*), state)
      __return_value
    end

    def state_wildcarded=(setting)
      __return_value = LibGtk.icon_source_set_state_wildcarded((to_unsafe as LibGtk::IconSource*), setting)
      __return_value
    end

  end
end

