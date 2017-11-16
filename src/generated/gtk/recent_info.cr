module Gtk
  class RecentInfo
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGtk::RecentInfo*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::RecentInfo*)
    end

    def create_app_info(app_name) # function
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGtk.recent_info_create_app_info(@pointer.as(LibGtk::RecentInfo*), app_name ? app_name.to_unsafe : nil, pointerof(__error))
      GLib::Error.assert __error
      __return_value if __return_value
    end

    def exists
      __return_value = LibGtk.recent_info_exists(@pointer.as(LibGtk::RecentInfo*))
      __return_value
    end

    def added
      __return_value = LibGtk.recent_info_get_added(@pointer.as(LibGtk::RecentInfo*))
      __return_value
    end

    def age
      __return_value = LibGtk.recent_info_get_age(@pointer.as(LibGtk::RecentInfo*))
      __return_value
    end

    def application_info(app_name, app_exec, count, time)
      __return_value = LibGtk.recent_info_get_application_info(@pointer.as(LibGtk::RecentInfo*), app_name.to_unsafe, app_exec, count, time)
      __return_value
    end

    def applications(length)
      __return_value = LibGtk.recent_info_get_applications(@pointer.as(LibGtk::RecentInfo*), length)
      PointerIterator.new(__return_value) {|__item| (raise "Expected string but got null" unless __item; ::String.new(__item)) }
    end

    def description
      __return_value = LibGtk.recent_info_get_description(@pointer.as(LibGtk::RecentInfo*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def display_name
      __return_value = LibGtk.recent_info_get_display_name(@pointer.as(LibGtk::RecentInfo*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def gicon
      __return_value = LibGtk.recent_info_get_gicon(@pointer.as(LibGtk::RecentInfo*))
      __return_value if __return_value
    end

    def groups(length)
      __return_value = LibGtk.recent_info_get_groups(@pointer.as(LibGtk::RecentInfo*), length)
      PointerIterator.new(__return_value) {|__item| (raise "Expected string but got null" unless __item; ::String.new(__item)) }
    end

    def icon(size)
      __return_value = LibGtk.recent_info_get_icon(@pointer.as(LibGtk::RecentInfo*), Int32.new(size))
      GdkPixbuf::Pixbuf.new(__return_value) if __return_value
    end

    def mime_type
      __return_value = LibGtk.recent_info_get_mime_type(@pointer.as(LibGtk::RecentInfo*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def modified
      __return_value = LibGtk.recent_info_get_modified(@pointer.as(LibGtk::RecentInfo*))
      __return_value
    end

    def private_hint
      __return_value = LibGtk.recent_info_get_private_hint(@pointer.as(LibGtk::RecentInfo*))
      __return_value
    end

    def short_name
      __return_value = LibGtk.recent_info_get_short_name(@pointer.as(LibGtk::RecentInfo*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def uri
      __return_value = LibGtk.recent_info_get_uri(@pointer.as(LibGtk::RecentInfo*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def uri_display
      __return_value = LibGtk.recent_info_get_uri_display(@pointer.as(LibGtk::RecentInfo*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value)) if __return_value
    end

    def visited
      __return_value = LibGtk.recent_info_get_visited(@pointer.as(LibGtk::RecentInfo*))
      __return_value
    end

    def has_application(app_name)
      __return_value = LibGtk.recent_info_has_application(@pointer.as(LibGtk::RecentInfo*), app_name.to_unsafe)
      __return_value
    end

    def has_group(group_name)
      __return_value = LibGtk.recent_info_has_group(@pointer.as(LibGtk::RecentInfo*), group_name.to_unsafe)
      __return_value
    end

    def local?
      __return_value = LibGtk.recent_info_is_local(@pointer.as(LibGtk::RecentInfo*))
      __return_value
    end

    def last_application
      __return_value = LibGtk.recent_info_last_application(@pointer.as(LibGtk::RecentInfo*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def match(info_b)
      __return_value = LibGtk.recent_info_match(@pointer.as(LibGtk::RecentInfo*), info_b.to_unsafe.as(LibGtk::RecentInfo*))
      __return_value
    end

    def ref
      __return_value = LibGtk.recent_info_ref(@pointer.as(LibGtk::RecentInfo*))
      Gtk::RecentInfo.new(__return_value)
    end

    def unref
      LibGtk.recent_info_unref(@pointer.as(LibGtk::RecentInfo*))
      nil
    end

  end
end

