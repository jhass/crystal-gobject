module GLib
  class MemVTable
    include GObject::WrappedType

    @g_lib_mem_v_table : LibGLib::MemVTable*?
    def initialize(@g_lib_mem_v_table : LibGLib::MemVTable*)
    end

    def to_unsafe
      @g_lib_mem_v_table.not_nil!
    end

  end
end

