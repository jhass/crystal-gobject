module GLib
  class BookmarkFile
    include GObject::WrappedType

    @g_lib_bookmark_file : LibGLib::BookmarkFile*?
    def initialize(@g_lib_bookmark_file : LibGLib::BookmarkFile*)
    end

    def to_unsafe
      @g_lib_bookmark_file.not_nil!
    end

    def add_application(uri, name, exec)
      __return_value = LibGLib.bookmark_file_add_application(to_unsafe.as(LibGLib::BookmarkFile*), uri.to_unsafe, name ? name.to_unsafe : nil, exec ? exec.to_unsafe : nil)
      __return_value
    end

    def add_group(uri, group)
      __return_value = LibGLib.bookmark_file_add_group(to_unsafe.as(LibGLib::BookmarkFile*), uri.to_unsafe, group.to_unsafe)
      __return_value
    end

    def free
      __return_value = LibGLib.bookmark_file_free(to_unsafe.as(LibGLib::BookmarkFile*))
      __return_value
    end

    def added(uri)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.bookmark_file_get_added(to_unsafe.as(LibGLib::BookmarkFile*), uri.to_unsafe, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def app_info(uri, name, exec, count, stamp)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.bookmark_file_get_app_info(to_unsafe.as(LibGLib::BookmarkFile*), uri.to_unsafe, name.to_unsafe, exec, count, stamp, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def applications(uri, length)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.bookmark_file_get_applications(to_unsafe.as(LibGLib::BookmarkFile*), uri.to_unsafe, length, pointerof(__error))
      GLib::Error.assert __error
      PointerIterator.new(__return_value) {|__item| (raise "Expected string but got null" unless __item; ::String.new(__item)) }
    end

    def description(uri)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.bookmark_file_get_description(to_unsafe.as(LibGLib::BookmarkFile*), uri.to_unsafe, pointerof(__error))
      GLib::Error.assert __error
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def groups(uri, length)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.bookmark_file_get_groups(to_unsafe.as(LibGLib::BookmarkFile*), uri.to_unsafe, length, pointerof(__error))
      GLib::Error.assert __error
      PointerIterator.new(__return_value) {|__item| (raise "Expected string but got null" unless __item; ::String.new(__item)) }
    end

    def icon(uri, href, mime_type)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.bookmark_file_get_icon(to_unsafe.as(LibGLib::BookmarkFile*), uri.to_unsafe, href, mime_type, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def is_private(uri)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.bookmark_file_get_is_private(to_unsafe.as(LibGLib::BookmarkFile*), uri.to_unsafe, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def mime_type(uri)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.bookmark_file_get_mime_type(to_unsafe.as(LibGLib::BookmarkFile*), uri.to_unsafe, pointerof(__error))
      GLib::Error.assert __error
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def modified(uri)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.bookmark_file_get_modified(to_unsafe.as(LibGLib::BookmarkFile*), uri.to_unsafe, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def size
      __return_value = LibGLib.bookmark_file_get_size(to_unsafe.as(LibGLib::BookmarkFile*))
      __return_value
    end

    def title(uri)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.bookmark_file_get_title(to_unsafe.as(LibGLib::BookmarkFile*), uri ? uri.to_unsafe : nil, pointerof(__error))
      GLib::Error.assert __error
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def uris(length)
      __return_value = LibGLib.bookmark_file_get_uris(to_unsafe.as(LibGLib::BookmarkFile*), length)
      PointerIterator.new(__return_value) {|__item| (raise "Expected string but got null" unless __item; ::String.new(__item)) }
    end

    def visited(uri)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.bookmark_file_get_visited(to_unsafe.as(LibGLib::BookmarkFile*), uri.to_unsafe, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def has_application(uri, name)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.bookmark_file_has_application(to_unsafe.as(LibGLib::BookmarkFile*), uri.to_unsafe, name.to_unsafe, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def has_group(uri, group)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.bookmark_file_has_group(to_unsafe.as(LibGLib::BookmarkFile*), uri.to_unsafe, group.to_unsafe, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def has_item(uri)
      __return_value = LibGLib.bookmark_file_has_item(to_unsafe.as(LibGLib::BookmarkFile*), uri.to_unsafe)
      __return_value
    end

    def load_from_data(data, length)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.bookmark_file_load_from_data(to_unsafe.as(LibGLib::BookmarkFile*), data.to_unsafe, UInt64.new(length), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def load_from_data_dirs(file, full_path)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.bookmark_file_load_from_data_dirs(to_unsafe.as(LibGLib::BookmarkFile*), file.to_unsafe, full_path ? full_path.to_unsafe : nil, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def load_from_file(filename)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.bookmark_file_load_from_file(to_unsafe.as(LibGLib::BookmarkFile*), filename.to_unsafe, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def move_item(old_uri, new_uri)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.bookmark_file_move_item(to_unsafe.as(LibGLib::BookmarkFile*), old_uri.to_unsafe, new_uri ? new_uri.to_unsafe : nil, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def remove_application(uri, name)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.bookmark_file_remove_application(to_unsafe.as(LibGLib::BookmarkFile*), uri.to_unsafe, name.to_unsafe, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def remove_group(uri, group)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.bookmark_file_remove_group(to_unsafe.as(LibGLib::BookmarkFile*), uri.to_unsafe, group.to_unsafe, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def remove_item(uri)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.bookmark_file_remove_item(to_unsafe.as(LibGLib::BookmarkFile*), uri.to_unsafe, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def set_added(uri, added)
      __return_value = LibGLib.bookmark_file_set_added(to_unsafe.as(LibGLib::BookmarkFile*), uri.to_unsafe, Int64.new(added))
      __return_value
    end

    def set_app_info(uri, name, exec, count, stamp)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.bookmark_file_set_app_info(to_unsafe.as(LibGLib::BookmarkFile*), uri.to_unsafe, name.to_unsafe, exec.to_unsafe, Int32.new(count), Int64.new(stamp), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def set_description(uri, description)
      __return_value = LibGLib.bookmark_file_set_description(to_unsafe.as(LibGLib::BookmarkFile*), uri ? uri.to_unsafe : nil, description.to_unsafe)
      __return_value
    end

    def set_groups(uri, groups, length)
      __return_value = LibGLib.bookmark_file_set_groups(to_unsafe.as(LibGLib::BookmarkFile*), uri.to_unsafe, groups ? groups.to_unsafe : nil, UInt64.new(length))
      __return_value
    end

    def set_icon(uri, href, mime_type)
      __return_value = LibGLib.bookmark_file_set_icon(to_unsafe.as(LibGLib::BookmarkFile*), uri.to_unsafe, href ? href.to_unsafe : nil, mime_type.to_unsafe)
      __return_value
    end

    def set_is_private(uri, is_private)
      __return_value = LibGLib.bookmark_file_set_is_private(to_unsafe.as(LibGLib::BookmarkFile*), uri.to_unsafe, is_private)
      __return_value
    end

    def set_mime_type(uri, mime_type)
      __return_value = LibGLib.bookmark_file_set_mime_type(to_unsafe.as(LibGLib::BookmarkFile*), uri.to_unsafe, mime_type.to_unsafe)
      __return_value
    end

    def set_modified(uri, modified)
      __return_value = LibGLib.bookmark_file_set_modified(to_unsafe.as(LibGLib::BookmarkFile*), uri.to_unsafe, Int64.new(modified))
      __return_value
    end

    def set_title(uri, title)
      __return_value = LibGLib.bookmark_file_set_title(to_unsafe.as(LibGLib::BookmarkFile*), uri ? uri.to_unsafe : nil, title.to_unsafe)
      __return_value
    end

    def set_visited(uri, visited)
      __return_value = LibGLib.bookmark_file_set_visited(to_unsafe.as(LibGLib::BookmarkFile*), uri.to_unsafe, Int64.new(visited))
      __return_value
    end

    def to_data(length)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.bookmark_file_to_data(to_unsafe.as(LibGLib::BookmarkFile*), length, pointerof(__error))
      GLib::Error.assert __error
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def to_file(filename)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.bookmark_file_to_file(to_unsafe.as(LibGLib::BookmarkFile*), filename.to_unsafe, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def self.error_quark
      __return_value = LibGLib.bookmark_file_error_quark
      __return_value
    end

  end
end

