require "./permission"

module Gio
  class SimplePermission < Permission
    @pointer : Void*
    def initialize(pointer : LibGio::SimplePermission*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::SimplePermission*)
    end

    def self.new(allowed) : self
      __return_value = LibGio.simple_permission_new(allowed)
      cast Gio::Permission.new(__return_value)
    end

  end
end

