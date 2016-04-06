module Gtk
  class RadioActionEntry
    include GObject::WrappedType

    def initialize(@gtk_radio_action_entry)
    end

    def to_unsafe
      @gtk_radio_action_entry.not_nil!
    end

  end
end

