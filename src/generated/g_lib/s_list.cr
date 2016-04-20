module GLib
  class SList
    include GObject::WrappedType

    @g_lib_s_list : LibGLib::SList*?
    def initialize(@g_lib_s_list : LibGLib::SList*)
    end

    def to_unsafe
      @g_lib_s_list.not_nil!
    end

  end
end

