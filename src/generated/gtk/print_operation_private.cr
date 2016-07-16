module Gtk
  class PrintOperationPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::PrintOperationPrivate*))
    end

    @gtk_print_operation_private : LibGtk::PrintOperationPrivate*?
    def initialize(@gtk_print_operation_private : LibGtk::PrintOperationPrivate*)
    end

    def to_unsafe
      @gtk_print_operation_private.not_nil!
    end

  end
end

