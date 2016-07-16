module Gtk
  class LevelBarAccessiblePrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::LevelBarAccessiblePrivate*))
    end

    @gtk_level_bar_accessible_private : LibGtk::LevelBarAccessiblePrivate*?
    def initialize(@gtk_level_bar_accessible_private : LibGtk::LevelBarAccessiblePrivate*)
    end

    def to_unsafe
      @gtk_level_bar_accessible_private.not_nil!
    end

  end
end

