module Gtk
  class LevelBarPrivate
    include GObject::WrappedType

    @gtk_level_bar_private : LibGtk::LevelBarPrivate*?
    def initialize(@gtk_level_bar_private : LibGtk::LevelBarPrivate*)
    end

    def to_unsafe
      @gtk_level_bar_private.not_nil!
    end

  end
end

