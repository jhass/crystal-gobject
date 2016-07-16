module Gtk
  class IMContextSimplePrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::IMContextSimplePrivate*))
    end

    @gtk_i_m_context_simple_private : LibGtk::IMContextSimplePrivate*?
    def initialize(@gtk_i_m_context_simple_private : LibGtk::IMContextSimplePrivate*)
    end

    def to_unsafe
      @gtk_i_m_context_simple_private.not_nil!
    end

  end
end

