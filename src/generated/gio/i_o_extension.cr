module Gio
  class IOExtension
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGio::IOExtension*))
    end

    @gio_i_o_extension : LibGio::IOExtension*?
    def initialize(@gio_i_o_extension : LibGio::IOExtension*)
    end

    def to_unsafe
      @gio_i_o_extension.not_nil!.as(Void*)
    end

    def name
      __return_value = LibGio.i_o_extension_get_name(to_unsafe.as(LibGio::IOExtension*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def priority
      __return_value = LibGio.i_o_extension_get_priority(to_unsafe.as(LibGio::IOExtension*))
      __return_value
    end

    def type
      __return_value = LibGio.i_o_extension_get_type(to_unsafe.as(LibGio::IOExtension*))
      __return_value
    end

  end
end

