module Gio
  class DBusActionGroup < GObject::Object
    @pointer : Void*
    def initialize(pointer : LibGio::DBusActionGroup*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::DBusActionGroup*)
    end

    # Implements ActionGroup
    # Implements RemoteActionGroup
    def self.get(connection, bus_name, object_path)
      __return_value = LibGio.d_bus_action_group_get(connection.to_unsafe.as(LibGio::DBusConnection*), bus_name ? bus_name.to_unsafe : nil, object_path.to_unsafe)
      Gio::DBusActionGroup.new(__return_value)
    end

  end
end

