module Gtk
  class LevelBarAccessiblePrivate
    include GObject::WrappedType

    def initialize(@gtk_level_bar_accessible_private)
    end

    def to_unsafe
      @gtk_level_bar_accessible_private.not_nil!
    end

  end
end

