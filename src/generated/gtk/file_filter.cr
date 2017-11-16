module Gtk
  class FileFilter < GObject::InitiallyUnowned
    @pointer : Void*
    def initialize(pointer : LibGtk::FileFilter*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::FileFilter*)
    end

    # Implements Buildable
    def self.new : self
      __return_value = LibGtk.file_filter_new
      cast Gtk::FileFilter.new(__return_value)
    end

    def self.new_from_gvariant(variant) : self
      __return_value = LibGtk.file_filter_new_from_gvariant(variant.to_unsafe.as(LibGLib::Variant*))
      cast Gtk::FileFilter.new(__return_value)
    end

    def add_custom(needed : Gtk::FileFilterFlags, func, data, notify)
      LibGtk.file_filter_add_custom(@pointer.as(LibGtk::FileFilter*), needed, func, data ? data : nil, notify)
      nil
    end

    def add_mime_type(mime_type)
      LibGtk.file_filter_add_mime_type(@pointer.as(LibGtk::FileFilter*), mime_type.to_unsafe)
      nil
    end

    def add_pattern(pattern)
      LibGtk.file_filter_add_pattern(@pointer.as(LibGtk::FileFilter*), pattern.to_unsafe)
      nil
    end

    def add_pixbuf_formats
      LibGtk.file_filter_add_pixbuf_formats(@pointer.as(LibGtk::FileFilter*))
      nil
    end

    def filter(filter_info)
      __return_value = LibGtk.file_filter_filter(@pointer.as(LibGtk::FileFilter*), filter_info.to_unsafe.as(LibGtk::FileFilterInfo*))
      __return_value
    end

    def name
      __return_value = LibGtk.file_filter_get_name(@pointer.as(LibGtk::FileFilter*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value)) if __return_value
    end

    def needed
      __return_value = LibGtk.file_filter_get_needed(@pointer.as(LibGtk::FileFilter*))
      __return_value
    end

    def name=(name)
      LibGtk.file_filter_set_name(@pointer.as(LibGtk::FileFilter*), name ? name.to_unsafe : nil)
      nil
    end

    def to_gvariant
      __return_value = LibGtk.file_filter_to_gvariant(@pointer.as(LibGtk::FileFilter*))
      GLib::Variant.new(__return_value)
    end

  end
end

