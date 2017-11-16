module Gio
  class IOExtensionPoint
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGio::IOExtensionPoint*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::IOExtensionPoint*)
    end

    def extension_by_name(name)
      __return_value = LibGio.i_o_extension_point_get_extension_by_name(@pointer.as(LibGio::IOExtensionPoint*), name.to_unsafe)
      Gio::IOExtension.new(__return_value)
    end

    def extensions
      __return_value = LibGio.i_o_extension_point_get_extensions(@pointer.as(LibGio::IOExtensionPoint*))
      GLib::ListIterator(Gio::IOExtension, LibGio::IOExtension**).new(GLib::SList.new(__return_value.as(LibGLib::List*)))
    end

    def required_type
      __return_value = LibGio.i_o_extension_point_get_required_type(@pointer.as(LibGio::IOExtensionPoint*))
      __return_value
    end

    def required_type=(type)
      LibGio.i_o_extension_point_set_required_type(@pointer.as(LibGio::IOExtensionPoint*), UInt64.new(type))
      nil
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

