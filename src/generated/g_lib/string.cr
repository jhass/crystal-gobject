module GLib
  class String
    include GObject::WrappedType

    def initialize(@g_lib_string)
    end

    def to_unsafe
      @g_lib_string.not_nil!
    end

    def append(val)
      __return_value = LibGLib.string_append((to_unsafe as LibGLib::String*), val)
      GLib::String.new(__return_value)
    end

    def append_c(c)
      __return_value = LibGLib.string_append_c((to_unsafe as LibGLib::String*), Int8.new(c))
      GLib::String.new(__return_value)
    end

    def append_len(val, len)
      __return_value = LibGLib.string_append_len((to_unsafe as LibGLib::String*), val, Int64.new(len))
      GLib::String.new(__return_value)
    end

    def append_unichar(wc)
      __return_value = LibGLib.string_append_unichar((to_unsafe as LibGLib::String*), UInt8.new(wc))
      GLib::String.new(__return_value)
    end

    def append_uri_escaped(unescaped, reserved_chars_allowed, allow_utf8)
      __return_value = LibGLib.string_append_uri_escaped((to_unsafe as LibGLib::String*), unescaped, reserved_chars_allowed, allow_utf8)
      GLib::String.new(__return_value)
    end

    def ascii_down
      __return_value = LibGLib.string_ascii_down((to_unsafe as LibGLib::String*))
      GLib::String.new(__return_value)
    end

    def ascii_up
      __return_value = LibGLib.string_ascii_up((to_unsafe as LibGLib::String*))
      GLib::String.new(__return_value)
    end

    def assign(rval)
      __return_value = LibGLib.string_assign((to_unsafe as LibGLib::String*), rval)
      GLib::String.new(__return_value)
    end

    def down
      __return_value = LibGLib.string_down((to_unsafe as LibGLib::String*))
      GLib::String.new(__return_value)
    end

    def equal(v2)
      __return_value = LibGLib.string_equal((to_unsafe as LibGLib::String*), (v2.to_unsafe as LibGLib::String*))
      __return_value
    end

    def erase(pos, len)
      __return_value = LibGLib.string_erase((to_unsafe as LibGLib::String*), Int64.new(pos), Int64.new(len))
      GLib::String.new(__return_value)
    end

    def free(free_segment)
      __return_value = LibGLib.string_free((to_unsafe as LibGLib::String*), free_segment)
      (raise "Expected string but got null" unless __return_value; String.new(__return_value)) if __return_value
    end

    def free_to_bytes
      __return_value = LibGLib.string_free_to_bytes((to_unsafe as LibGLib::String*))
      GLib::Bytes.new(__return_value)
    end

    def hash
      __return_value = LibGLib.string_hash((to_unsafe as LibGLib::String*))
      __return_value
    end

    def insert(pos, val)
      __return_value = LibGLib.string_insert((to_unsafe as LibGLib::String*), Int64.new(pos), val)
      GLib::String.new(__return_value)
    end

    def insert_c(pos, c)
      __return_value = LibGLib.string_insert_c((to_unsafe as LibGLib::String*), Int64.new(pos), Int8.new(c))
      GLib::String.new(__return_value)
    end

    def insert_len(pos, val, len)
      __return_value = LibGLib.string_insert_len((to_unsafe as LibGLib::String*), Int64.new(pos), val, Int64.new(len))
      GLib::String.new(__return_value)
    end

    def insert_unichar(pos, wc)
      __return_value = LibGLib.string_insert_unichar((to_unsafe as LibGLib::String*), Int64.new(pos), UInt8.new(wc))
      GLib::String.new(__return_value)
    end

    def overwrite(pos, val)
      __return_value = LibGLib.string_overwrite((to_unsafe as LibGLib::String*), UInt64.new(pos), val)
      GLib::String.new(__return_value)
    end

    def overwrite_len(pos, val, len)
      __return_value = LibGLib.string_overwrite_len((to_unsafe as LibGLib::String*), UInt64.new(pos), val, Int64.new(len))
      GLib::String.new(__return_value)
    end

    def prepend(val)
      __return_value = LibGLib.string_prepend((to_unsafe as LibGLib::String*), val)
      GLib::String.new(__return_value)
    end

    def prepend_c(c)
      __return_value = LibGLib.string_prepend_c((to_unsafe as LibGLib::String*), Int8.new(c))
      GLib::String.new(__return_value)
    end

    def prepend_len(val, len)
      __return_value = LibGLib.string_prepend_len((to_unsafe as LibGLib::String*), val, Int64.new(len))
      GLib::String.new(__return_value)
    end

    def prepend_unichar(wc)
      __return_value = LibGLib.string_prepend_unichar((to_unsafe as LibGLib::String*), UInt8.new(wc))
      GLib::String.new(__return_value)
    end

    def size=(len)
      __return_value = LibGLib.string_set_size((to_unsafe as LibGLib::String*), UInt64.new(len))
      GLib::String.new(__return_value)
    end

    def truncate(len)
      __return_value = LibGLib.string_truncate((to_unsafe as LibGLib::String*), UInt64.new(len))
      GLib::String.new(__return_value)
    end

    def up
      __return_value = LibGLib.string_up((to_unsafe as LibGLib::String*))
      GLib::String.new(__return_value)
    end

  end
end

