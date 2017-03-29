require "./box"

module Gtk
  class RecentChooserWidget < Box
    @gtk_recent_chooser_widget : LibGtk::RecentChooserWidget*?
    def initialize(@gtk_recent_chooser_widget : LibGtk::RecentChooserWidget*)
    end

    def to_unsafe
      @gtk_recent_chooser_widget.not_nil!
    end

    # Implements ImplementorIface
    # Implements Buildable
    # Implements Orientable
    # Implements RecentChooser
    def self.new : self
      __return_value = LibGtk.recent_chooser_widget_new
      cast Gtk::Widget.new(__return_value)
    end

    def self.new_for_manager(manager) : self
      __return_value = LibGtk.recent_chooser_widget_new_for_manager(manager.to_unsafe.as(LibGtk::RecentManager*))
      cast Gtk::Widget.new(__return_value)
    end

  end
end

