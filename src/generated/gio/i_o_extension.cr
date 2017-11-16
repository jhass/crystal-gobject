module Gio
  class IOExtension
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGio::IOExtension*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::IOExtension*)
    end

    def name
      __return_value = LibGio.i_o_extension_get_name(@pointer.as(LibGio::IOExtension*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def priority
      __return_value = LibGio.i_o_extension_get_priority(@pointer.as(LibGio::IOExtension*))
      __return_value
    end

    def type
      __return_value = LibGio.i_o_extension_get_type(@pointer.as(LibGio::IOExtension*))
      __return_value
    end

  end
end

