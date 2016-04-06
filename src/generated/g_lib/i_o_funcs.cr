module GLib
  class IOFuncs
    include GObject::WrappedType

    def initialize(@g_lib_i_o_funcs)
    end

    def to_unsafe
      @g_lib_i_o_funcs.not_nil!
    end

  end
end

