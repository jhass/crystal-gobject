module Gtk
  class RadioActionEntry
    include GObject::WrappedType

    @gtk_radio_action_entry : LibGtk::RadioActionEntry*?
    def initialize(@gtk_radio_action_entry : LibGtk::RadioActionEntry*)
    end

    def to_unsafe
      @gtk_radio_action_entry.not_nil!
    end

  end
end

