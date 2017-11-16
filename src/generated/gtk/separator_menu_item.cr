require "./menu_item"

module Gtk
  class SeparatorMenuItem < MenuItem
    @pointer : Void*
    def initialize(pointer : LibGtk::SeparatorMenuItem*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::SeparatorMenuItem*)
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

