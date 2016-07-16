module Gtk
  class ComboBoxAccessiblePrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::ComboBoxAccessiblePrivate*))
    end

    @gtk_combo_box_accessible_private : LibGtk::ComboBoxAccessiblePrivate*?
    def initialize(@gtk_combo_box_accessible_private : LibGtk::ComboBoxAccessiblePrivate*)
    end

    def to_unsafe
      @gtk_combo_box_accessible_private.not_nil!
    end

  end
end

