module Gtk
  class FileFilter < GObject::InitiallyUnowned
    def initialize(@gtk_file_filter)
    end

    def to_unsafe
      @gtk_file_filter.not_nil!
    end

    # Implements Buildable
    def self.new_internal
      __return_value = LibGtk.file_filter_new
      Gtk::FileFilter.new(__return_value)
    end

    def add_custom(needed, func : LibGtk::FileFilterFunc, data, notify : LibGLib::DestroyNotify)
      __return_value = LibGtk.file_filter_add_custom((to_unsafe as LibGtk::FileFilter*), needed, func, data, notify)
      __return_value
    end

    def add_mime_type(mime_type)
      __return_value = LibGtk.file_filter_add_mime_type((to_unsafe as LibGtk::FileFilter*), mime_type)
      __return_value
    end

    def add_pattern(pattern)
      __return_value = LibGtk.file_filter_add_pattern((to_unsafe as LibGtk::FileFilter*), pattern)
      __return_value
    end

    def add_pixbuf_formats
      __return_value = LibGtk.file_filter_add_pixbuf_formats((to_unsafe as LibGtk::FileFilter*))
      __return_value
    end

    def filter(filter_info)
      __return_value = LibGtk.file_filter_filter((to_unsafe as LibGtk::FileFilter*), (filter_info.to_unsafe as LibGtk::FileFilterInfo*))
      __return_value
    end

    def name
      __return_value = LibGtk.file_filter_get_name((to_unsafe as LibGtk::FileFilter*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def needed
      __return_value = LibGtk.file_filter_get_needed((to_unsafe as LibGtk::FileFilter*))
      __return_value
    end

    def name=(name)
      __return_value = LibGtk.file_filter_set_name((to_unsafe as LibGtk::FileFilter*), name && name)
      __return_value
    end

  end
end

