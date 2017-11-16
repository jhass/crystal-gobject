require "./menu_item"

module Gtk
  class TearoffMenuItem < MenuItem
    @pointer : Void*
    def initialize(pointer : LibGtk::TearoffMenuItem*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::TearoffMenuItem*)
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

