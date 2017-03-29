require "./permission"

module Gio
  class SimplePermission < Permission
    @gio_simple_permission : LibGio::SimplePermission*?
    def initialize(@gio_simple_permission : LibGio::SimplePermission*)
    end

    def to_unsafe
      @gio_simple_permission.not_nil!
    end

    def self.new(allowed) : self
      __return_value = LibGio.simple_permission_new(allowed)
      cast Gio::Permission.new(__return_value)
    end

  end
end

