require "./check_menu_item"

module Gtk
  class RadioMenuItem < CheckMenuItem
    def initialize(@gtk_radio_menu_item)
    end

    def to_unsafe
      @gtk_radio_menu_item.not_nil!
    end

    # Implements ImplementorIface
    # Implements Actionable
    # Implements Activatable
    # Implements Buildable

    def self.new_internal(group)
      __return_value = LibGtk.radio_menu_item_new(group && group)
      Gtk::Widget.new(__return_value)
    end

    def self.new_from_widget(group)
      __return_value = LibGtk.radio_menu_item_new_from_widget(group && (group.to_unsafe as LibGtk::RadioMenuItem*))
      Gtk::Widget.new(__return_value)
    end

    def self.new_with_label(group, label)
      __return_value = LibGtk.radio_menu_item_new_with_label(group && group, label)
      Gtk::Widget.new(__return_value)
    end

    def self.new_with_label_from_widget(group, label)
      __return_value = LibGtk.radio_menu_item_new_with_label_from_widget(group && (group.to_unsafe as LibGtk::RadioMenuItem*), label && label)
      Gtk::Widget.new(__return_value)
    end

    def self.new_with_mnemonic(group, label)
      __return_value = LibGtk.radio_menu_item_new_with_mnemonic(group && group, label)
      Gtk::Widget.new(__return_value)
    end

    def self.new_with_mnemonic_from_widget(group, label)
      __return_value = LibGtk.radio_menu_item_new_with_mnemonic_from_widget(group && (group.to_unsafe as LibGtk::RadioMenuItem*), label && label)
      Gtk::Widget.new(__return_value)
    end

    def group
      __return_value = LibGtk.radio_menu_item_get_group((to_unsafe as LibGtk::RadioMenuItem*))
      __return_value
    end

    def join_group(group_source)
      __return_value = LibGtk.radio_menu_item_join_group((to_unsafe as LibGtk::RadioMenuItem*), group_source && (group_source.to_unsafe as LibGtk::RadioMenuItem*))
      __return_value
    end

    def group=(group)
      __return_value = LibGtk.radio_menu_item_set_group((to_unsafe as LibGtk::RadioMenuItem*), group && group)
      __return_value
    end

    alias GroupChangedSignal = RadioMenuItem -> 
    def on_group_changed(&__block : GroupChangedSignal)
      __callback = ->(_arg0 : LibGtk::RadioMenuItem*) {
       __return_value = __block.call(RadioMenuItem.new(_arg0))
       __return_value
      }
      connect("group-changed", __callback)
    end

  end
end

