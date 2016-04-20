module Gtk
  class TextAppearance
    include GObject::WrappedType

    @gtk_text_appearance : LibGtk::TextAppearance*?
    def initialize(@gtk_text_appearance : LibGtk::TextAppearance*)
    end

    def to_unsafe
      @gtk_text_appearance.not_nil!
    end

  end
end

