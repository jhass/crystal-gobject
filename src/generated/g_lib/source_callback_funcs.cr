module GLib
  class SourceCallbackFuncs
    include GObject::WrappedType

    @g_lib_source_callback_funcs : LibGLib::SourceCallbackFuncs*?
    def initialize(@g_lib_source_callback_funcs : LibGLib::SourceCallbackFuncs*)
    end

    def to_unsafe
      @g_lib_source_callback_funcs.not_nil!
    end

  end
end

