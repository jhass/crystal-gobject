module Gtk
  class IMContextSimplePrivate
    include GObject::WrappedType

    @gtk_i_m_context_simple_private : LibGtk::IMContextSimplePrivate*?
    def initialize(@gtk_i_m_context_simple_private : LibGtk::IMContextSimplePrivate*)
    end

    def to_unsafe
      @gtk_i_m_context_simple_private.not_nil!.as(Void*)
    end

  end
end

