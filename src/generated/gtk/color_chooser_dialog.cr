require "./dialog"

module Gtk
  class ColorChooserDialog < Dialog
    @pointer : Void*
    def initialize(pointer : LibGtk::ColorChooserDialog*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::ColorChooserDialog*)
    end

    # Implements ImplementorIface
    # Implements Buildable
    # Implements ColorChooser
    def show_editor
      __return_value = LibGtk.color_chooser_dialog_get_show_editor(to_unsafe.as(LibGtk::ColorChooserDialog*))
      __return_value
    end

    def self.new(title, parent) : self
      __return_value = LibGtk.color_chooser_dialog_new(title ? title.to_unsafe : nil, parent ? parent.to_unsafe.as(LibGtk::Window*) : nil)
      cast Gtk::Widget.new(__return_value)
    end

  end
end

