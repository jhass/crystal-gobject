require "./box"

module Gtk
  class ColorChooserWidget < Box
    @gtk_color_chooser_widget : LibGtk::ColorChooserWidget*?
    def initialize(@gtk_color_chooser_widget : LibGtk::ColorChooserWidget*)
    end

    def to_unsafe
      @gtk_color_chooser_widget.not_nil!
    end

    # Implements ImplementorIface
    # Implements Buildable
    # Implements ColorChooser
    # Implements Orientable
    def show_editor
      __return_value = LibGtk.color_chooser_widget_get_show_editor(to_unsafe.as(LibGtk::ColorChooserWidget*))
      __return_value
    end

    def self.new : self
      __return_value = LibGtk.color_chooser_widget_new
      cast Gtk::Widget.new(__return_value)
    end

  end
end

