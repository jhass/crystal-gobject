module GLib
  class DebugKey
    include GObject::WrappedType

    def initialize(@g_lib_debug_key)
    end

    def to_unsafe
      @g_lib_debug_key.not_nil!
    end

  end
end

