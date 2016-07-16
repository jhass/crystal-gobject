module GLib
  class Data
    include GObject::WrappedType

    @g_lib_data : LibGLib::Data*?
    def initialize(@g_lib_data : LibGLib::Data*)
    end

    def to_unsafe
      @g_lib_data.not_nil!.as(Void*)
    end

  end
end

