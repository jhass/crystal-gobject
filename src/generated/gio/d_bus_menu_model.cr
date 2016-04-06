require "./menu_model"

module Gio
  class DBusMenuModel < MenuModel
    def initialize(@gio_d_bus_menu_model)
    end

    def to_unsafe
      @gio_d_bus_menu_model.not_nil!
    end

    def self.get(connection, bus_name, object_path)
      __return_value = LibGio.d_bus_menu_model_get((connection.to_unsafe as LibGio::DBusConnection*), bus_name, object_path)
      Gio::DBusMenuModel.new(__return_value)
    end

  end
end

