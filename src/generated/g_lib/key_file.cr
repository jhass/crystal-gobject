module GLib
  class KeyFile
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGLib::KeyFile*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGLib::KeyFile*)
    end

    def self.new : self
      __return_value = LibGLib.key_file_new
      cast GLib::KeyFile.new(__return_value)
    end

    def boolean(group_name, key)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.key_file_get_boolean(@pointer.as(LibGLib::KeyFile*), group_name.to_unsafe, key.to_unsafe, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def boolean_list(group_name, key, length)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.key_file_get_boolean_list(@pointer.as(LibGLib::KeyFile*), group_name.to_unsafe, key.to_unsafe, length, pointerof(__error))
      GLib::Error.assert __error
      PointerIterator.new(__return_value) {|__item| __item }
    end

    def comment(group_name, key)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.key_file_get_comment(@pointer.as(LibGLib::KeyFile*), group_name ? group_name.to_unsafe : nil, key.to_unsafe, pointerof(__error))
      GLib::Error.assert __error
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def double(group_name, key)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.key_file_get_double(@pointer.as(LibGLib::KeyFile*), group_name.to_unsafe, key.to_unsafe, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def double_list(group_name, key, length)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.key_file_get_double_list(@pointer.as(LibGLib::KeyFile*), group_name.to_unsafe, key.to_unsafe, length, pointerof(__error))
      GLib::Error.assert __error
      PointerIterator.new(__return_value) {|__item| __item }
    end

    def groups(length)
      __return_value = LibGLib.key_file_get_groups(@pointer.as(LibGLib::KeyFile*), length)
      PointerIterator.new(__return_value) {|__item| (raise "Expected string but got null" unless __item; ::String.new(__item)) }
    end

    def int64(group_name, key)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.key_file_get_int64(@pointer.as(LibGLib::KeyFile*), group_name.to_unsafe, key.to_unsafe, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def integer(group_name, key)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.key_file_get_integer(@pointer.as(LibGLib::KeyFile*), group_name.to_unsafe, key.to_unsafe, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def integer_list(group_name, key, length)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.key_file_get_integer_list(@pointer.as(LibGLib::KeyFile*), group_name.to_unsafe, key.to_unsafe, length, pointerof(__error))
      GLib::Error.assert __error
      PointerIterator.new(__return_value) {|__item| __item }
    end

    def keys(group_name, length)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.key_file_get_keys(@pointer.as(LibGLib::KeyFile*), group_name.to_unsafe, length, pointerof(__error))
      GLib::Error.assert __error
      PointerIterator.new(__return_value) {|__item| (raise "Expected string but got null" unless __item; ::String.new(__item)) }
    end

    def locale_string(group_name, key, locale)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.key_file_get_locale_string(@pointer.as(LibGLib::KeyFile*), group_name.to_unsafe, key.to_unsafe, locale ? locale.to_unsafe : nil, pointerof(__error))
      GLib::Error.assert __error
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def locale_string_list(group_name, key, locale, length)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.key_file_get_locale_string_list(@pointer.as(LibGLib::KeyFile*), group_name.to_unsafe, key.to_unsafe, locale ? locale.to_unsafe : nil, length, pointerof(__error))
      GLib::Error.assert __error
      PointerIterator.new(__return_value) {|__item| (raise "Expected string but got null" unless __item; ::String.new(__item)) }
    end

    def start_group
      __return_value = LibGLib.key_file_get_start_group(@pointer.as(LibGLib::KeyFile*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def string(group_name, key)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.key_file_get_string(@pointer.as(LibGLib::KeyFile*), group_name.to_unsafe, key.to_unsafe, pointerof(__error))
      GLib::Error.assert __error
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def string_list(group_name, key, length)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.key_file_get_string_list(@pointer.as(LibGLib::KeyFile*), group_name.to_unsafe, key.to_unsafe, length, pointerof(__error))
      GLib::Error.assert __error
      PointerIterator.new(__return_value) {|__item| (raise "Expected string but got null" unless __item; ::String.new(__item)) }
    end

    def uint64(group_name, key)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.key_file_get_uint64(@pointer.as(LibGLib::KeyFile*), group_name.to_unsafe, key.to_unsafe, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def value(group_name, key)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.key_file_get_value(@pointer.as(LibGLib::KeyFile*), group_name.to_unsafe, key.to_unsafe, pointerof(__error))
      GLib::Error.assert __error
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def has_group(group_name)
      __return_value = LibGLib.key_file_has_group(@pointer.as(LibGLib::KeyFile*), group_name.to_unsafe)
      __return_value
    end

    def load_from_bytes(bytes, flags : GLib::KeyFileFlags)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.key_file_load_from_bytes(@pointer.as(LibGLib::KeyFile*), bytes.to_unsafe.as(LibGLib::Bytes*), flags, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def load_from_data(data, length, flags : GLib::KeyFileFlags)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.key_file_load_from_data(@pointer.as(LibGLib::KeyFile*), data.to_unsafe, UInt64.new(length), flags, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def load_from_data_dirs(file, full_path, flags : GLib::KeyFileFlags)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.key_file_load_from_data_dirs(@pointer.as(LibGLib::KeyFile*), file.to_unsafe, full_path, flags, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def load_from_dirs(file, search_dirs, full_path, flags : GLib::KeyFileFlags)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.key_file_load_from_dirs(@pointer.as(LibGLib::KeyFile*), file.to_unsafe, search_dirs, full_path, flags, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def load_from_file(file, flags : GLib::KeyFileFlags)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.key_file_load_from_file(@pointer.as(LibGLib::KeyFile*), file.to_unsafe, flags, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def remove_comment(group_name, key)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.key_file_remove_comment(@pointer.as(LibGLib::KeyFile*), group_name ? group_name.to_unsafe : nil, key ? key.to_unsafe : nil, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def remove_group(group_name)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.key_file_remove_group(@pointer.as(LibGLib::KeyFile*), group_name.to_unsafe, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def remove_key(group_name, key)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.key_file_remove_key(@pointer.as(LibGLib::KeyFile*), group_name.to_unsafe, key.to_unsafe, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def save_to_file(filename)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.key_file_save_to_file(@pointer.as(LibGLib::KeyFile*), filename.to_unsafe, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def set_boolean(group_name, key, value)
      LibGLib.key_file_set_boolean(@pointer.as(LibGLib::KeyFile*), group_name.to_unsafe, key.to_unsafe, value)
      nil
    end

    def set_boolean_list(group_name, key, list, length)
      LibGLib.key_file_set_boolean_list(@pointer.as(LibGLib::KeyFile*), group_name.to_unsafe, key.to_unsafe, list, UInt64.new(length))
      nil
    end

    def set_comment(group_name, key, comment)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.key_file_set_comment(@pointer.as(LibGLib::KeyFile*), group_name ? group_name.to_unsafe : nil, key ? key.to_unsafe : nil, comment.to_unsafe, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def set_double(group_name, key, value)
      LibGLib.key_file_set_double(@pointer.as(LibGLib::KeyFile*), group_name.to_unsafe, key.to_unsafe, Float64.new(value))
      nil
    end

    def set_double_list(group_name, key, list, length)
      LibGLib.key_file_set_double_list(@pointer.as(LibGLib::KeyFile*), group_name.to_unsafe, key.to_unsafe, list, UInt64.new(length))
      nil
    end

    def set_int64(group_name, key, value)
      LibGLib.key_file_set_int64(@pointer.as(LibGLib::KeyFile*), group_name.to_unsafe, key.to_unsafe, Int64.new(value))
      nil
    end

    def set_integer(group_name, key, value)
      LibGLib.key_file_set_integer(@pointer.as(LibGLib::KeyFile*), group_name.to_unsafe, key.to_unsafe, Int32.new(value))
      nil
    end

    def set_integer_list(group_name, key, list, length)
      LibGLib.key_file_set_integer_list(@pointer.as(LibGLib::KeyFile*), group_name.to_unsafe, key.to_unsafe, list, UInt64.new(length))
      nil
    end

    def list_separator=(separator)
      LibGLib.key_file_set_list_separator(@pointer.as(LibGLib::KeyFile*), Int8.new(separator))
      nil
    end

    def set_locale_string(group_name, key, locale, string)
      LibGLib.key_file_set_locale_string(@pointer.as(LibGLib::KeyFile*), group_name.to_unsafe, key.to_unsafe, locale.to_unsafe, string.to_unsafe)
      nil
    end

    def set_locale_string_list(group_name, key, locale, list, length)
      LibGLib.key_file_set_locale_string_list(@pointer.as(LibGLib::KeyFile*), group_name.to_unsafe, key.to_unsafe, locale.to_unsafe, list, UInt64.new(length))
      nil
    end

    def set_string(group_name, key, string)
      LibGLib.key_file_set_string(@pointer.as(LibGLib::KeyFile*), group_name.to_unsafe, key.to_unsafe, string.to_unsafe)
      nil
    end

    def set_string_list(group_name, key, list, length)
      LibGLib.key_file_set_string_list(@pointer.as(LibGLib::KeyFile*), group_name.to_unsafe, key.to_unsafe, list, UInt64.new(length))
      nil
    end

    def set_uint64(group_name, key, value)
      LibGLib.key_file_set_uint64(@pointer.as(LibGLib::KeyFile*), group_name.to_unsafe, key.to_unsafe, UInt64.new(value))
      nil
    end

    def set_value(group_name, key, value)
      LibGLib.key_file_set_value(@pointer.as(LibGLib::KeyFile*), group_name.to_unsafe, key.to_unsafe, value.to_unsafe)
      nil
    end

    def to_data(length)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.key_file_to_data(@pointer.as(LibGLib::KeyFile*), length, pointerof(__error))
      GLib::Error.assert __error
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def unref
      LibGLib.key_file_unref(@pointer.as(LibGLib::KeyFile*))
      nil
    end

    def self.error_quark
      __return_value = LibGLib.key_file_error_quark
      __return_value
    end

  end
end

