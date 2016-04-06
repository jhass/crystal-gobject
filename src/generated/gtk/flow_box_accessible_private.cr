module Gtk
  class FlowBoxAccessiblePrivate
    include GObject::WrappedType

    def initialize(@gtk_flow_box_accessible_private)
    end

    def to_unsafe
      @gtk_flow_box_accessible_private.not_nil!
    end

  end
end

