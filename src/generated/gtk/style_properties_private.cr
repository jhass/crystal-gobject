module Gtk
  class StylePropertiesPrivate
    include GObject::WrappedType

    @gtk_style_properties_private : LibGtk::StylePropertiesPrivate*?
    def initialize(@gtk_style_properties_private : LibGtk::StylePropertiesPrivate*)
    end

    def to_unsafe
      @gtk_style_properties_private.not_nil!
    end

  end
end

