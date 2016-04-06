module Gtk
  class ContainerPrivate
    include GObject::WrappedType

    def initialize(@gtk_container_private)
    end

    def to_unsafe
      @gtk_container_private.not_nil!
    end

  end
end

