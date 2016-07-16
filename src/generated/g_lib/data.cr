module GLib
  class Data
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGLib::Data*))
    end

    @g_lib_data : LibGLib::Data*?
    def initialize(@g_lib_data : LibGLib::Data*)
    end

    def to_unsafe
      @g_lib_data.not_nil!.as(Void*)
    end

  end
end

