module Gtk
  class StylePropertiesPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::StylePropertiesPrivate*))
    end

    @gtk_style_properties_private : LibGtk::StylePropertiesPrivate*?
    def initialize(@gtk_style_properties_private : LibGtk::StylePropertiesPrivate*)
    end

    def to_unsafe
      @gtk_style_properties_private.not_nil!
    end

  end
end

