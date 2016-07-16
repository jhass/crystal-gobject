module Gtk
  class LevelBarPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::LevelBarPrivate*))
    end

    @gtk_level_bar_private : LibGtk::LevelBarPrivate*?
    def initialize(@gtk_level_bar_private : LibGtk::LevelBarPrivate*)
    end

    def to_unsafe
      @gtk_level_bar_private.not_nil!.as(Void*)
    end

  end
end

