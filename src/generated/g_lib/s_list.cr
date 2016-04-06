module GLib
  class SList
    include GObject::WrappedType

    def initialize(@g_lib_s_list)
    end

    def to_unsafe
      @g_lib_s_list.not_nil!
    end

  end
end

