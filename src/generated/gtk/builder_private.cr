module Gtk
  class BuilderPrivate
    include GObject::WrappedType

    @gtk_builder_private : LibGtk::BuilderPrivate*?
    def initialize(@gtk_builder_private : LibGtk::BuilderPrivate*)
    end

    def to_unsafe
      @gtk_builder_private.not_nil!.as(Void*)
    end

  end
end

