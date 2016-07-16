module Gtk
  class PlugPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::PlugPrivate*))
    end

    @gtk_plug_private : LibGtk::PlugPrivate*?
    def initialize(@gtk_plug_private : LibGtk::PlugPrivate*)
    end

    def to_unsafe
      @gtk_plug_private.not_nil!
    end

  end
end

