require "./bin"

module Gtk
  class FlowBoxChild < Bin
    def initialize(@gtk_flow_box_child)
    end

    def to_unsafe
      @gtk_flow_box_child.not_nil!
    end

    # Implements ImplementorIface
    # Implements Buildable
    def self.new_internal
      __return_value = LibGtk.flow_box_child_new
      Gtk::Widget.new(__return_value)
    end

    def changed
      __return_value = LibGtk.flow_box_child_changed((to_unsafe as LibGtk::FlowBoxChild*))
      __return_value
    end

    def index
      __return_value = LibGtk.flow_box_child_get_index((to_unsafe as LibGtk::FlowBoxChild*))
      __return_value
    end

    def selected?
      __return_value = LibGtk.flow_box_child_is_selected((to_unsafe as LibGtk::FlowBoxChild*))
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

