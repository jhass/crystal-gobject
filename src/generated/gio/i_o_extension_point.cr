module Gio
  class IOExtensionPoint
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGio::IOExtensionPoint*))
    end

    @gio_i_o_extension_point : LibGio::IOExtensionPoint*?
    def initialize(@gio_i_o_extension_point : LibGio::IOExtensionPoint*)
    end

    def to_unsafe
      @gio_i_o_extension_point.not_nil!.as(Void*)
    end

    def extension_by_name(name)
      __return_value = LibGio.i_o_extension_point_get_extension_by_name(to_unsafe.as(LibGio::IOExtensionPoint*), name.to_unsafe)
      Gio::IOExtension.new(__return_value)
    end

    def extensions
      __return_value = LibGio.i_o_extension_point_get_extensions(to_unsafe.as(LibGio::IOExtensionPoint*))
      __return_value
    end

    def required_type
      __return_value = LibGio.i_o_extension_point_get_required_type(to_unsafe.as(LibGio::IOExtensionPoint*))
      __return_value
    end

    def required_type=(type)
      __return_value = LibGio.i_o_extension_point_set_required_type(to_unsafe.as(LibGio::IOExtensionPoint*), UInt64.new(type))
      __return_value
    end

    def self.implement(extension_point_name, type, extension_name, priority)
      __return_value = LibGio.i_o_extension_point_implement(extension_point_name.to_unsafe, UInt64.new(type), extension_name.to_unsafe, Int32.new(priority))
      Gio::IOExtension.new(__return_value)
    end

    def self.lookup(name)
      __return_value = LibGio.i_o_extension_point_lookup(name.to_unsafe)
      Gio::IOExtensionPoint.new(__return_value)
    end

    def self.register(name)
      __return_value = LibGio.i_o_extension_point_register(name.to_unsafe)
      Gio::IOExtensionPoint.new(__return_value)
    end

  end
end

