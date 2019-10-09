require "./combo_box"

module Gtk
  class AppChooserButton < ComboBox
    @pointer : Void*
    def initialize(pointer : LibGtk::AppChooserButton*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::AppChooserButton*)
    end

    # Implements ImplementorIface
    # Implements AppChooser
    # Implements Buildable
    # Implements CellEditable
    # Implements CellLayout
    def heading
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "heading", gvalue)
      gvalue.string
    end

    def show_default_item
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "show_default_item", gvalue)
      gvalue.boolean
    end

    def show_dialog_item
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "show_dialog_item", gvalue)
      gvalue.boolean
    end

    def self.new(content_type) : self
      __return_value = LibGtk.app_chooser_button_new(content_type.to_unsafe)
      cast Gtk::Widget.new(__return_value)
    end

    def append_custom_item(name, label, icon)
      LibGtk.app_chooser_button_append_custom_item(@pointer.as(LibGtk::AppChooserButton*), name.to_unsafe, label.to_unsafe, icon.to_unsafe.as(LibGio::Icon*))
      nil
    end

    def append_separator
      LibGtk.app_chooser_button_append_separator(@pointer.as(LibGtk::AppChooserButton*))
      nil
    end

    def heading
      __return_value = LibGtk.app_chooser_button_get_heading(@pointer.as(LibGtk::AppChooserButton*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value)) if __return_value
    end

    def show_default_item
      __return_value = LibGtk.app_chooser_button_get_show_default_item(@pointer.as(LibGtk::AppChooserButton*))
      __return_value
    end

    def show_dialog_item
      __return_value = LibGtk.app_chooser_button_get_show_dialog_item(@pointer.as(LibGtk::AppChooserButton*))
      __return_value
    end

    def active_custom_item=(name)
      LibGtk.app_chooser_button_set_active_custom_item(@pointer.as(LibGtk::AppChooserButton*), name.to_unsafe)
      nil
    end

    def heading=(heading)
      LibGtk.app_chooser_button_set_heading(@pointer.as(LibGtk::AppChooserButton*), heading.to_unsafe)
      nil
    end

    def show_default_item=(setting)
      LibGtk.app_chooser_button_set_show_default_item(@pointer.as(LibGtk::AppChooserButton*), setting)
      nil
    end

    def show_dialog_item=(setting)
      LibGtk.app_chooser_button_set_show_dialog_item(@pointer.as(LibGtk::AppChooserButton*), setting)
      nil
    end

    alias CustomItemActivatedSignal = AppChooserButton, String ->
    def on_custom_item_activated(&__block : CustomItemActivatedSignal)
      __callback = ->(_arg0 : LibGtk::AppChooserButton*, _arg1 : UInt8**) {
       __return_value = __block.call(AppChooserButton.new(_arg0), (raise "Expected string but got null" unless _arg1; ::String.new(_arg1)))
       __return_value
      }
      connect("custom-item-activated", __callback)
    end

  end
end

