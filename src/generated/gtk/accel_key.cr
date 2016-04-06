module Gtk
  class AccelKey
    include GObject::WrappedType

    def initialize(@gtk_accel_key)
    end

    def to_unsafe
      @gtk_accel_key.not_nil!
    end

  end
end

