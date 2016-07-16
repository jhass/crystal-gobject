require "./box"

module Gtk
  class ColorChooserWidget < Box
    @gtk_color_chooser_widget : LibGtk::ColorChooserWidget*?
    def initialize(@gtk_color_chooser_widget : LibGtk::ColorChooserWidget*)
    end

    def to_unsafe
      @gtk_color_chooser_widget.not_nil!.as(Void*)
    end

    # Implements ImplementorIface
    # Implements Buildable
    # Implements ColorChooser
    # Implements Orientable

    def self.new : self
      __return_value = LibGtk.color_chooser_widget_new
      cast Gtk::Widget.new(__return_value)
    end

  end
end

