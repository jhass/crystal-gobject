module GLib
  class KeyFile
    include GObject::WrappedType

    def initialize(@g_lib_key_file)
    end

    def to_unsafe
      @g_lib_key_file.not_nil!
    end

    def self.new_internal
      __return_value = LibGLib.key_file_new
      GLib::KeyFile.new(__return_value)
    end

    def boolean(group_name, key)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.key_file_get_boolean((to_unsafe as LibGLib::KeyFile*), group_name, key, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def boolean_list(group_name, key, length)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.key_file_get_boolean_list((to_unsafe as LibGLib::KeyFile*), group_name, key, UInt64.new(length), pointerof(__error))
      GLib::Error.assert __error
      PointerIterator.new(__return_value) {|__item_38| __item_38 }
    end

    def comment(group_name, key)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.key_file_get_comment((to_unsafe as LibGLib::KeyFile*), group_name && group_name, key, pointerof(__error))
      GLib::Error.assert __error
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def double(group_name, key)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.key_file_get_double((to_unsafe as LibGLib::KeyFile*), group_name, key, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def double_list(group_name, key, length)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.key_file_get_double_list((to_unsafe as LibGLib::KeyFile*), group_name, key, UInt64.new(length), pointerof(__error))
      GLib::Error.assert __error
      PointerIterator.new(__return_value) {|__item_37| __item_37 }
    end

    def groups(length)
      __return_value = LibGLib.key_file_get_groups((to_unsafe as LibGLib::KeyFile*), UInt64.new(length))
      PointerIterator.new(__return_value) {|__item_11| (raise "Expected string but got null" unless __item_11; String.new(__item_11)) }
    end

    def int64(group_name, key)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.key_file_get_int64((to_unsafe as LibGLib::KeyFile*), group_name, key, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def integer(group_name, key)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.key_file_get_integer((to_unsafe as LibGLib::KeyFile*), group_name, key, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def integer_list(group_name, key, length)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.key_file_get_integer_list((to_unsafe as LibGLib::KeyFile*), group_name, key, UInt64.new(length), pointerof(__error))
      GLib::Error.assert __error
      PointerIterator.new(__return_value) {|__item_81| __item_81 }
    end

    def keys(group_name, length)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.key_file_get_keys((to_unsafe as LibGLib::KeyFile*), group_name, UInt64.new(length), pointerof(__error))
      GLib::Error.assert __error
      PointerIterator.new(__return_value) {|__item_18| (raise "Expected string but got null" unless __item_18; String.new(__item_18)) }
    end

    def locale_string(group_name, key, locale)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.key_file_get_locale_string((to_unsafe as LibGLib::KeyFile*), group_name, key, locale && locale, pointerof(__error))
      GLib::Error.assert __error
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def locale_string_list(group_name, key, locale, length)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.key_file_get_locale_string_list((to_unsafe as LibGLib::KeyFile*), group_name, key, locale && locale, UInt64.new(length), pointerof(__error))
      GLib::Error.assert __error
      PointerIterator.new(__return_value) {|__item_59| (raise "Expected string but got null" unless __item_59; String.new(__item_59)) }
    end

    def start_group
      __return_value = LibGLib.key_file_get_start_group((to_unsafe as LibGLib::KeyFile*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def string(group_name, key)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.key_file_get_string((to_unsafe as LibGLib::KeyFile*), group_name, key, pointerof(__error))
      GLib::Error.assert __error
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def string_list(group_name, key, length)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.key_file_get_string_list((to_unsafe as LibGLib::KeyFile*), group_name, key, UInt64.new(length), pointerof(__error))
      GLib::Error.assert __error
      PointerIterator.new(__return_value) {|__item_68| (raise "Expected string but got null" unless __item_68; String.new(__item_68)) }
    end

    def uint64(group_name, key)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.key_file_get_uint64((to_unsafe as LibGLib::KeyFile*), group_name, key, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def value(group_name, key)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.key_file_get_value((to_unsafe as LibGLib::KeyFile*), group_name, key, pointerof(__error))
      GLib::Error.assert __error
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def has_group(group_name)
      __return_value = LibGLib.key_file_has_group((to_unsafe as LibGLib::KeyFile*), group_name)
      __return_value
    end

    def load_from_data(data, length, flags)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.key_file_load_from_data((to_unsafe as LibGLib::KeyFile*), data, UInt64.new(length), flags, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def load_from_data_dirs(file, full_path, flags)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.key_file_load_from_data_dirs((to_unsafe as LibGLib::KeyFile*), file, full_path, flags, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def load_from_dirs(file, search_dirs, full_path, flags)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.key_file_load_from_dirs((to_unsafe as LibGLib::KeyFile*), file, search_dirs, full_path, flags, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def load_from_file(file, flags)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.key_file_load_from_file((to_unsafe as LibGLib::KeyFile*), file, flags, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def remove_comment(group_name, key)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.key_file_remove_comment((to_unsafe as LibGLib::KeyFile*), group_name && group_name, key && key, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def remove_group(group_name)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.key_file_remove_group((to_unsafe as LibGLib::KeyFile*), group_name, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def remove_key(group_name, key)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.key_file_remove_key((to_unsafe as LibGLib::KeyFile*), group_name, key, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def save_to_file(filename)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.key_file_save_to_file((to_unsafe as LibGLib::KeyFile*), filename, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def set_boolean(group_name, key, value)
      __return_value = LibGLib.key_file_set_boolean((to_unsafe as LibGLib::KeyFile*), group_name, key, value)
      __return_value
    end

    def set_boolean_list(group_name, key, list, length)
      __return_value = LibGLib.key_file_set_boolean_list((to_unsafe as LibGLib::KeyFile*), group_name, key, list, UInt64.new(length))
      __return_value
    end

    def set_comment(group_name, key, comment)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.key_file_set_comment((to_unsafe as LibGLib::KeyFile*), group_name && group_name, key && key, comment, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def set_double(group_name, key, value)
      __return_value = LibGLib.key_file_set_double((to_unsafe as LibGLib::KeyFile*), group_name, key, Float64.new(value))
      __return_value
    end

    def set_double_list(group_name, key, list, length)
      __return_value = LibGLib.key_file_set_double_list((to_unsafe as LibGLib::KeyFile*), group_name, key, list, UInt64.new(length))
      __return_value
    end

    def set_int64(group_name, key, value)
      __return_value = LibGLib.key_file_set_int64((to_unsafe as LibGLib::KeyFile*), group_name, key, Int64.new(value))
      __return_value
    end

    def set_integer(group_name, key, value)
      __return_value = LibGLib.key_file_set_integer((to_unsafe as LibGLib::KeyFile*), group_name, key, Int32.new(value))
      __return_value
    end

    def set_integer_list(group_name, key, list, length)
      __return_value = LibGLib.key_file_set_integer_list((to_unsafe as LibGLib::KeyFile*), group_name, key, list, UInt64.new(length))
      __return_value
    end

    def list_separator=(separator)
      __return_value = LibGLib.key_file_set_list_separator((to_unsafe as LibGLib::KeyFile*), Int8.new(separator))
      __return_value
    end

    def set_locale_string(group_name, key, locale, string)
      __return_value = LibGLib.key_file_set_locale_string((to_unsafe as LibGLib::KeyFile*), group_name, key, locale, string)
      __return_value
    end

    def set_locale_string_list(group_name, key, locale, list, length)
      __return_value = LibGLib.key_file_set_locale_string_list((to_unsafe as LibGLib::KeyFile*), group_name, key, locale, list, UInt64.new(length))
      __return_value
    end

    def set_string(group_name, key, string)
      __return_value = LibGLib.key_file_set_string((to_unsafe as LibGLib::KeyFile*), group_name, key, string)
      __return_value
    end

    def set_string_list(group_name, key, list, length)
      __return_value = LibGLib.key_file_set_string_list((to_unsafe as LibGLib::KeyFile*), group_name, key, list, UInt64.new(length))
      __return_value
    end

    def set_uint64(group_name, key, value)
      __return_value = LibGLib.key_file_set_uint64((to_unsafe as LibGLib::KeyFile*), group_name, key, UInt64.new(value))
      __return_value
    end

    def set_value(group_name, key, value)
      __return_value = LibGLib.key_file_set_value((to_unsafe as LibGLib::KeyFile*), group_name, key, value)
      __return_value
    end

    def to_data(length)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.key_file_to_data((to_unsafe as LibGLib::KeyFile*), UInt64.new(length), pointerof(__error))
      GLib::Error.assert __error
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def unref
      __return_value = LibGLib.key_file_unref((to_unsafe as LibGLib::KeyFile*))
      __return_value
    end

    def self.error_quark
      __return_value = LibGLib.key_file_error_quark
      __return_value
    end

  end
end

