module Gtk
  class PrintOperationPrivate
    include GObject::WrappedType

    @gtk_print_operation_private : LibGtk::PrintOperationPrivate*?
    def initialize(@gtk_print_operation_private : LibGtk::PrintOperationPrivate*)
    end

    def to_unsafe
      @gtk_print_operation_private.not_nil!.as(Void*)
    end

  end
end

