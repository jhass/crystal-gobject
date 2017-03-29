module Gtk
  class SwitchPrivate
    include GObject::WrappedType

    @gtk_switch_private : LibGtk::SwitchPrivate*?
    def initialize(@gtk_switch_private : LibGtk::SwitchPrivate*)
    end

    def to_unsafe
      @gtk_switch_private.not_nil!
    end

  end
end

