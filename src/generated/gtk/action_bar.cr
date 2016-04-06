require "./bin"

module Gtk
  class ActionBar < Bin
    def initialize(@gtk_action_bar)
    end

    def to_unsafe
      @gtk_action_bar.not_nil!
    end

    # Implements ImplementorIface
    # Implements Buildable
    def self.new_internal
      __return_value = LibGtk.action_bar_new
      Gtk::Widget.new(__return_value)
    end

    def center_widget
      __return_value = LibGtk.action_bar_get_center_widget((to_unsafe as LibGtk::ActionBar*))
      Gtk::Widget.new(__return_value)
    end

    def pack_end(child)
      __return_value = LibGtk.action_bar_pack_end((to_unsafe as LibGtk::ActionBar*), (child.to_unsafe as LibGtk::Widget*))
      __return_value
    end

    def pack_start(child)
      __return_value = LibGtk.action_bar_pack_start((to_unsafe as LibGtk::ActionBar*), (child.to_unsafe as LibGtk::Widget*))
      __return_value
    end

    def center_widget=(center_widget)
      __return_value = LibGtk.action_bar_set_center_widget((to_unsafe as LibGtk::ActionBar*), center_widget && (center_widget.to_unsafe as LibGtk::Widget*))
      __return_value
    end

  end
end

