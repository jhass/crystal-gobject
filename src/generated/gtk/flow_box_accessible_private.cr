module Gtk
  class FlowBoxAccessiblePrivate
    include GObject::WrappedType

    @gtk_flow_box_accessible_private : LibGtk::FlowBoxAccessiblePrivate*?
    def initialize(@gtk_flow_box_accessible_private : LibGtk::FlowBoxAccessiblePrivate*)
    end

    def to_unsafe
      @gtk_flow_box_accessible_private.not_nil!.as(Void*)
    end

  end
end

