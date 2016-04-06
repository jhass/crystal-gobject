module Gtk
  class RcContext
    include GObject::WrappedType

    def initialize(@gtk_rc_context)
    end

    def to_unsafe
      @gtk_rc_context.not_nil!
    end

  end
end

