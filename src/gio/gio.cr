require "../g_object"
require "../generated/gio/application_command_line"
require "../generated/gio/file"
require "../generated/gio/i_o_stream"
require "../generated/gio/d_bus_method_invocation"
require "../generated/gio/d_bus_object_proxy"
require "../generated/gio/d_bus_proxy"
require "../generated/gio/file_monitor_event"
require "../generated/gio/mount_operation_result"
require "../generated/gio/volume"
require "../generated/gio/socket_client_event"
require "../generated/gio/socket_connectable"
require "../generated/gio/socket_listener_event"
require "../generated/gio"
require "./*"

module Gio
    class SimpleAction
        def on_activate(&__block : ActivateSignal)
            __callback = ->(_arg0 : LibGio::SimpleAction*, _arg1 : LibGLib::Variant*) {
             __return_value = __block.call(SimpleAction.new(_arg0), GLib::Variant.new(_arg1))
             __return_value
            }
            connect("activate", __callback)
        end
    end
end