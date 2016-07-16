module GLib
  class StatBuf
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGLib::StatBuf*))
    end

    @g_lib_stat_buf : LibGLib::StatBuf*?
    def initialize(@g_lib_stat_buf : LibGLib::StatBuf*)
    end

    def to_unsafe
      @g_lib_stat_buf.not_nil!.as(Void*)
    end

  end
end

