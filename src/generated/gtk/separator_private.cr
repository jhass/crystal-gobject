module Gtk
  class SeparatorPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::SeparatorPrivate*))
    end

    @gtk_separator_private : LibGtk::SeparatorPrivate*?
    def initialize(@gtk_separator_private : LibGtk::SeparatorPrivate*)
    end

    def to_unsafe
      @gtk_separator_private.not_nil!
    end

  end
end

