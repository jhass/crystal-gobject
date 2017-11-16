require "./tool_item"

module Gtk
  class ToolButton < ToolItem
    @pointer : Void*
    def initialize(pointer : LibGtk::ToolButton*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::ToolButton*)
    end

    # Implements ImplementorIface
    # Implements Actionable
    # Implements Activatable
    # Implements Buildable
    def icon_name
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "icon_name", gvalue)
      gvalue.string
    end

    def icon_widget
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "icon_widget", gvalue)
      Gtk::Widget.cast(gvalue.object)
    end

    def label
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "label", gvalue)
      gvalue.string
    end

    def label_widget
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "label_widget", gvalue)
      Gtk::Widget.cast(gvalue.object)
    end

    def stock_id
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "stock_id", gvalue)
      gvalue.string
    end

    def use_underline
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "use_underline", gvalue)
      gvalue.boolean
    end

    def self.new(icon_widget, label) : self
      __return_value = LibGtk.tool_button_new(icon_widget ? icon_widget.to_unsafe.as(LibGtk::Widget*) : nil, label ? label.to_unsafe : nil)
      cast Gtk::ToolItem.new(__return_value)
    end

    def self.new_from_stock(stock_id) : self
      __return_value = LibGtk.tool_button_new_from_stock(stock_id.to_unsafe)
      cast Gtk::ToolItem.new(__return_value)
    end

    def icon_name
      __return_value = LibGtk.tool_button_get_icon_name(@pointer.as(LibGtk::ToolButton*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value)) if __return_value
    end

    def icon_widget
      __return_value = LibGtk.tool_button_get_icon_widget(@pointer.as(LibGtk::ToolButton*))
      Gtk::Widget.new(__return_value) if __return_value
    end

    def label
      __return_value = LibGtk.tool_button_get_label(@pointer.as(LibGtk::ToolButton*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value)) if __return_value
    end

    def label_widget
      __return_value = LibGtk.tool_button_get_label_widget(@pointer.as(LibGtk::ToolButton*))
      Gtk::Widget.new(__return_value) if __return_value
    end

    def stock_id
      __return_value = LibGtk.tool_button_get_stock_id(@pointer.as(LibGtk::ToolButton*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def use_underline
      __return_value = LibGtk.tool_button_get_use_underline(@pointer.as(LibGtk::ToolButton*))
      __return_value
    end

    def icon_name=(icon_name)
      LibGtk.tool_button_set_icon_name(@pointer.as(LibGtk::ToolButton*), icon_name ? icon_name.to_unsafe : nil)
      nil
    end

    def icon_widget=(icon_widget)
      LibGtk.tool_button_set_icon_widget(@pointer.as(LibGtk::ToolButton*), icon_widget ? icon_widget.to_unsafe.as(LibGtk::Widget*) : nil)
      nil
    end

    def label=(label)
      LibGtk.tool_button_set_label(@pointer.as(LibGtk::ToolButton*), label ? label.to_unsafe : nil)
      nil
    end

    def label_widget=(label_widget)
      LibGtk.tool_button_set_label_widget(@pointer.as(LibGtk::ToolButton*), label_widget ? label_widget.to_unsafe.as(LibGtk::Widget*) : nil)
      nil
    end

    def stock_id=(stock_id)
      LibGtk.tool_button_set_stock_id(@pointer.as(LibGtk::ToolButton*), stock_id ? stock_id.to_unsafe : nil)
      nil
    end

    def use_underline=(use_underline)
      LibGtk.tool_button_set_use_underline(@pointer.as(LibGtk::ToolButton*), use_underline)
      nil
    end

    alias ClickedSignal = ToolButton ->
    def on_clicked(&__block : ClickedSignal)
      __callback = ->(_arg0 : LibGtk::ToolButton*) {
       __return_value = __block.call(ToolButton.new(_arg0))
       __return_value
      }
      connect("clicked", __callback)
    end

  end
end

