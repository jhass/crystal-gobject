module Gtk
  class AlignmentPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::AlignmentPrivate*))
    end

    @gtk_alignment_private : LibGtk::AlignmentPrivate*?
    def initialize(@gtk_alignment_private : LibGtk::AlignmentPrivate*)
    end

    def to_unsafe
      @gtk_alignment_private.not_nil!.as(Void*)
    end

  end
end

