module Gtk
  class ContainerPrivate
    include GObject::WrappedType

    @gtk_container_private : LibGtk::ContainerPrivate*?
    def initialize(@gtk_container_private : LibGtk::ContainerPrivate*)
    end

    def to_unsafe
      @gtk_container_private.not_nil!.as(Void*)
    end

  end
end

