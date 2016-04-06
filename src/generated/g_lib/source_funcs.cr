module GLib
  class SourceFuncs
    include GObject::WrappedType

    def initialize(@g_lib_source_funcs)
    end

    def to_unsafe
      @g_lib_source_funcs.not_nil!
    end

  end
end

