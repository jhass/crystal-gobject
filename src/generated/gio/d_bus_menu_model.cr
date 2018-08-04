require "./menu_model"

module Gio
  class DBusMenuModel < MenuModel
    @pointer : Void*
    def initialize(pointer : LibGio::DBusMenuModel*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::DBusMenuModel*)
    end

    def self.get(connection, bus_name, object_path)
      __return_value = LibGio.d_bus_menu_model_get(connection.to_unsafe.as(LibGio::DBusConnection*), bus_name ? bus_name.to_unsafe : nil, object_path.to_unsafe)
      Gio::DBusMenuModel.new(__return_value)
    end

  end
end

