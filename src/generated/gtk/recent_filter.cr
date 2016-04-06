module Gtk
  class RecentFilter < GObject::InitiallyUnowned
    def initialize(@gtk_recent_filter)
    end

    def to_unsafe
      @gtk_recent_filter.not_nil!
    end

    # Implements Buildable
    def self.new_internal
      __return_value = LibGtk.recent_filter_new
      Gtk::RecentFilter.new(__return_value)
    end

    def add_age(days)
      __return_value = LibGtk.recent_filter_add_age((to_unsafe as LibGtk::RecentFilter*), Int32.new(days))
      __return_value
    end

    def add_application(application)
      __return_value = LibGtk.recent_filter_add_application((to_unsafe as LibGtk::RecentFilter*), application)
      __return_value
    end

    def add_custom(needed, func : LibGtk::RecentFilterFunc, data, data_destroy : LibGLib::DestroyNotify)
      __return_value = LibGtk.recent_filter_add_custom((to_unsafe as LibGtk::RecentFilter*), needed, func, data, data_destroy)
      __return_value
    end

    def add_group(group)
      __return_value = LibGtk.recent_filter_add_group((to_unsafe as LibGtk::RecentFilter*), group)
      __return_value
    end

    def add_mime_type(mime_type)
      __return_value = LibGtk.recent_filter_add_mime_type((to_unsafe as LibGtk::RecentFilter*), mime_type)
      __return_value
    end

    def add_pattern(pattern)
      __return_value = LibGtk.recent_filter_add_pattern((to_unsafe as LibGtk::RecentFilter*), pattern)
      __return_value
    end

    def add_pixbuf_formats
      __return_value = LibGtk.recent_filter_add_pixbuf_formats((to_unsafe as LibGtk::RecentFilter*))
      __return_value
    end

    def filter(filter_info)
      __return_value = LibGtk.recent_filter_filter((to_unsafe as LibGtk::RecentFilter*), (filter_info.to_unsafe as LibGtk::RecentFilterInfo*))
      __return_value
    end

    def name
      __return_value = LibGtk.recent_filter_get_name((to_unsafe as LibGtk::RecentFilter*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def needed
      __return_value = LibGtk.recent_filter_get_needed((to_unsafe as LibGtk::RecentFilter*))
      __return_value
    end

    def name=(name)
      __return_value = LibGtk.recent_filter_set_name((to_unsafe as LibGtk::RecentFilter*), name)
      __return_value
    end

  end
end

