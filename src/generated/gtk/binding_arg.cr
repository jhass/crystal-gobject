module Gtk
  class BindingArg
    include GObject::WrappedType

    @gtk_binding_arg : LibGtk::BindingArg*?
    def initialize(@gtk_binding_arg : LibGtk::BindingArg*)
    end

    def to_unsafe
      @gtk_binding_arg.not_nil!
    end

  end
end

