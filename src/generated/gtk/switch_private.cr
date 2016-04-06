module Gtk
  class SwitchPrivate
    include GObject::WrappedType

    def initialize(@gtk_switch_private)
    end

    def to_unsafe
      @gtk_switch_private.not_nil!
    end

  end
end

