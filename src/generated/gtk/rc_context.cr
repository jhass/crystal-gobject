module Gtk
  class RcContext
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::RcContext*))
    end

    @gtk_rc_context : LibGtk::RcContext*?
    def initialize(@gtk_rc_context : LibGtk::RcContext*)
    end

    def to_unsafe
      @gtk_rc_context.not_nil!.as(Void*)
    end

  end
end

