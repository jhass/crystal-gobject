module Gtk
  class AccelGroupEntry
    include GObject::WrappedType

    @gtk_accel_group_entry : LibGtk::AccelGroupEntry*?
    def initialize(@gtk_accel_group_entry : LibGtk::AccelGroupEntry*)
    end

    def to_unsafe
      @gtk_accel_group_entry.not_nil!
    end

  end
end

