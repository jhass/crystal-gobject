module Gtk
  class IMMulticontextPrivate
    include GObject::WrappedType

    def initialize(@gtk_i_m_multicontext_private)
    end

    def to_unsafe
      @gtk_i_m_multicontext_private.not_nil!
    end

  end
end

