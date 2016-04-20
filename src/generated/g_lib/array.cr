module GLib
  class Array
    include GObject::WrappedType

    @g_lib_array : LibGLib::Array*?
    def initialize(@g_lib_array : LibGLib::Array*)
    end

    def to_unsafe
      @g_lib_array.not_nil!
    end

  end
end

