module GLib
  class BookmarkFile
    include GObject::WrappedType

    def initialize @g_lib_bookmark_file
    end

    def to_unsafe
      @g_lib_bookmark_file.not_nil!
    end

    def add_application(uri, name, exec)
      __return_value = LibGLib.bookmark_file_add_application((to_unsafe as LibGLib::BookmarkFile*), uri, name && name, exec && exec)
      __return_value
    end

    def add_group(uri, group)
      __return_value = LibGLib.bookmark_file_add_group((to_unsafe as LibGLib::BookmarkFile*), uri, group)
      __return_value
    end

    def free
      __return_value = LibGLib.bookmark_file_free((to_unsafe as LibGLib::BookmarkFile*))
      __return_value
    end

    def added(uri)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.bookmark_file_get_added((to_unsafe as LibGLib::BookmarkFile*), uri, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def app_info(uri, name, exec, count, stamp)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.bookmark_file_get_app_info((to_unsafe as LibGLib::BookmarkFile*), uri, name, exec, UInt32.cast(count), Int64.cast(stamp), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def applications(uri, length)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.bookmark_file_get_applications((to_unsafe as LibGLib::BookmarkFile*), uri, UInt64.cast(length), pointerof(__error))
      GLib::Error.assert __error
      PointerIterator.new(__return_value) {|__item_97| raise "Expected string but got null" unless __item_97; String.new(__item_97) }
    end

    def description(uri)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.bookmark_file_get_description((to_unsafe as LibGLib::BookmarkFile*), uri, pointerof(__error))
      GLib::Error.assert __error
      raise "Expected string but got null" unless __return_value; String.new(__return_value)
    end

    def groups(uri, length)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.bookmark_file_get_groups((to_unsafe as LibGLib::BookmarkFile*), uri, UInt64.cast(length), pointerof(__error))
      GLib::Error.assert __error
      PointerIterator.new(__return_value) {|__item_95| raise "Expected string but got null" unless __item_95; String.new(__item_95) }
    end

    def icon(uri, href, mime_type)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.bookmark_file_get_icon((to_unsafe as LibGLib::BookmarkFile*), uri, href, mime_type, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def is_private(uri)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.bookmark_file_get_is_private((to_unsafe as LibGLib::BookmarkFile*), uri, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def mime_type(uri)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.bookmark_file_get_mime_type((to_unsafe as LibGLib::BookmarkFile*), uri, pointerof(__error))
      GLib::Error.assert __error
      raise "Expected string but got null" unless __return_value; String.new(__return_value)
    end

    def modified(uri)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.bookmark_file_get_modified((to_unsafe as LibGLib::BookmarkFile*), uri, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def size
      __return_value = LibGLib.bookmark_file_get_size((to_unsafe as LibGLib::BookmarkFile*))
      __return_value
    end

    def title(uri)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.bookmark_file_get_title((to_unsafe as LibGLib::BookmarkFile*), uri && uri, pointerof(__error))
      GLib::Error.assert __error
      raise "Expected string but got null" unless __return_value; String.new(__return_value)
    end

    def uris(length)
      __return_value = LibGLib.bookmark_file_get_uris((to_unsafe as LibGLib::BookmarkFile*), UInt64.cast(length))
      PointerIterator.new(__return_value) {|__item_2| raise "Expected string but got null" unless __item_2; String.new(__item_2) }
    end

    def visited(uri)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.bookmark_file_get_visited((to_unsafe as LibGLib::BookmarkFile*), uri, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def has_application(uri, name)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.bookmark_file_has_application((to_unsafe as LibGLib::BookmarkFile*), uri, name, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def has_group(uri, group)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.bookmark_file_has_group((to_unsafe as LibGLib::BookmarkFile*), uri, group, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def has_item(uri)
      __return_value = LibGLib.bookmark_file_has_item((to_unsafe as LibGLib::BookmarkFile*), uri)
      __return_value
    end

    def load_from_data(data, length)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.bookmark_file_load_from_data((to_unsafe as LibGLib::BookmarkFile*), data, UInt64.cast(length), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def load_from_data_dirs(file, full_path)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.bookmark_file_load_from_data_dirs((to_unsafe as LibGLib::BookmarkFile*), file, full_path && full_path, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def load_from_file(filename)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.bookmark_file_load_from_file((to_unsafe as LibGLib::BookmarkFile*), filename, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def move_item(old_uri, new_uri)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.bookmark_file_move_item((to_unsafe as LibGLib::BookmarkFile*), old_uri, new_uri && new_uri, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def remove_application(uri, name)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.bookmark_file_remove_application((to_unsafe as LibGLib::BookmarkFile*), uri, name, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def remove_group(uri, group)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.bookmark_file_remove_group((to_unsafe as LibGLib::BookmarkFile*), uri, group, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def remove_item(uri)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.bookmark_file_remove_item((to_unsafe as LibGLib::BookmarkFile*), uri, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def set_added(uri, added)
      __return_value = LibGLib.bookmark_file_set_added((to_unsafe as LibGLib::BookmarkFile*), uri, Int64.cast(added))
      __return_value
    end

    def set_app_info(uri, name, exec, count, stamp)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.bookmark_file_set_app_info((to_unsafe as LibGLib::BookmarkFile*), uri, name, exec, Int32.cast(count), Int64.cast(stamp), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def set_description(uri, description)
      __return_value = LibGLib.bookmark_file_set_description((to_unsafe as LibGLib::BookmarkFile*), uri && uri, description)
      __return_value
    end

    def set_groups(uri, groups, length)
      __return_value = LibGLib.bookmark_file_set_groups((to_unsafe as LibGLib::BookmarkFile*), uri, groups && groups, UInt64.cast(length))
      __return_value
    end

    def set_icon(uri, href, mime_type)
      __return_value = LibGLib.bookmark_file_set_icon((to_unsafe as LibGLib::BookmarkFile*), uri, href && href, mime_type)
      __return_value
    end

    def set_is_private(uri, is_private)
      __return_value = LibGLib.bookmark_file_set_is_private((to_unsafe as LibGLib::BookmarkFile*), uri, Bool.cast(is_private))
      __return_value
    end

    def set_mime_type(uri, mime_type)
      __return_value = LibGLib.bookmark_file_set_mime_type((to_unsafe as LibGLib::BookmarkFile*), uri, mime_type)
      __return_value
    end

    def set_modified(uri, modified)
      __return_value = LibGLib.bookmark_file_set_modified((to_unsafe as LibGLib::BookmarkFile*), uri, Int64.cast(modified))
      __return_value
    end

    def set_title(uri, title)
      __return_value = LibGLib.bookmark_file_set_title((to_unsafe as LibGLib::BookmarkFile*), uri && uri, title)
      __return_value
    end

    def set_visited(uri, visited)
      __return_value = LibGLib.bookmark_file_set_visited((to_unsafe as LibGLib::BookmarkFile*), uri, Int64.cast(visited))
      __return_value
    end

    def to_data(length)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.bookmark_file_to_data((to_unsafe as LibGLib::BookmarkFile*), UInt64.cast(length), pointerof(__error))
      GLib::Error.assert __error
      raise "Expected string but got null" unless __return_value; String.new(__return_value)
    end

    def to_file(filename)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.bookmark_file_to_file((to_unsafe as LibGLib::BookmarkFile*), filename, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def self.error_quark
      __return_value = LibGLib.bookmark_file_error_quark
      __return_value
    end

  end
end

