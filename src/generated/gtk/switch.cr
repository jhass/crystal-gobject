require "./widget"

module Gtk
  class Switch < Widget
    def initialize @gtk_switch
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
      __return_value = LibGtk.switch_set_active((to_unsafe as LibGtk::Switch*), Bool.cast(is_active))
      __return_value
    end

    def state=(state)
      __return_value = LibGtk.switch_set_state((to_unsafe as LibGtk::Switch*), Bool.cast(state))
      __return_value
    end

  end
end

