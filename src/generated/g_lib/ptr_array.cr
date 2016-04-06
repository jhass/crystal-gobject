module GLib
  class PtrArray
    include GObject::WrappedType

    def initialize(@g_lib_ptr_array)
    end

    def to_unsafe
      @g_lib_ptr_array.not_nil!
    end

  end
end

