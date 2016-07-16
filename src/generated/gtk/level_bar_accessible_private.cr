module Gtk
  class LevelBarAccessiblePrivate
    include GObject::WrappedType

    @gtk_level_bar_accessible_private : LibGtk::LevelBarAccessiblePrivate*?
    def initialize(@gtk_level_bar_accessible_private : LibGtk::LevelBarAccessiblePrivate*)
    end

    def to_unsafe
      @gtk_level_bar_accessible_private.not_nil!.as(Void*)
    end

  end
end

