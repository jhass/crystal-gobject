module Gio
  class TestDBus < GObject::Object
    def initialize(@gio_test_d_bus)
    end

    def to_unsafe
      @gio_test_d_bus.not_nil!
    end


    def self.new_internal(flags)
      __return_value = LibGio.test_d_bus_new(flags)
      Gio::TestDBus.new(__return_value)
    end

    def self.unset
      __return_value = LibGio.test_d_bus_unset
      __return_value
    end

    def add_service_dir(path)
      __return_value = LibGio.test_d_bus_add_service_dir((to_unsafe as LibGio::TestDBus*), path)
      __return_value
    end

    def down
      __return_value = LibGio.test_d_bus_down((to_unsafe as LibGio::TestDBus*))
      __return_value
    end

    def bus_address
      __return_value = LibGio.test_d_bus_get_bus_address((to_unsafe as LibGio::TestDBus*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def flags
      __return_value = LibGio.test_d_bus_get_flags((to_unsafe as LibGio::TestDBus*))
      __return_value
    end

    def stop
      __return_value = LibGio.test_d_bus_stop((to_unsafe as LibGio::TestDBus*))
      __return_value
    end

    def up
      __return_value = LibGio.test_d_bus_up((to_unsafe as LibGio::TestDBus*))
      __return_value
    end

  end
end

