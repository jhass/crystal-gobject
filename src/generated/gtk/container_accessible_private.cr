module Gtk
  class ContainerAccessiblePrivate
    include GObject::WrappedType

    @gtk_container_accessible_private : LibGtk::ContainerAccessiblePrivate*?
    def initialize(@gtk_container_accessible_private : LibGtk::ContainerAccessiblePrivate*)
    end

    def to_unsafe
      @gtk_container_accessible_private.not_nil!
    end

  end
end

