module Gtk
  class RecentFilter < GObject::InitiallyUnowned
    @gtk_recent_filter : LibGtk::RecentFilter*?
    def initialize(@gtk_recent_filter : LibGtk::RecentFilter*)
    end

    def to_unsafe
      @gtk_recent_filter.not_nil!
    end

    # Implements Buildable
    def self.new : self
      __return_value = LibGtk.recent_filter_new
      cast Gtk::RecentFilter.new(__return_value)
    end

    def add_age(days)
      LibGtk.recent_filter_add_age(to_unsafe.as(LibGtk::RecentFilter*), Int32.new(days))
      nil
    end

    def add_application(application)
      LibGtk.recent_filter_add_application(to_unsafe.as(LibGtk::RecentFilter*), application.to_unsafe)
      nil
    end

    def add_custom(needed : Gtk::RecentFilterFlags, func, data, data_destroy)
      LibGtk.recent_filter_add_custom(to_unsafe.as(LibGtk::RecentFilter*), needed, func, data ? data : nil, data_destroy)
      nil
    end

    def add_group(group)
      LibGtk.recent_filter_add_group(to_unsafe.as(LibGtk::RecentFilter*), group.to_unsafe)
      nil
    end

    def add_mime_type(mime_type)
      LibGtk.recent_filter_add_mime_type(to_unsafe.as(LibGtk::RecentFilter*), mime_type.to_unsafe)
      nil
    end

    def add_pattern(pattern)
      LibGtk.recent_filter_add_pattern(to_unsafe.as(LibGtk::RecentFilter*), pattern.to_unsafe)
      nil
    end

    def add_pixbuf_formats
      LibGtk.recent_filter_add_pixbuf_formats(to_unsafe.as(LibGtk::RecentFilter*))
      nil
    end

    def filter(filter_info)
      __return_value = LibGtk.recent_filter_filter(to_unsafe.as(LibGtk::RecentFilter*), filter_info.to_unsafe.as(LibGtk::RecentFilterInfo*))
      __return_value
    end

    def name
      __return_value = LibGtk.recent_filter_get_name(to_unsafe.as(LibGtk::RecentFilter*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value)) if __return_value
    end

    def needed
      __return_value = LibGtk.recent_filter_get_needed(to_unsafe.as(LibGtk::RecentFilter*))
      __return_value
    end

    def name=(name)
      LibGtk.recent_filter_set_name(to_unsafe.as(LibGtk::RecentFilter*), name.to_unsafe)
      nil
    end

  end
end

