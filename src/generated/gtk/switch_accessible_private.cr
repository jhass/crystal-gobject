module Gtk
  class SwitchAccessiblePrivate
    include GObject::WrappedType

    @gtk_switch_accessible_private : LibGtk::SwitchAccessiblePrivate*?
    def initialize(@gtk_switch_accessible_private : LibGtk::SwitchAccessiblePrivate*)
    end

    def to_unsafe
      @gtk_switch_accessible_private.not_nil!
    end

  end
end

