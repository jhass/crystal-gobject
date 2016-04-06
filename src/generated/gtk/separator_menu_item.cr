require "./menu_item"

module Gtk
  class SeparatorMenuItem < MenuItem
    def initialize(@gtk_separator_menu_item)
    end

    def to_unsafe
      @gtk_separator_menu_item.not_nil!
    end

    # Implements ImplementorIface
    # Implements Actionable
    # Implements Activatable
    # Implements Buildable
    def self.new_internal
      __return_value = LibGtk.separator_menu_item_new
      Gtk::Widget.new(__return_value)
    end

  end
end

