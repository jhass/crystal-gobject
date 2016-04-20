module GLib
  class SourceFuncs
    include GObject::WrappedType

    @g_lib_source_funcs : LibGLib::SourceFuncs*?
    def initialize(@g_lib_source_funcs : LibGLib::SourceFuncs*)
    end

    def to_unsafe
      @g_lib_source_funcs.not_nil!
    end

  end
end

