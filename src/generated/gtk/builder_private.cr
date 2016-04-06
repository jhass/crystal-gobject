module Gtk
  class BuilderPrivate
    include GObject::WrappedType

    def initialize(@gtk_builder_private)
    end

    def to_unsafe
      @gtk_builder_private.not_nil!
    end

  end
end

