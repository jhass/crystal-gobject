module Gtk
  class IMMulticontextPrivate
    include GObject::WrappedType

    @gtk_i_m_multicontext_private : LibGtk::IMMulticontextPrivate*?
    def initialize(@gtk_i_m_multicontext_private : LibGtk::IMMulticontextPrivate*)
    end

    def to_unsafe
      @gtk_i_m_multicontext_private.not_nil!
    end

  end
end

