module Gtk
  class Accessible < Atk::Object
    @gtk_accessible : LibGtk::Accessible*?
    def initialize(@gtk_accessible : LibGtk::Accessible*)
    end

    def to_unsafe
      @gtk_accessible.not_nil!
    end

    def widget
      __return_value = LibGtk.accessible_get_widget(to_unsafe.as(LibGtk::Accessible*))
      Gtk::Widget.new(__return_value)
    end

    def connect_widget_destroyed
      LibGtk.accessible_connect_widget_destroyed(to_unsafe.as(LibGtk::Accessible*))
      nil
    end

    def widget
      __return_value = LibGtk.accessible_get_widget(to_unsafe.as(LibGtk::Accessible*))
      Gtk::Widget.new(__return_value) if __return_value
    end

    def widget=(widget)
      LibGtk.accessible_set_widget(to_unsafe.as(LibGtk::Accessible*), widget ? widget.to_unsafe.as(LibGtk::Widget*) : nil)
      nil
    end

  end
end

