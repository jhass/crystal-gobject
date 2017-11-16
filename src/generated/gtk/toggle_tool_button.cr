require "./tool_button"

module Gtk
  class ToggleToolButton < ToolButton
    @pointer : Void*
    def initialize(pointer : LibGtk::ToggleToolButton*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::ToggleToolButton*)
    end

    # Implements ImplementorIface
    # Implements Actionable
    # Implements Activatable
    # Implements Buildable
    def active
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "active", gvalue)
      gvalue.boolean
    end

    def self.new : self
      __return_value = LibGtk.toggle_tool_button_new
      cast Gtk::ToolItem.new(__return_value)
    end

    def self.new_from_stock(stock_id) : self
      __return_value = LibGtk.toggle_tool_button_new_from_stock(stock_id.to_unsafe)
      cast Gtk::ToolItem.new(__return_value)
    end

    def active
      __return_value = LibGtk.toggle_tool_button_get_active(@pointer.as(LibGtk::ToggleToolButton*))
      __return_value
    end

    def active=(is_active)
      LibGtk.toggle_tool_button_set_active(@pointer.as(LibGtk::ToggleToolButton*), is_active)
      nil
    end

    alias ToggledSignal = ToggleToolButton ->
    def on_toggled(&__block : ToggledSignal)
      __callback = ->(_arg0 : LibGtk::ToggleToolButton*) {
       __return_value = __block.call(ToggleToolButton.new(_arg0))
       __return_value
      }
      connect("toggled", __callback)
    end

  end
end

