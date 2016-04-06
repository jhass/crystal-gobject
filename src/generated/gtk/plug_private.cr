module Gtk
  class PlugPrivate
    include GObject::WrappedType

    def initialize(@gtk_plug_private)
    end

    def to_unsafe
      @gtk_plug_private.not_nil!
    end

  end
end

