module Gtk
  class RecentInfo
    include GObject::WrappedType

    def initialize(@gtk_recent_info)
    end

    def to_unsafe
      @gtk_recent_info.not_nil!
    end

    def create_app_info(app_name)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGtk.recent_info_create_app_info((to_unsafe as LibGtk::RecentInfo*), app_name && app_name, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def exists
      __return_value = LibGtk.recent_info_exists((to_unsafe as LibGtk::RecentInfo*))
      __return_value
    end

    def added
      __return_value = LibGtk.recent_info_get_added((to_unsafe as LibGtk::RecentInfo*))
      __return_value
    end

    def age
      __return_value = LibGtk.recent_info_get_age((to_unsafe as LibGtk::RecentInfo*))
      __return_value
    end

    def application_info(app_name, app_exec, count, time)
      __return_value = LibGtk.recent_info_get_application_info((to_unsafe as LibGtk::RecentInfo*), app_name, app_exec, UInt32.new(count), Int64.new(time))
      __return_value
    end

    def applications(length)
      __return_value = LibGtk.recent_info_get_applications((to_unsafe as LibGtk::RecentInfo*), UInt64.new(length))
      PointerIterator.new(__return_value) {|__item| (raise "Expected string but got null" unless __item; ::String.new(__item)) }
    end

    def description
      __return_value = LibGtk.recent_info_get_description((to_unsafe as LibGtk::RecentInfo*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def display_name
      __return_value = LibGtk.recent_info_get_display_name((to_unsafe as LibGtk::RecentInfo*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def gicon
      __return_value = LibGtk.recent_info_get_gicon((to_unsafe as LibGtk::RecentInfo*))
      __return_value
    end

    def groups(length)
      __return_value = LibGtk.recent_info_get_groups((to_unsafe as LibGtk::RecentInfo*), UInt64.new(length))
      PointerIterator.new(__return_value) {|__item| (raise "Expected string but got null" unless __item; ::String.new(__item)) }
    end

    def icon(size)
      __return_value = LibGtk.recent_info_get_icon((to_unsafe as LibGtk::RecentInfo*), Int32.new(size))
      GdkPixbuf::Pixbuf.new(__return_value)
    end

    def mime_type
      __return_value = LibGtk.recent_info_get_mime_type((to_unsafe as LibGtk::RecentInfo*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def modified
      __return_value = LibGtk.recent_info_get_modified((to_unsafe as LibGtk::RecentInfo*))
      __return_value
    end

    def private_hint
      __return_value = LibGtk.recent_info_get_private_hint((to_unsafe as LibGtk::RecentInfo*))
      __return_value
    end

    def short_name
      __return_value = LibGtk.recent_info_get_short_name((to_unsafe as LibGtk::RecentInfo*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def uri
      __return_value = LibGtk.recent_info_get_uri((to_unsafe as LibGtk::RecentInfo*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def uri_display
      __return_value = LibGtk.recent_info_get_uri_display((to_unsafe as LibGtk::RecentInfo*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def visited
      __return_value = LibGtk.recent_info_get_visited((to_unsafe as LibGtk::RecentInfo*))
      __return_value
    end

    def has_application(app_name)
      __return_value = LibGtk.recent_info_has_application((to_unsafe as LibGtk::RecentInfo*), app_name)
      __return_value
    end

    def has_group(group_name)
      __return_value = LibGtk.recent_info_has_group((to_unsafe as LibGtk::RecentInfo*), group_name)
      __return_value
    end

    def local?
      __return_value = LibGtk.recent_info_is_local((to_unsafe as LibGtk::RecentInfo*))
      __return_value
    end

    def last_application
      __return_value = LibGtk.recent_info_last_application((to_unsafe as LibGtk::RecentInfo*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def match(info_b)
      __return_value = LibGtk.recent_info_match((to_unsafe as LibGtk::RecentInfo*), (info_b.to_unsafe as LibGtk::RecentInfo*))
      __return_value
    end

    def ref
      __return_value = LibGtk.recent_info_ref((to_unsafe as LibGtk::RecentInfo*))
      Gtk::RecentInfo.new(__return_value)
    end

    def unref
      __return_value = LibGtk.recent_info_unref((to_unsafe as LibGtk::RecentInfo*))
      __return_value
    end

  end
end

