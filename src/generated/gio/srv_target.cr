module Gio
  class SrvTarget
    include GObject::WrappedType

    def initialize(@gio_srv_target)
    end

    def to_unsafe
      @gio_srv_target.not_nil!
    end

    def self.new_internal(hostname, port, priority, weight)
      __return_value = LibGio.srv_target_new(hostname, UInt16.new(port), UInt16.new(priority), UInt16.new(weight))
      Gio::SrvTarget.new(__return_value)
    end

    def copy
      __return_value = LibGio.srv_target_copy((to_unsafe as LibGio::SrvTarget*))
      Gio::SrvTarget.new(__return_value)
    end

    def free
      __return_value = LibGio.srv_target_free((to_unsafe as LibGio::SrvTarget*))
      __return_value
    end

    def hostname
      __return_value = LibGio.srv_target_get_hostname((to_unsafe as LibGio::SrvTarget*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def port
      __return_value = LibGio.srv_target_get_port((to_unsafe as LibGio::SrvTarget*))
      __return_value
    end

    def priority
      __return_value = LibGio.srv_target_get_priority((to_unsafe as LibGio::SrvTarget*))
      __return_value
    end

    def weight
      __return_value = LibGio.srv_target_get_weight((to_unsafe as LibGio::SrvTarget*))
      __return_value
    end

  end
end

