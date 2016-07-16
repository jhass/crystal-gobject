module Gtk
  class AccelGroupPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::AccelGroupPrivate*))
    end

    @gtk_accel_group_private : LibGtk::AccelGroupPrivate*?
    def initialize(@gtk_accel_group_private : LibGtk::AccelGroupPrivate*)
    end

    def to_unsafe
      @gtk_accel_group_private.not_nil!
    end

  end
end

