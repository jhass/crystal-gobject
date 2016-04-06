module Gtk
  class BindingArg
    include GObject::WrappedType

    def initialize(@gtk_binding_arg)
    end

    def to_unsafe
      @gtk_binding_arg.not_nil!
    end

  end
end

