module Gtk
  class PrintOperationPrivate
    include GObject::WrappedType

    def initialize(@gtk_print_operation_private)
    end

    def to_unsafe
      @gtk_print_operation_private.not_nil!
    end

  end
end

