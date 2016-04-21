require "./menu_item"

module Gtk
  class CheckMenuItem < MenuItem
    @gtk_check_menu_item : LibGtk::CheckMenuItem*?
    def initialize(@gtk_check_menu_item : LibGtk::CheckMenuItem*)
    end

    def to_unsafe
      @gtk_check_menu_item.not_nil!
    end

    # Implements ImplementorIface
    # Implements Actionable
    # Implements Activatable
    # Implements Buildable



    def self.new : self
      __return_value = LibGtk.check_menu_item_new
      cast Gtk::Widget.new(__return_value)
    end

    def self.new_with_label(label) : self
      __return_value = LibGtk.check_menu_item_new_with_label(label)
      cast Gtk::Widget.new(__return_value)
    end

    def self.new_with_mnemonic(label) : self
      __return_value = LibGtk.check_menu_item_new_with_mnemonic(label)
      cast Gtk::Widget.new(__return_value)
    end

    def active
      __return_value = LibGtk.check_menu_item_get_active((to_unsafe as LibGtk::CheckMenuItem*))
      __return_value
    end

    def draw_as_radio
      __return_value = LibGtk.check_menu_item_get_draw_as_radio((to_unsafe as LibGtk::CheckMenuItem*))
      __return_value
    end

    def inconsistent
      __return_value = LibGtk.check_menu_item_get_inconsistent((to_unsafe as LibGtk::CheckMenuItem*))
      __return_value
    end

    def active=(is_active)
      __return_value = LibGtk.check_menu_item_set_active((to_unsafe as LibGtk::CheckMenuItem*), is_active)
      __return_value
    end

    def draw_as_radio=(draw_as_radio)
      __return_value = LibGtk.check_menu_item_set_draw_as_radio((to_unsafe as LibGtk::CheckMenuItem*), draw_as_radio)
      __return_value
    end

    def inconsistent=(setting)
      __return_value = LibGtk.check_menu_item_set_inconsistent((to_unsafe as LibGtk::CheckMenuItem*), setting)
      __return_value
    end

    def toggled
      __return_value = LibGtk.check_menu_item_toggled((to_unsafe as LibGtk::CheckMenuItem*))
      __return_value
    end

    alias ToggledSignal = CheckMenuItem -> 
    def on_toggled(&__block : ToggledSignal)
      __callback = ->(_arg0 : LibGtk::CheckMenuItem*) {
       __return_value = __block.call(CheckMenuItem.new(_arg0))
       __return_value
      }
      connect("toggled", __callback)
    end

  end
end

