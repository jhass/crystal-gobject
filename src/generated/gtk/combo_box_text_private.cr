module Gtk
  class ComboBoxTextPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::ComboBoxTextPrivate*))
    end

    @gtk_combo_box_text_private : LibGtk::ComboBoxTextPrivate*?
    def initialize(@gtk_combo_box_text_private : LibGtk::ComboBoxTextPrivate*)
    end

    def to_unsafe
      @gtk_combo_box_text_private.not_nil!
    end

  end
end

