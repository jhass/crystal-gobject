module Gtk

  # The `Gtk::Accessible` class is the base class for accessible
  # implementations for `Gtk::Widget` subclasses. It is a thin
  # wrapper around `Atk::Object`, which adds facilities for associating
  # a widget with its accessible object.
  class Accessible < Atk::Object
    @pointer : Void*
    def initialize(pointer : LibGtk::Accessible*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::Accessible*)
    end

    
    # Returns the "widget" property value
    #  The widget referenced by this accessible.
    def widget
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "widget", gvalue)
      Gtk::Widget.cast(gvalue.object)
    end

    
    # This function specifies the callback function to be called
    # when the widget corresponding to a `Gtk::Accessible` is destroyed.
    # DEPRECATED:Use `Gtk::Accessible#set_widget()` and its vfuncs.
    def connect_widget_destroyed
      LibGtk.accessible_connect_widget_destroyed(@pointer.as(LibGtk::Accessible*))
      nil
    end

    
    # Gets the `Gtk::Widget` corresponding to the `Gtk::Accessible`.
    # The returned widget does not have a reference added, so
    # you do not need to unref it.
    def widget
      __return_value = LibGtk.accessible_get_widget(@pointer.as(LibGtk::Accessible*))
      Gtk::Widget.new(__return_value) if __return_value
    end

    
    # This function specifies the callback function to be called
    # when the widget corresponding to a `Gtk::Accessible` is destroyed.
    def widget=(widget)
      LibGtk.accessible_set_widget(@pointer.as(LibGtk::Accessible*), widget ? widget.to_unsafe.as(LibGtk::Widget*) : nil)
      nil
    end

  end
end

