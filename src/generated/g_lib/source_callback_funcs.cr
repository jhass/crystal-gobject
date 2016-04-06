module GLib
  class SourceCallbackFuncs
    include GObject::WrappedType

    def initialize(@g_lib_source_callback_funcs)
    end

    def to_unsafe
      @g_lib_source_callback_funcs.not_nil!
    end

  end
end

