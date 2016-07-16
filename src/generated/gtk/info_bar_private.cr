module Gtk
  class InfoBarPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::InfoBarPrivate*))
    end

    @gtk_info_bar_private : LibGtk::InfoBarPrivate*?
    def initialize(@gtk_info_bar_private : LibGtk::InfoBarPrivate*)
    end

    def to_unsafe
      @gtk_info_bar_private.not_nil!
    end

  end
end

