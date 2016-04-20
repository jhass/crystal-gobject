module Gtk
  class AccelGroupPrivate
    include GObject::WrappedType

    @gtk_accel_group_private : LibGtk::AccelGroupPrivate*?
    def initialize(@gtk_accel_group_private : LibGtk::AccelGroupPrivate*)
    end

    def to_unsafe
      @gtk_accel_group_private.not_nil!
    end

  end
end

