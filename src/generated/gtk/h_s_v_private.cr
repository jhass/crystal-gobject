module Gtk
  class HSVPrivate
    include GObject::WrappedType

    def initialize(@gtk_h_s_v_private)
    end

    def to_unsafe
      @gtk_h_s_v_private.not_nil!
    end

  end
end

