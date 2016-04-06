module Gtk
  class Accessible < Atk::Object
    def initialize(@gtk_accessible)
    end

    def to_unsafe
      @gtk_accessible.not_nil!
    end


    def connect_widget_destroyed
      __return_value = LibGtk.accessible_connect_widget_destroyed((to_unsafe as LibGtk::Accessible*))
      __return_value
    end

    def widget
      __return_value = LibGtk.accessible_get_widget((to_unsafe as LibGtk::Accessible*))
      Gtk::Widget.new(__return_value)
    end

    def widget=(widget)
      __return_value = LibGtk.accessible_set_widget((to_unsafe as LibGtk::Accessible*), widget && (widget.to_unsafe as LibGtk::Widget*))
      __return_value
    end

  end
end

