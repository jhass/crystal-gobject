require "./permission"

module Gio
  class SimplePermission < Permission
    def initialize(@gio_simple_permission)
    end

    def to_unsafe
      @gio_simple_permission.not_nil!
    end

    def self.new_internal(allowed)
      __return_value = LibGio.simple_permission_new(allowed)
      Gio::Permission.new(__return_value)
    end

  end
end

