module Gtk
  class AccelKey
    include GObject::WrappedType

    @gtk_accel_key : LibGtk::AccelKey*?
    def initialize(@gtk_accel_key : LibGtk::AccelKey*)
    end

    def to_unsafe
      @gtk_accel_key.not_nil!
    end

  end
end

