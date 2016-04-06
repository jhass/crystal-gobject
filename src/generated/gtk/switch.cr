require "./widget"

module Gtk
  class Switch < Widget
    def initialize(@gtk_switch)
    end

    def to_unsafe
      @gtk_switch.not_nil!
    end

    # Implements ImplementorIface
    # Implements Actionable
    # Implements Activatable
    # Implements Buildable


    def self.new_internal
      __return_value = LibGtk.switch_new
      Gtk::Widget.new(__return_value)
    end

    def active
      __return_value = LibGtk.switch_get_active((to_unsafe as LibGtk::Switch*))
      __return_value
    end

    def state
      __return_value = LibGtk.switch_get_state((to_unsafe as LibGtk::Switch*))
      __return_value
    end

    def active=(is_active)
      __return_value = LibGtk.switch_set_active((to_unsafe as LibGtk::Switch*), is_active)
      __return_value
    end

    def state=(state)
      __return_value = LibGtk.switch_set_state((to_unsafe as LibGtk::Switch*), state)
      __return_value
    end

    alias ActivateSignal = Switch -> 
    def on_activate(&__block : ActivateSignal)
      __callback = ->(_arg0 : LibGtk::Switch*) {
       __return_value = __block.call(Switch.new(_arg0))
       __return_value
      }
      connect("activate", __callback)
    end

    alias StateSetSignal = Switch, Bool -> Bool
    def on_state_set(&__block : StateSetSignal)
      __callback = ->(_arg0 : LibGtk::Switch*, _arg1 : LibGtk::Bool*) {
       __return_value = __block.call(Switch.new(_arg0), _arg1)
       __return_value
      }
      connect("state-set", __callback)
    end

  end
end

