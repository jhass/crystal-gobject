module Gtk
  class LevelBarPrivate
    include GObject::WrappedType

    def initialize(@gtk_level_bar_private)
    end

    def to_unsafe
      @gtk_level_bar_private.not_nil!
    end

  end
end

