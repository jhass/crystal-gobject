require "./bin"

module Gtk

  # Gtk::ActionBar is designed to present contextual actions. It is
  # expected to be displayed below the content and expand horizontally
  # to fill the area.
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
    
    # Creates a new `Gtk::ActionBar` widget.
    def self.new : self
      __return_value = LibGtk.action_bar_new
      cast Gtk::Widget.new(__return_value)
    end

    
    # Retrieves the center bar widget of the bar.
    def center_widget
      __return_value = LibGtk.action_bar_get_center_widget(@pointer.as(LibGtk::ActionBar*))
      Gtk::Widget.new(__return_value) if __return_value
    end
    
    # Adds *child*  to `Gtk::ActionBar`, packed with reference to the
    # end of the `Gtk::ActionBar`.
    # Parameters:
    #   *child* - the `Gtk::Widget` to be added to `Gtk::ActionBar`
    def pack_end(child)
      LibGtk.action_bar_pack_end(@pointer.as(LibGtk::ActionBar*), child.to_unsafe.as(LibGtk::Widget*))
      nil
    end

    
    # Adds *child*  to `Gtk::ActionBar`, packed with reference to the
    # start of the `Gtk::ActionBar`.
    # Parameters:
    #   *child* - the `Gtk::Widget` to be added to `Gtk::ActionBar`
    def pack_start(child)
      LibGtk.action_bar_pack_start(@pointer.as(LibGtk::ActionBar*), child.to_unsafe.as(LibGtk::Widget*))
      nil
    end

    
    # Sets the center widget for the `Gtk::ActionBar`.
    # Parameters:
    #   *center_widget* - a widget to use for the center. 
    def center_widget=(center_widget)
      LibGtk.action_bar_set_center_widget(@pointer.as(LibGtk::ActionBar*), center_widget ? center_widget.to_unsafe.as(LibGtk::Widget*) : nil)
      nil
    end

  end
end

