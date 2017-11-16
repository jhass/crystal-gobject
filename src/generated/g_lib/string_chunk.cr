module GLib
  class StringChunk
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGLib::StringChunk*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGLib::StringChunk*)
    end

    def clear
      LibGLib.string_chunk_clear(@pointer.as(LibGLib::StringChunk*))
      nil
    end

    def free
      LibGLib.string_chunk_free(@pointer.as(LibGLib::StringChunk*))
      nil
    end

    def insert(string)
      __return_value = LibGLib.string_chunk_insert(@pointer.as(LibGLib::StringChunk*), string.to_unsafe)
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def insert_const(string)
      __return_value = LibGLib.string_chunk_insert_const(@pointer.as(LibGLib::StringChunk*), string.to_unsafe)
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def insert_len(string, len)
      __return_value = LibGLib.string_chunk_insert_len(@pointer.as(LibGLib::StringChunk*), string.to_unsafe, Int64.new(len))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

  end
end

