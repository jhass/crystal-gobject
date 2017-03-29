require "./bin"

module Gtk
  class ActionBar < Bin
    @gtk_action_bar : LibGtk::ActionBar*?
    def initialize(@gtk_action_bar : LibGtk::ActionBar*)
    end

    def to_unsafe
      @gtk_action_bar.not_nil!
    end

    # Implements ImplementorIface
    # Implements Buildable
    def self.new : self
      __return_value = LibGtk.action_bar_new
      cast Gtk::Widget.new(__return_value)
    end

    def center_widget
      __return_value = LibGtk.action_bar_get_center_widget(to_unsafe.as(LibGtk::ActionBar*))
      Gtk::Widget.new(__return_value) if __return_value
    end

    def pack_end(child)
      __return_value = LibGtk.action_bar_pack_end(to_unsafe.as(LibGtk::ActionBar*), child.to_unsafe.as(LibGtk::Widget*))
      __return_value
    end

    def pack_start(child)
      __return_value = LibGtk.action_bar_pack_start(to_unsafe.as(LibGtk::ActionBar*), child.to_unsafe.as(LibGtk::Widget*))
      __return_value
    end

    def center_widget=(center_widget)
      __return_value = LibGtk.action_bar_set_center_widget(to_unsafe.as(LibGtk::ActionBar*), center_widget ? center_widget.to_unsafe.as(LibGtk::Widget*) : nil)
      __return_value
    end

  end
end

