module Gtk
  class HandleBoxPrivate
    include GObject::WrappedType

    @gtk_handle_box_private : LibGtk::HandleBoxPrivate*?
    def initialize(@gtk_handle_box_private : LibGtk::HandleBoxPrivate*)
    end

    def to_unsafe
      @gtk_handle_box_private.not_nil!.as(Void*)
    end

  end
end

