module Gtk
  class AccelGroupPrivate
    include GObject::WrappedType

    def initialize(@gtk_accel_group_private)
    end

    def to_unsafe
      @gtk_accel_group_private.not_nil!
    end

  end
end

