module GLib
  class List
    include GObject::WrappedType

    @g_lib_list : LibGLib::List*?
    def initialize(@g_lib_list : LibGLib::List*)
    end

    def to_unsafe
      @g_lib_list.not_nil!
    end

  end
end

