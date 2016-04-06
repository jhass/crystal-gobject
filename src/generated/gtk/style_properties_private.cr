module Gtk
  class StylePropertiesPrivate
    include GObject::WrappedType

    def initialize(@gtk_style_properties_private)
    end

    def to_unsafe
      @gtk_style_properties_private.not_nil!
    end

  end
end

