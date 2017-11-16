require "./box"

module Gtk
  class RecentChooserWidget < Box
    @pointer : Void*
    def initialize(pointer : LibGtk::RecentChooserWidget*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::RecentChooserWidget*)
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

