module Gio
  class TestDBus < GObject::Object
    @pointer : Void*
    def initialize(pointer : LibGio::TestDBus*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::TestDBus*)
    end

    def flags
      __return_value = LibGio.test_d_bus_get_flags(to_unsafe.as(LibGio::TestDBus*))
      __return_value
    end

    def self.new(flags : Gio::TestDBusFlags) : self
      __return_value = LibGio.test_d_bus_new(flags)
      cast Gio::TestDBus.new(__return_value)
    end

    def self.unset
      LibGio.test_d_bus_unset
      nil
    end

    def add_service_dir(path)
      LibGio.test_d_bus_add_service_dir(@pointer.as(LibGio::TestDBus*), path.to_unsafe)
      nil
    end

    def down
      LibGio.test_d_bus_down(@pointer.as(LibGio::TestDBus*))
      nil
    end

    def bus_address
      __return_value = LibGio.test_d_bus_get_bus_address(@pointer.as(LibGio::TestDBus*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value)) if __return_value
    end

    def flags
      __return_value = LibGio.test_d_bus_get_flags(@pointer.as(LibGio::TestDBus*))
      __return_value
    end

    def stop
      LibGio.test_d_bus_stop(@pointer.as(LibGio::TestDBus*))
      nil
    end

    def up
      LibGio.test_d_bus_up(@pointer.as(LibGio::TestDBus*))
      nil
    end

  end
end

