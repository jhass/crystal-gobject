module Gtk
  class BindingSignal
    include GObject::WrappedType

    @gtk_binding_signal : LibGtk::BindingSignal*?
    def initialize(@gtk_binding_signal : LibGtk::BindingSignal*)
    end

    def to_unsafe
      @gtk_binding_signal.not_nil!
    end

  end
end

