module GLib
  class IOFuncs
    include GObject::WrappedType

    @g_lib_i_o_funcs : LibGLib::IOFuncs*?
    def initialize(@g_lib_i_o_funcs : LibGLib::IOFuncs*)
    end

    def to_unsafe
      @g_lib_i_o_funcs.not_nil!
    end

  end
end

