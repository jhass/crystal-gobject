require "./combo_box"

module Gtk
  class AppChooserButton < ComboBox
    @gtk_app_chooser_button : LibGtk::AppChooserButton*?
    def initialize(@gtk_app_chooser_button : LibGtk::AppChooserButton*)
    end

    def to_unsafe
      @gtk_app_chooser_button.not_nil!.as(Void*)
    end

    # Implements ImplementorIface
    # Implements AppChooser
    # Implements Buildable
    # Implements CellEditable
    # Implements CellLayout



    def self.new(content_type) : self
      __return_value = LibGtk.app_chooser_button_new(content_type.to_unsafe)
      cast Gtk::Widget.new(__return_value)
    end

    def append_custom_item(name, label, icon)
      __return_value = LibGtk.app_chooser_button_append_custom_item(to_unsafe.as(LibGtk::AppChooserButton*), name.to_unsafe, label.to_unsafe, icon.to_unsafe.as(LibGio::Icon*))
      __return_value
    end

    def append_separator
      __return_value = LibGtk.app_chooser_button_append_separator(to_unsafe.as(LibGtk::AppChooserButton*))
      __return_value
    end

    def heading
      __return_value = LibGtk.app_chooser_button_get_heading(to_unsafe.as(LibGtk::AppChooserButton*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value)) if __return_value
    end

    def show_default_item
      __return_value = LibGtk.app_chooser_button_get_show_default_item(to_unsafe.as(LibGtk::AppChooserButton*))
      __return_value
    end

    def show_dialog_item
      __return_value = LibGtk.app_chooser_button_get_show_dialog_item(to_unsafe.as(LibGtk::AppChooserButton*))
      __return_value
    end

    def active_custom_item=(name)
      __return_value = LibGtk.app_chooser_button_set_active_custom_item(to_unsafe.as(LibGtk::AppChooserButton*), name.to_unsafe)
      __return_value
    end

    def heading=(heading)
      __return_value = LibGtk.app_chooser_button_set_heading(to_unsafe.as(LibGtk::AppChooserButton*), heading.to_unsafe)
      __return_value
    end

    def show_default_item=(setting)
      __return_value = LibGtk.app_chooser_button_set_show_default_item(to_unsafe.as(LibGtk::AppChooserButton*), setting)
      __return_value
    end

    def show_dialog_item=(setting)
      __return_value = LibGtk.app_chooser_button_set_show_dialog_item(to_unsafe.as(LibGtk::AppChooserButton*), setting)
      __return_value
    end

    alias CustomItemActivatedSignal = AppChooserButton, String ->
    def on_custom_item_activated(&__block : CustomItemActivatedSignal)
      __callback = ->(_arg0 : LibGtk::AppChooserButton*, _arg1 : LibGtk::UInt8**) {
       __return_value = __block.call(AppChooserButton.new(_arg0), (raise "Expected string but got null" unless _arg1; ::String.new(_arg1)))
       __return_value
      }
      connect("custom-item-activated", __callback)
    end

  end
end

