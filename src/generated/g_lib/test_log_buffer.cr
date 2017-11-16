module GLib
  class TestLogBuffer
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(16, 0u8)
      super(ptr.as(LibGLib::TestLogBuffer*))
    end

    @pointer : Void*
    def initialize(pointer : LibGLib::TestLogBuffer*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGLib::TestLogBuffer*)
    end

    def free
      LibGLib.test_log_buffer_free(@pointer.as(LibGLib::TestLogBuffer*))
      nil
    end

    def push(n_bytes, bytes)
      LibGLib.test_log_buffer_push(@pointer.as(LibGLib::TestLogBuffer*), UInt32.new(n_bytes), bytes)
      nil
    end

    def data
      GLib::String.new((to_unsafe.as(LibGLib::TestLogBuffer*).value.data))
    end

    def msgs
      GLib::SListIterator(Void*, Void**).new(GLib::SList.new((to_unsafe.as(LibGLib::TestLogBuffer*).value.msgs).as(LibGLib::SList*)))
    end

  end
end

