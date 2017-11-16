module Gio
  class SrvTarget
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGio::SrvTarget*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::SrvTarget*)
    end

    def self.new(hostname, port, priority, weight) : self
      __return_value = LibGio.srv_target_new(hostname.to_unsafe, UInt16.new(port), UInt16.new(priority), UInt16.new(weight))
      cast Gio::SrvTarget.new(__return_value)
    end

    def copy
      __return_value = LibGio.srv_target_copy(@pointer.as(LibGio::SrvTarget*))
      Gio::SrvTarget.new(__return_value)
    end

    def free
      LibGio.srv_target_free(@pointer.as(LibGio::SrvTarget*))
      nil
    end

    def hostname
      __return_value = LibGio.srv_target_get_hostname(@pointer.as(LibGio::SrvTarget*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def port
      __return_value = LibGio.srv_target_get_port(@pointer.as(LibGio::SrvTarget*))
      __return_value
    end

    def priority
      __return_value = LibGio.srv_target_get_priority(@pointer.as(LibGio::SrvTarget*))
      __return_value
    end

    def weight
      __return_value = LibGio.srv_target_get_weight(@pointer.as(LibGio::SrvTarget*))
      __return_value
    end

  end
end

