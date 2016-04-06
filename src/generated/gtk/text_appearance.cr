module Gtk
  class TextAppearance
    include GObject::WrappedType

    def initialize(@gtk_text_appearance)
    end

    def to_unsafe
      @gtk_text_appearance.not_nil!
    end

  end
end

