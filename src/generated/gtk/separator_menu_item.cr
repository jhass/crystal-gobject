require "./menu_item"

module Gtk
  class SeparatorMenuItem < MenuItem
    @gtk_separator_menu_item : LibGtk::SeparatorMenuItem*?
    def initialize(@gtk_separator_menu_item : LibGtk::SeparatorMenuItem*)
    end

    def to_unsafe
      @gtk_separator_menu_item.not_nil!.as(Void*)
    end

    # Implements ImplementorIface
    # Implements Actionable
    # Implements Activatable
    # Implements Buildable
    def self.new : self
      __return_value = LibGtk.separator_menu_item_new
      cast Gtk::Widget.new(__return_value)
    end

  end
end

