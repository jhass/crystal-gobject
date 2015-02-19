require "./box"

module Gtk
  class ColorChooserWidget < Box
    def initialize @gtk_color_chooser_widget
    end

    def to_unsafe
      @gtk_color_chooser_widget.not_nil!
    end

    # Implements ImplementorIface
    # Implements Buildable
    # Implements ColorChooser
    # Implements Orientable
    def show_editor=(__value)
      LibGtk.color_chooser_widget_set_show_editor((to_unsafe as LibGtk::ColorChooserWidget*), Bool.cast(__value))
    end

    def self.new_internal
      __return_value = LibGtk.color_chooser_widget_new
      Gtk::Widget.new(__return_value)
    end

  end
end

