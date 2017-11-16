module GLib
  class String
    include GObject::WrappedType

    def self.new(str : String|Nil = nil, len : UInt64|Nil = nil, allocated_len : UInt64|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(24, 0u8)
      new(ptr.as(LibGLib::String*)).tap do |object|
        object.str = str unless str.nil?
        object.len = len unless len.nil?
        object.allocated_len = allocated_len unless allocated_len.nil?
      end
    end

    @pointer : Void*
    def initialize(pointer : LibGLib::String*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGLib::String*)
    end

    def append(val)
      __return_value = LibGLib.string_append(@pointer.as(LibGLib::String*), val.to_unsafe)
      GLib::String.new(__return_value)
    end

    def append_c(c)
      __return_value = LibGLib.string_append_c(@pointer.as(LibGLib::String*), Int8.new(c))
      GLib::String.new(__return_value)
    end

    def append_len(val, len)
      __return_value = LibGLib.string_append_len(@pointer.as(LibGLib::String*), val.to_unsafe, Int64.new(len))
      GLib::String.new(__return_value)
    end

    def append_unichar(wc)
      __return_value = LibGLib.string_append_unichar(@pointer.as(LibGLib::String*), UInt8.new(wc))
      GLib::String.new(__return_value)
    end

    def append_uri_escaped(unescaped, reserved_chars_allowed, allow_utf8)
      __return_value = LibGLib.string_append_uri_escaped(@pointer.as(LibGLib::String*), unescaped.to_unsafe, reserved_chars_allowed.to_unsafe, allow_utf8)
      GLib::String.new(__return_value)
    end

    def ascii_down
      __return_value = LibGLib.string_ascii_down(@pointer.as(LibGLib::String*))
      GLib::String.new(__return_value)
    end

    def ascii_up
      __return_value = LibGLib.string_ascii_up(@pointer.as(LibGLib::String*))
      GLib::String.new(__return_value)
    end

    def assign(rval)
      __return_value = LibGLib.string_assign(@pointer.as(LibGLib::String*), rval.to_unsafe)
      GLib::String.new(__return_value)
    end

    def down
      __return_value = LibGLib.string_down(@pointer.as(LibGLib::String*))
      GLib::String.new(__return_value)
    end

    def equal(v2)
      __return_value = LibGLib.string_equal(@pointer.as(LibGLib::String*), v2.to_unsafe.as(LibGLib::String*))
      __return_value
    end

    def erase(pos, len)
      __return_value = LibGLib.string_erase(@pointer.as(LibGLib::String*), Int64.new(pos), Int64.new(len))
      GLib::String.new(__return_value)
    end

    def free(free_segment)
      __return_value = LibGLib.string_free(@pointer.as(LibGLib::String*), free_segment)
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value)) if __return_value
    end

    def free_to_bytes
      __return_value = LibGLib.string_free_to_bytes(@pointer.as(LibGLib::String*))
      GLib::Bytes.new(__return_value)
    end

    def hash
      __return_value = LibGLib.string_hash(@pointer.as(LibGLib::String*))
      __return_value
    end

    def insert(pos, val)
      __return_value = LibGLib.string_insert(@pointer.as(LibGLib::String*), Int64.new(pos), val.to_unsafe)
      GLib::String.new(__return_value)
    end

    def insert_c(pos, c)
      __return_value = LibGLib.string_insert_c(@pointer.as(LibGLib::String*), Int64.new(pos), Int8.new(c))
      GLib::String.new(__return_value)
    end

    def insert_len(pos, val, len)
      __return_value = LibGLib.string_insert_len(@pointer.as(LibGLib::String*), Int64.new(pos), val.to_unsafe, Int64.new(len))
      GLib::String.new(__return_value)
    end

    def insert_unichar(pos, wc)
      __return_value = LibGLib.string_insert_unichar(@pointer.as(LibGLib::String*), Int64.new(pos), UInt8.new(wc))
      GLib::String.new(__return_value)
    end

    def overwrite(pos, val)
      __return_value = LibGLib.string_overwrite(@pointer.as(LibGLib::String*), UInt64.new(pos), val.to_unsafe)
      GLib::String.new(__return_value)
    end

    def overwrite_len(pos, val, len)
      __return_value = LibGLib.string_overwrite_len(@pointer.as(LibGLib::String*), UInt64.new(pos), val.to_unsafe, Int64.new(len))
      GLib::String.new(__return_value)
    end

    def prepend(val)
      __return_value = LibGLib.string_prepend(@pointer.as(LibGLib::String*), val.to_unsafe)
      GLib::String.new(__return_value)
    end

    def prepend_c(c)
      __return_value = LibGLib.string_prepend_c(@pointer.as(LibGLib::String*), Int8.new(c))
      GLib::String.new(__return_value)
    end

    def prepend_len(val, len)
      __return_value = LibGLib.string_prepend_len(@pointer.as(LibGLib::String*), val.to_unsafe, Int64.new(len))
      GLib::String.new(__return_value)
    end

    def prepend_unichar(wc)
      __return_value = LibGLib.string_prepend_unichar(@pointer.as(LibGLib::String*), UInt8.new(wc))
      GLib::String.new(__return_value)
    end

    def size=(len)
      __return_value = LibGLib.string_set_size(@pointer.as(LibGLib::String*), UInt64.new(len))
      GLib::String.new(__return_value)
    end

    def truncate(len)
      __return_value = LibGLib.string_truncate(@pointer.as(LibGLib::String*), UInt64.new(len))
      GLib::String.new(__return_value)
    end

    def up
      __return_value = LibGLib.string_up(@pointer.as(LibGLib::String*))
      GLib::String.new(__return_value)
    end

    def str
      (raise "Expected string but got null" unless (to_unsafe.as(LibGLib::String*).value.str); ::String.new((to_unsafe.as(LibGLib::String*).value.str)))
    end

    def str=(value : String)
      to_unsafe.as(LibGLib::String*).value.str = value.to_unsafe
    end

    def len
      (to_unsafe.as(LibGLib::String*).value.len)
    end

    def len=(value : UInt64)
      to_unsafe.as(LibGLib::String*).value.len = UInt64.new(value)
    end

    def allocated_len
      (to_unsafe.as(LibGLib::String*).value.allocated_len)
    end

    def allocated_len=(value : UInt64)
      to_unsafe.as(LibGLib::String*).value.allocated_len = UInt64.new(value)
    end

  end
end

