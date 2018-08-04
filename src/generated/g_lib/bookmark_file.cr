module GLib
  class BookmarkFile
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGLib::BookmarkFile*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGLib::BookmarkFile*)
    end

    def add_application(uri, name, exec)
      LibGLib.bookmark_file_add_application(@pointer.as(LibGLib::BookmarkFile*), uri.to_unsafe, name ? name.to_unsafe : nil, exec ? exec.to_unsafe : nil)
      nil
    end

    def add_group(uri, group)
      LibGLib.bookmark_file_add_group(@pointer.as(LibGLib::BookmarkFile*), uri.to_unsafe, group.to_unsafe)
      nil
    end

    def free
      LibGLib.bookmark_file_free(@pointer.as(LibGLib::BookmarkFile*))
      nil
    end

    def added(uri)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.bookmark_file_get_added(@pointer.as(LibGLib::BookmarkFile*), uri.to_unsafe, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def app_info(uri, name, exec, count, stamp)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.bookmark_file_get_app_info(@pointer.as(LibGLib::BookmarkFile*), uri.to_unsafe, name.to_unsafe, exec, count, stamp, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def applications(uri, length)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.bookmark_file_get_applications(@pointer.as(LibGLib::BookmarkFile*), uri.to_unsafe, length, pointerof(__error))
      GLib::Error.assert __error
      PointerIterator.new(__return_value) {|__item| (raise "Expected string but got null" unless __item; ::String.new(__item)) }
    end

    def description(uri)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.bookmark_file_get_description(@pointer.as(LibGLib::BookmarkFile*), uri.to_unsafe, pointerof(__error))
      GLib::Error.assert __error
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def groups(uri, length)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.bookmark_file_get_groups(@pointer.as(LibGLib::BookmarkFile*), uri.to_unsafe, length, pointerof(__error))
      GLib::Error.assert __error
      PointerIterator.new(__return_value) {|__item| (raise "Expected string but got null" unless __item; ::String.new(__item)) }
    end

    def icon(uri, href, mime_type)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.bookmark_file_get_icon(@pointer.as(LibGLib::BookmarkFile*), uri.to_unsafe, href, mime_type, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def is_private(uri)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.bookmark_file_get_is_private(@pointer.as(LibGLib::BookmarkFile*), uri.to_unsafe, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def mime_type(uri)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.bookmark_file_get_mime_type(@pointer.as(LibGLib::BookmarkFile*), uri.to_unsafe, pointerof(__error))
      GLib::Error.assert __error
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def modified(uri)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.bookmark_file_get_modified(@pointer.as(LibGLib::BookmarkFile*), uri.to_unsafe, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def size
      __return_value = LibGLib.bookmark_file_get_size(@pointer.as(LibGLib::BookmarkFile*))
      __return_value
    end

    def title(uri)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.bookmark_file_get_title(@pointer.as(LibGLib::BookmarkFile*), uri ? uri.to_unsafe : nil, pointerof(__error))
      GLib::Error.assert __error
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def uris(length)
      __return_value = LibGLib.bookmark_file_get_uris(@pointer.as(LibGLib::BookmarkFile*), length)
      PointerIterator.new(__return_value) {|__item| (raise "Expected string but got null" unless __item; ::String.new(__item)) }
    end

    def visited(uri)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.bookmark_file_get_visited(@pointer.as(LibGLib::BookmarkFile*), uri.to_unsafe, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def has_application(uri, name)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.bookmark_file_has_application(@pointer.as(LibGLib::BookmarkFile*), uri.to_unsafe, name.to_unsafe, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def has_group(uri, group)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.bookmark_file_has_group(@pointer.as(LibGLib::BookmarkFile*), uri.to_unsafe, group.to_unsafe, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def has_item(uri)
      __return_value = LibGLib.bookmark_file_has_item(@pointer.as(LibGLib::BookmarkFile*), uri.to_unsafe)
      __return_value
    end

    def load_from_data(data, length)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.bookmark_file_load_from_data(@pointer.as(LibGLib::BookmarkFile*), data, UInt64.new(length), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def load_from_data_dirs(file, full_path)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.bookmark_file_load_from_data_dirs(@pointer.as(LibGLib::BookmarkFile*), file.to_unsafe, full_path, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def load_from_file(filename)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.bookmark_file_load_from_file(@pointer.as(LibGLib::BookmarkFile*), filename.to_unsafe, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def move_item(old_uri, new_uri)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.bookmark_file_move_item(@pointer.as(LibGLib::BookmarkFile*), old_uri.to_unsafe, new_uri ? new_uri.to_unsafe : nil, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def remove_application(uri, name)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.bookmark_file_remove_application(@pointer.as(LibGLib::BookmarkFile*), uri.to_unsafe, name.to_unsafe, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def remove_group(uri, group)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.bookmark_file_remove_group(@pointer.as(LibGLib::BookmarkFile*), uri.to_unsafe, group.to_unsafe, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def remove_item(uri)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.bookmark_file_remove_item(@pointer.as(LibGLib::BookmarkFile*), uri.to_unsafe, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def set_added(uri, added)
      LibGLib.bookmark_file_set_added(@pointer.as(LibGLib::BookmarkFile*), uri.to_unsafe, Int64.new(added))
      nil
    end

    def set_app_info(uri, name, exec, count, stamp)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.bookmark_file_set_app_info(@pointer.as(LibGLib::BookmarkFile*), uri.to_unsafe, name.to_unsafe, exec.to_unsafe, Int32.new(count), Int64.new(stamp), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def set_description(uri, description)
      LibGLib.bookmark_file_set_description(@pointer.as(LibGLib::BookmarkFile*), uri ? uri.to_unsafe : nil, description.to_unsafe)
      nil
    end

    def set_groups(uri, groups, length)
      LibGLib.bookmark_file_set_groups(@pointer.as(LibGLib::BookmarkFile*), uri.to_unsafe, groups ? groups : nil, UInt64.new(length))
      nil
    end

    def set_icon(uri, href, mime_type)
      LibGLib.bookmark_file_set_icon(@pointer.as(LibGLib::BookmarkFile*), uri.to_unsafe, href ? href.to_unsafe : nil, mime_type.to_unsafe)
      nil
    end

    def set_is_private(uri, is_private)
      LibGLib.bookmark_file_set_is_private(@pointer.as(LibGLib::BookmarkFile*), uri.to_unsafe, is_private)
      nil
    end

    def set_mime_type(uri, mime_type)
      LibGLib.bookmark_file_set_mime_type(@pointer.as(LibGLib::BookmarkFile*), uri.to_unsafe, mime_type.to_unsafe)
      nil
    end

    def set_modified(uri, modified)
      LibGLib.bookmark_file_set_modified(@pointer.as(LibGLib::BookmarkFile*), uri.to_unsafe, Int64.new(modified))
      nil
    end

    def set_title(uri, title)
      LibGLib.bookmark_file_set_title(@pointer.as(LibGLib::BookmarkFile*), uri ? uri.to_unsafe : nil, title.to_unsafe)
      nil
    end

    def set_visited(uri, visited)
      LibGLib.bookmark_file_set_visited(@pointer.as(LibGLib::BookmarkFile*), uri.to_unsafe, Int64.new(visited))
      nil
    end

    def to_data(length)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.bookmark_file_to_data(@pointer.as(LibGLib::BookmarkFile*), length, pointerof(__error))
      GLib::Error.assert __error
      PointerIterator.new(__return_value) {|__item| __item }
    end

    def to_file(filename)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.bookmark_file_to_file(@pointer.as(LibGLib::BookmarkFile*), filename.to_unsafe, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def self.error_quark
      __return_value = LibGLib.bookmark_file_error_quark
      __return_value
    end

  end
end

