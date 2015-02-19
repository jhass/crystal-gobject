require "./box"

module Gtk
  class FileChooserWidget < Box
    def initialize @gtk_file_chooser_widget
    end

    def to_unsafe
      @gtk_file_chooser_widget.not_nil!
    end

    # Implements ImplementorIface
    # Implements Buildable
    # Implements FileChooser
    # Implements Orientable
    def self.new_internal(action)
      __return_value = LibGtk.file_chooser_widget_new(action)
      Gtk::Widget.new(__return_value)
    end

  end
end

