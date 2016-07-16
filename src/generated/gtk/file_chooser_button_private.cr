module Gtk
  class FileChooserButtonPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::FileChooserButtonPrivate*))
    end

    @gtk_file_chooser_button_private : LibGtk::FileChooserButtonPrivate*?
    def initialize(@gtk_file_chooser_button_private : LibGtk::FileChooserButtonPrivate*)
    end

    def to_unsafe
      @gtk_file_chooser_button_private.not_nil!
    end

  end
end

