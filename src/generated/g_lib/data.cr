module GLib
  class Data
    include GObject::WrappedType

    def initialize(@g_lib_data)
    end

    def to_unsafe
      @g_lib_data.not_nil!
    end

  end
end

