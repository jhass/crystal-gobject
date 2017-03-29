require "./menu_item"

module Gtk
  class TearoffMenuItem < MenuItem
    @gtk_tearoff_menu_item : LibGtk::TearoffMenuItem*?
    def initialize(@gtk_tearoff_menu_item : LibGtk::TearoffMenuItem*)
    end

    def to_unsafe
      @gtk_tearoff_menu_item.not_nil!
    end

    # Implements ImplementorIface
    # Implements Actionable
    # Implements Activatable
    # Implements Buildable
    def self.new : self
      __return_value = LibGtk.tearoff_menu_item_new
      cast Gtk::Widget.new(__return_value)
    end

  end
end

