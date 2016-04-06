module GLib
  class List
    include GObject::WrappedType

    def initialize(@g_lib_list)
    end

    def to_unsafe
      @g_lib_list.not_nil!
    end

  end
end

