module Gtk
  class IconSource
    include GObject::WrappedType

    @gtk_icon_source : LibGtk::IconSource*?
    def initialize(@gtk_icon_source : LibGtk::IconSource*)
    end

    def to_unsafe
      @gtk_icon_source.not_nil!
    end

    def self.new : self
      __return_value = LibGtk.icon_source_new
      cast Gtk::IconSource.new(__return_value)
    end

    def copy
      __return_value = LibGtk.icon_source_copy(to_unsafe.as(LibGtk::IconSource*))
      Gtk::IconSource.new(__return_value)
    end

    def free
      LibGtk.icon_source_free(to_unsafe.as(LibGtk::IconSource*))
      nil
    end

    def direction
      __return_value = LibGtk.icon_source_get_direction(to_unsafe.as(LibGtk::IconSource*))
      __return_value
    end

    def direction_wildcarded
      __return_value = LibGtk.icon_source_get_direction_wildcarded(to_unsafe.as(LibGtk::IconSource*))
      __return_value
    end

    def filename
      __return_value = LibGtk.icon_source_get_filename(to_unsafe.as(LibGtk::IconSource*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def icon_name
      __return_value = LibGtk.icon_source_get_icon_name(to_unsafe.as(LibGtk::IconSource*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def pixbuf
      __return_value = LibGtk.icon_source_get_pixbuf(to_unsafe.as(LibGtk::IconSource*))
      GdkPixbuf::Pixbuf.new(__return_value)
    end

    def size
      __return_value = LibGtk.icon_source_get_size(to_unsafe.as(LibGtk::IconSource*))
      __return_value
    end

    def size_wildcarded
      __return_value = LibGtk.icon_source_get_size_wildcarded(to_unsafe.as(LibGtk::IconSource*))
      __return_value
    end

    def state
      __return_value = LibGtk.icon_source_get_state(to_unsafe.as(LibGtk::IconSource*))
      __return_value
    end

    def state_wildcarded
      __return_value = LibGtk.icon_source_get_state_wildcarded(to_unsafe.as(LibGtk::IconSource*))
      __return_value
    end

    def direction=(direction : Gtk::TextDirection)
      LibGtk.icon_source_set_direction(to_unsafe.as(LibGtk::IconSource*), direction)
      nil
    end

    def direction_wildcarded=(setting)
      LibGtk.icon_source_set_direction_wildcarded(to_unsafe.as(LibGtk::IconSource*), setting)
      nil
    end

    def filename=(filename)
      LibGtk.icon_source_set_filename(to_unsafe.as(LibGtk::IconSource*), filename.to_unsafe)
      nil
    end

    def icon_name=(icon_name)
      LibGtk.icon_source_set_icon_name(to_unsafe.as(LibGtk::IconSource*), icon_name ? icon_name.to_unsafe : nil)
      nil
    end

    def pixbuf=(pixbuf)
      LibGtk.icon_source_set_pixbuf(to_unsafe.as(LibGtk::IconSource*), pixbuf.to_unsafe.as(LibGdkPixbuf::Pixbuf*))
      nil
    end

    def size=(size)
      LibGtk.icon_source_set_size(to_unsafe.as(LibGtk::IconSource*), Int32.new(size))
      nil
    end

    def size_wildcarded=(setting)
      LibGtk.icon_source_set_size_wildcarded(to_unsafe.as(LibGtk::IconSource*), setting)
      nil
    end

    def state=(state : Gtk::StateType)
      LibGtk.icon_source_set_state(to_unsafe.as(LibGtk::IconSource*), state)
      nil
    end

    def state_wildcarded=(setting)
      LibGtk.icon_source_set_state_wildcarded(to_unsafe.as(LibGtk::IconSource*), setting)
      nil
    end

  end
end

