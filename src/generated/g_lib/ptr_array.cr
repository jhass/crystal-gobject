module GLib
  class PtrArray
    include GObject::WrappedType

    @g_lib_ptr_array : LibGLib::PtrArray*?
    def initialize(@g_lib_ptr_array : LibGLib::PtrArray*)
    end

    def to_unsafe
      @g_lib_ptr_array.not_nil!
    end

  end
end

