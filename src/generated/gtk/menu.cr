require "./menu_shell"

module Gtk
  class Menu < MenuShell
    def initialize(@gtk_menu)
    end

    def to_unsafe
      @gtk_menu.not_nil!
    end

    # Implements ImplementorIface
    # Implements Buildable








    def self.new_internal
      __return_value = LibGtk.menu_new
      Gtk::Widget.new(__return_value)
    end

    def self.new_from_model(model)
      __return_value = LibGtk.menu_new_from_model((model.to_unsafe as LibGio::MenuModel*))
      Gtk::Widget.new(__return_value)
    end

    def self.for_attach_widget(widget)
      __return_value = LibGtk.menu_get_for_attach_widget((widget.to_unsafe as LibGtk::Widget*))
      __return_value
    end

    def attach(child, left_attach, right_attach, top_attach, bottom_attach)
      __return_value = LibGtk.menu_attach((to_unsafe as LibGtk::Menu*), (child.to_unsafe as LibGtk::Widget*), UInt32.new(left_attach), UInt32.new(right_attach), UInt32.new(top_attach), UInt32.new(bottom_attach))
      __return_value
    end

    def attach_to_widget(attach_widget, detacher : LibGtk::MenuDetachFunc?)
      __return_value = LibGtk.menu_attach_to_widget((to_unsafe as LibGtk::Menu*), (attach_widget.to_unsafe as LibGtk::Widget*), detacher && detacher)
      __return_value
    end

    def detach
      __return_value = LibGtk.menu_detach((to_unsafe as LibGtk::Menu*))
      __return_value
    end

    def accel_group
      __return_value = LibGtk.menu_get_accel_group((to_unsafe as LibGtk::Menu*))
      Gtk::AccelGroup.new(__return_value)
    end

    def accel_path
      __return_value = LibGtk.menu_get_accel_path((to_unsafe as LibGtk::Menu*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def active
      __return_value = LibGtk.menu_get_active((to_unsafe as LibGtk::Menu*))
      Gtk::Widget.new(__return_value)
    end

    def attach_widget
      __return_value = LibGtk.menu_get_attach_widget((to_unsafe as LibGtk::Menu*))
      Gtk::Widget.new(__return_value)
    end

    def monitor
      __return_value = LibGtk.menu_get_monitor((to_unsafe as LibGtk::Menu*))
      __return_value
    end

    def reserve_toggle_size
      __return_value = LibGtk.menu_get_reserve_toggle_size((to_unsafe as LibGtk::Menu*))
      __return_value
    end

    def tearoff_state
      __return_value = LibGtk.menu_get_tearoff_state((to_unsafe as LibGtk::Menu*))
      __return_value
    end

    def title
      __return_value = LibGtk.menu_get_title((to_unsafe as LibGtk::Menu*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def popdown
      __return_value = LibGtk.menu_popdown((to_unsafe as LibGtk::Menu*))
      __return_value
    end

    def popup(parent_menu_shell, parent_menu_item, func : LibGtk::MenuPositionFunc?, data, button, activate_time)
      __return_value = LibGtk.menu_popup((to_unsafe as LibGtk::Menu*), parent_menu_shell && (parent_menu_shell.to_unsafe as LibGtk::Widget*), parent_menu_item && (parent_menu_item.to_unsafe as LibGtk::Widget*), func && func, data, UInt32.new(button), UInt32.new(activate_time))
      __return_value
    end

    def popup_for_device(device, parent_menu_shell, parent_menu_item, func : LibGtk::MenuPositionFunc?, data, destroy : LibGLib::DestroyNotify?, button, activate_time)
      __return_value = LibGtk.menu_popup_for_device((to_unsafe as LibGtk::Menu*), device && (device.to_unsafe as LibGdk::Device*), parent_menu_shell && (parent_menu_shell.to_unsafe as LibGtk::Widget*), parent_menu_item && (parent_menu_item.to_unsafe as LibGtk::Widget*), func && func, data && data, destroy && destroy, UInt32.new(button), UInt32.new(activate_time))
      __return_value
    end

    def reorder_child(child, position)
      __return_value = LibGtk.menu_reorder_child((to_unsafe as LibGtk::Menu*), (child.to_unsafe as LibGtk::Widget*), Int32.new(position))
      __return_value
    end

    def reposition
      __return_value = LibGtk.menu_reposition((to_unsafe as LibGtk::Menu*))
      __return_value
    end

    def accel_group=(accel_group)
      __return_value = LibGtk.menu_set_accel_group((to_unsafe as LibGtk::Menu*), accel_group && (accel_group.to_unsafe as LibGtk::AccelGroup*))
      __return_value
    end

    def accel_path=(accel_path)
      __return_value = LibGtk.menu_set_accel_path((to_unsafe as LibGtk::Menu*), accel_path && accel_path)
      __return_value
    end

    def active=(index)
      __return_value = LibGtk.menu_set_active((to_unsafe as LibGtk::Menu*), UInt32.new(index))
      __return_value
    end

    def monitor=(monitor_num)
      __return_value = LibGtk.menu_set_monitor((to_unsafe as LibGtk::Menu*), Int32.new(monitor_num))
      __return_value
    end

    def reserve_toggle_size=(reserve_toggle_size)
      __return_value = LibGtk.menu_set_reserve_toggle_size((to_unsafe as LibGtk::Menu*), reserve_toggle_size)
      __return_value
    end

    def screen=(screen)
      __return_value = LibGtk.menu_set_screen((to_unsafe as LibGtk::Menu*), screen && (screen.to_unsafe as LibGdk::Screen*))
      __return_value
    end

    def tearoff_state=(torn_off)
      __return_value = LibGtk.menu_set_tearoff_state((to_unsafe as LibGtk::Menu*), torn_off)
      __return_value
    end

    def title=(title)
      __return_value = LibGtk.menu_set_title((to_unsafe as LibGtk::Menu*), title)
      __return_value
    end

    alias MoveScrollSignal = Menu, Gtk::ScrollType -> 
    def on_move_scroll(&__block : MoveScrollSignal)
      __callback = ->(_arg0 : LibGtk::Menu*, _arg1 : LibGtk::LibGtk::ScrollType*) {
       __return_value = __block.call(Menu.new(_arg0), _arg1)
       __return_value
      }
      connect("move-scroll", __callback)
    end

  end
end

