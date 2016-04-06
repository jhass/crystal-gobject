module GLib
  class StatBuf
    include GObject::WrappedType

    def initialize(@g_lib_stat_buf)
    end

    def to_unsafe
      @g_lib_stat_buf.not_nil!
    end

  end
end

