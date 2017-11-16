module Gtk
  class IconSource
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGtk::IconSource*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::IconSource*)
    end

    def self.new : self
      __return_value = LibGtk.icon_source_new
      cast Gtk::IconSource.new(__return_value)
    end

    def copy
      __return_value = LibGtk.icon_source_copy(@pointer.as(LibGtk::IconSource*))
      Gtk::IconSource.new(__return_value)
    end

    def free
      LibGtk.icon_source_free(@pointer.as(LibGtk::IconSource*))
      nil
    end

    def direction
      __return_value = LibGtk.icon_source_get_direction(@pointer.as(LibGtk::IconSource*))
      __return_value
    end

    def direction_wildcarded
      __return_value = LibGtk.icon_source_get_direction_wildcarded(@pointer.as(LibGtk::IconSource*))
      __return_value
    end

    def filename
      __return_value = LibGtk.icon_source_get_filename(@pointer.as(LibGtk::IconSource*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def icon_name
      __return_value = LibGtk.icon_source_get_icon_name(@pointer.as(LibGtk::IconSource*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def pixbuf
      __return_value = LibGtk.icon_source_get_pixbuf(@pointer.as(LibGtk::IconSource*))
      GdkPixbuf::Pixbuf.new(__return_value)
    end

    def size
      __return_value = LibGtk.icon_source_get_size(@pointer.as(LibGtk::IconSource*))
      __return_value
    end

    def size_wildcarded
      __return_value = LibGtk.icon_source_get_size_wildcarded(@pointer.as(LibGtk::IconSource*))
      __return_value
    end

    def state
      __return_value = LibGtk.icon_source_get_state(@pointer.as(LibGtk::IconSource*))
      __return_value
    end

    def state_wildcarded
      __return_value = LibGtk.icon_source_get_state_wildcarded(@pointer.as(LibGtk::IconSource*))
      __return_value
    end

    def direction=(direction : Gtk::TextDirection)
      LibGtk.icon_source_set_direction(@pointer.as(LibGtk::IconSource*), direction)
      nil
    end

    def direction_wildcarded=(setting)
      LibGtk.icon_source_set_direction_wildcarded(@pointer.as(LibGtk::IconSource*), setting)
      nil
    end

    def filename=(filename)
      LibGtk.icon_source_set_filename(@pointer.as(LibGtk::IconSource*), filename.to_unsafe)
      nil
    end

    def icon_name=(icon_name)
      LibGtk.icon_source_set_icon_name(@pointer.as(LibGtk::IconSource*), icon_name ? icon_name.to_unsafe : nil)
      nil
    end

    def pixbuf=(pixbuf)
      LibGtk.icon_source_set_pixbuf(@pointer.as(LibGtk::IconSource*), pixbuf.to_unsafe.as(LibGdkPixbuf::Pixbuf*))
      nil
    end

    def size=(size)
      LibGtk.icon_source_set_size(@pointer.as(LibGtk::IconSource*), Int32.new(size))
      nil
    end

    def size_wildcarded=(setting)
      LibGtk.icon_source_set_size_wildcarded(@pointer.as(LibGtk::IconSource*), setting)
      nil
    end

    def state=(state : Gtk::StateType)
      LibGtk.icon_source_set_state(@pointer.as(LibGtk::IconSource*), state)
      nil
    end

    def state_wildcarded=(setting)
      LibGtk.icon_source_set_state_wildcarded(@pointer.as(LibGtk::IconSource*), setting)
      nil
    end

  end
end

