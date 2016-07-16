module Gtk
  class ExpanderAccessiblePrivate
    include GObject::WrappedType

    @gtk_expander_accessible_private : LibGtk::ExpanderAccessiblePrivate*?
    def initialize(@gtk_expander_accessible_private : LibGtk::ExpanderAccessiblePrivate*)
    end

    def to_unsafe
      @gtk_expander_accessible_private.not_nil!.as(Void*)
    end

  end
end

