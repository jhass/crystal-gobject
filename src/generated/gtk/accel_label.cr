require "./label"

module Gtk

  # The `Gtk::AccelLabel` widget is a subclass of `Gtk::Label` that also displays an
  # accelerator key on the right of the label text, e.g. “Ctrl+S”.
  # It is commonly used in menus to show the keyboard short-cuts for commands.
  class AccelLabel < Label
    @pointer : Void*
    def initialize(pointer : LibGtk::AccelLabel*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::AccelLabel*)
    end

    # Implements ImplementorIface
    # Implements Buildable
    
    # Returns the "accel_closure" property value
    #  The closure to be monitored for accelerator changes.
    def accel_closure
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "accel_closure", gvalue)
      GObject::Closure.cast(gvalue.object)
    end

    
    # Returns the "accel_widget" property value
    #  The widget to be monitored for accelerator changes.
    def accel_widget
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "accel_widget", gvalue)
      Gtk::Widget.cast(gvalue.object)
    end

    
    # Creates a new `Gtk::AccelLabel`.
    # Parameters:
    #   *string* - the label string. Must be non-`nil`.
    def self.new(string) : self
      __return_value = LibGtk.accel_label_new(string.to_unsafe)
      cast Gtk::Widget.new(__return_value)
    end

    
    # Fetches the widget monitored by this accelerator label. See
    # `Gtk::AccelLabel#set_accel_widget()`.
    def accel(accelerator_key, accelerator_mods : Gdk::ModifierType)
      LibGtk.accel_label_get_accel(@pointer.as(LibGtk::AccelLabel*), accelerator_key, accelerator_mods)
      nil
    end

    
    # Fetches the widget monitored by this accelerator label. See
    # `Gtk::AccelLabel#set_accel_widget()`.
    def accel_widget
      __return_value = LibGtk.accel_label_get_accel_widget(@pointer.as(LibGtk::AccelLabel*))
      Gtk::Widget.new(__return_value) if __return_value
    end

    
    # Returns the width needed to display the accelerator key(s).
    # This is used by menus to align all of the `Gtk::MenuItem` widgets, and shouldn't
    # be needed by applications.
    def accel_width
      __return_value = LibGtk.accel_label_get_accel_width(@pointer.as(LibGtk::AccelLabel*))
      __return_value
    end

    
    # Recreates the string representing the accelerator keys.
    # This should not be needed since the string is automatically updated whenever
    # accelerators are added or removed from the associated widget.
    def refetch
      __return_value = LibGtk.accel_label_refetch(@pointer.as(LibGtk::AccelLabel*))
      __return_value
    end

    
    # Manually sets a keyval and modifier mask as the accelerator rendered by accel_label .
    # If a keyval and modifier are explicitly set then these values are used
    # regardless of any associated accel closure or widget. 
    # Providing an accelerator_key of 0 removes the manual setting.
    # Parameters:
    #   *accelerator_key* - a keyval, or 0
    #	*accelerator_mods* - the modifier mask for the accel
    def set_accel(accelerator_key, accelerator_mods : Gdk::ModifierType)
      LibGtk.accel_label_set_accel(@pointer.as(LibGtk::AccelLabel*), UInt32.new(accelerator_key), accelerator_mods)
      nil
    end

    
    # Sets the closure to be monitored by this accelerator label. The closure
    # must be connected to an accelerator group; see `Gtk::AccelGroup#connect()`.
    # Passing `nil` for *accel_closure* will dissociate this *accel_label*
    #  from its current closure, if any.
    # Parameters:
    #   *accel_closure* - the closure to monitor for accelerator chaknges, or `nil`. 
    def accel_closure=(accel_closure)
      LibGtk.accel_label_set_accel_closure(@pointer.as(LibGtk::AccelLabel*), accel_closure ? accel_closure.to_unsafe.as(LibGObject::Closure*) : nil)
      nil
    end

    
    # Sets the widget to be monitored by this accelerator label.
    # Passing `nil` for *accel_widget* will dissociate *accel_label* from its current widget, if any.
    # Parameters:
    #   *accel_widget* - the widget to be monitored, or `nil`. 
    def accel_widget=(accel_widget)
      LibGtk.accel_label_set_accel_widget(@pointer.as(LibGtk::AccelLabel*), accel_widget ? accel_widget.to_unsafe.as(LibGtk::Widget*) : nil)
      nil
    end

  end
end

