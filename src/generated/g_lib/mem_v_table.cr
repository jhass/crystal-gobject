module GLib
  class MemVTable
    include GObject::WrappedType

    def initialize(@g_lib_mem_v_table)
    end

    def to_unsafe
      @g_lib_mem_v_table.not_nil!
    end

  end
end

