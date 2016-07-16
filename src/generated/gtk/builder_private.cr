module Gtk
  class BuilderPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::BuilderPrivate*))
    end

    @gtk_builder_private : LibGtk::BuilderPrivate*?
    def initialize(@gtk_builder_private : LibGtk::BuilderPrivate*)
    end

    def to_unsafe
      @gtk_builder_private.not_nil!.as(Void*)
    end

  end
end

