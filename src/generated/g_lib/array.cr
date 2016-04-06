module GLib
  class Array
    include GObject::WrappedType

    def initialize(@g_lib_array)
    end

    def to_unsafe
      @g_lib_array.not_nil!
    end

  end
end

