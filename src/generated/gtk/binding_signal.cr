module Gtk
  class BindingSignal
    include GObject::WrappedType

    def initialize(@gtk_binding_signal)
    end

    def to_unsafe
      @gtk_binding_signal.not_nil!
    end

  end
end

