require "./bin"

module Gtk
  class ActionBar < Bin
    @pointer : Void*
    def initialize(pointer : LibGtk::ActionBar*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::ActionBar*)
    end

    # Implements ImplementorIface
    # Implements Buildable
    def self.new : self
      __return_value = LibGtk.action_bar_new
      cast Gtk::Widget.new(__return_value)
    end

    def center_widget
      __return_value = LibGtk.action_bar_get_center_widget(@pointer.as(LibGtk::ActionBar*))
      Gtk::Widget.new(__return_value) if __return_value
    end

    def pack_end(child)
      LibGtk.action_bar_pack_end(@pointer.as(LibGtk::ActionBar*), child.to_unsafe.as(LibGtk::Widget*))
      nil
    end

    def pack_start(child)
      LibGtk.action_bar_pack_start(@pointer.as(LibGtk::ActionBar*), child.to_unsafe.as(LibGtk::Widget*))
      nil
    end

    def center_widget=(center_widget)
      LibGtk.action_bar_set_center_widget(@pointer.as(LibGtk::ActionBar*), center_widget ? center_widget.to_unsafe.as(LibGtk::Widget*) : nil)
      nil
    end

  end
end

