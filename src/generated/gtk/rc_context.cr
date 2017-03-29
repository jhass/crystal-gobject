module Gtk
  class RcContext
    include GObject::WrappedType

    @gtk_rc_context : LibGtk::RcContext*?
    def initialize(@gtk_rc_context : LibGtk::RcContext*)
    end

    def to_unsafe
      @gtk_rc_context.not_nil!
    end

  end
end

