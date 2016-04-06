module Gtk
  class AccelGroupEntry
    include GObject::WrappedType

    def initialize(@gtk_accel_group_entry)
    end

    def to_unsafe
      @gtk_accel_group_entry.not_nil!
    end

  end
end

