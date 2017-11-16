require "./bin"

module Gtk
  class FlowBoxChild < Bin
    @pointer : Void*
    def initialize(pointer : LibGtk::FlowBoxChild*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::FlowBoxChild*)
    end

    # Implements ImplementorIface
    # Implements Buildable
    def self.new : self
      __return_value = LibGtk.flow_box_child_new
      cast Gtk::Widget.new(__return_value)
    end

    def changed
      LibGtk.flow_box_child_changed(@pointer.as(LibGtk::FlowBoxChild*))
      nil
    end

    def index
      __return_value = LibGtk.flow_box_child_get_index(@pointer.as(LibGtk::FlowBoxChild*))
      __return_value
    end

    def selected?
      __return_value = LibGtk.flow_box_child_is_selected(@pointer.as(LibGtk::FlowBoxChild*))
      __return_value
    end

    alias ActivateSignal = FlowBoxChild ->
    def on_activate(&__block : ActivateSignal)
      __callback = ->(_arg0 : LibGtk::FlowBoxChild*) {
       __return_value = __block.call(FlowBoxChild.new(_arg0))
       __return_value
      }
      connect("activate", __callback)
    end

  end
end

