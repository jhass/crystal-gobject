module Gio
  class TestDBus < GObject::Object
    @gio_test_d_bus : LibGio::TestDBus*?
    def initialize(@gio_test_d_bus : LibGio::TestDBus*)
    end

    def to_unsafe
      @gio_test_d_bus.not_nil!
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
      LibGio.test_d_bus_add_service_dir(to_unsafe.as(LibGio::TestDBus*), path.to_unsafe)
      nil
    end

    def down
      LibGio.test_d_bus_down(to_unsafe.as(LibGio::TestDBus*))
      nil
    end

    def bus_address
      __return_value = LibGio.test_d_bus_get_bus_address(to_unsafe.as(LibGio::TestDBus*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value)) if __return_value
    end

    def flags
      __return_value = LibGio.test_d_bus_get_flags(to_unsafe.as(LibGio::TestDBus*))
      __return_value
    end

    def stop
      LibGio.test_d_bus_stop(to_unsafe.as(LibGio::TestDBus*))
      nil
    end

    def up
      LibGio.test_d_bus_up(to_unsafe.as(LibGio::TestDBus*))
      nil
    end

  end
end

