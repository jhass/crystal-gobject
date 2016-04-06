require "./box"

module Gtk
  class RecentChooserWidget < Box
    def initialize(@gtk_recent_chooser_widget)
    end

    def to_unsafe
      @gtk_recent_chooser_widget.not_nil!
    end

    # Implements ImplementorIface
    # Implements Buildable
    # Implements Orientable
    # Implements RecentChooser
    def self.new_internal
      __return_value = LibGtk.recent_chooser_widget_new
      Gtk::Widget.new(__return_value)
    end

    def self.new_for_manager(manager)
      __return_value = LibGtk.recent_chooser_widget_new_for_manager((manager.to_unsafe as LibGtk::RecentManager*))
      Gtk::Widget.new(__return_value)
    end

  end
end

