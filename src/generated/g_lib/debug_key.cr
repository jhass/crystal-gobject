module GLib
  class DebugKey
    include GObject::WrappedType

    @g_lib_debug_key : LibGLib::DebugKey*?
    def initialize(@g_lib_debug_key : LibGLib::DebugKey*)
    end

    def to_unsafe
      @g_lib_debug_key.not_nil!
    end

  end
end

