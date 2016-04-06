module Gtk
  class IMContextSimplePrivate
    include GObject::WrappedType

    def initialize(@gtk_i_m_context_simple_private)
    end

    def to_unsafe
      @gtk_i_m_context_simple_private.not_nil!
    end

  end
end

