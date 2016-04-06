module Gtk
  class ContainerAccessiblePrivate
    include GObject::WrappedType

    def initialize(@gtk_container_accessible_private)
    end

    def to_unsafe
      @gtk_container_accessible_private.not_nil!
    end

  end
end

