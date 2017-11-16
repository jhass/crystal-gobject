require "./dialog"

module Gtk
  class FontChooserDialog < Dialog
    @pointer : Void*
    def initialize(pointer : LibGtk::FontChooserDialog*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::FontChooserDialog*)
    end

    # Implements ImplementorIface
    # Implements Buildable
    # Implements FontChooser
    def self.new(title, parent) : self
      __return_value = LibGtk.font_chooser_dialog_new(title ? title.to_unsafe : nil, parent ? parent.to_unsafe.as(LibGtk::Window*) : nil)
      cast Gtk::Widget.new(__return_value)
    end

  end
end

