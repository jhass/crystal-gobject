module Gtk
  class FlowBoxAccessiblePrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::FlowBoxAccessiblePrivate*))
    end

    @gtk_flow_box_accessible_private : LibGtk::FlowBoxAccessiblePrivate*?
    def initialize(@gtk_flow_box_accessible_private : LibGtk::FlowBoxAccessiblePrivate*)
    end

    def to_unsafe
      @gtk_flow_box_accessible_private.not_nil!
    end

  end
end

