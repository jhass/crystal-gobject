module Gtk
  class AppChooserButtonPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::AppChooserButtonPrivate*))
    end

    @gtk_app_chooser_button_private : LibGtk::AppChooserButtonPrivate*?
    def initialize(@gtk_app_chooser_button_private : LibGtk::AppChooserButtonPrivate*)
    end

    def to_unsafe
      @gtk_app_chooser_button_private.not_nil!.as(Void*)
    end

  end
end

