module Gtk
  class SwitchAccessiblePrivate
    include GObject::WrappedType

    def initialize(@gtk_switch_accessible_private)
    end

    def to_unsafe
      @gtk_switch_accessible_private.not_nil!
    end

  end
end

