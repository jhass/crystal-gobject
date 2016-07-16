require "./menu_model"

module Gio
  class DBusMenuModel < MenuModel
    @gio_d_bus_menu_model : LibGio::DBusMenuModel*?
    def initialize(@gio_d_bus_menu_model : LibGio::DBusMenuModel*)
    end

    def to_unsafe
      @gio_d_bus_menu_model.not_nil!.as(Void*)
    end

    def self.get(connection, bus_name, object_path)
      __return_value = LibGio.d_bus_menu_model_get(connection.to_unsafe.as(LibGio::DBusConnection*), bus_name.to_unsafe, object_path.to_unsafe)
      Gio::DBusMenuModel.new(__return_value)
    end

  end
end

