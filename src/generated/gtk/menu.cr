require "./menu_shell"

module Gtk
  class Menu < MenuShell
    @gtk_menu : LibGtk::Menu*?
    def initialize(@gtk_menu : LibGtk::Menu*)
    end

    def to_unsafe
      @gtk_menu.not_nil!
    end

    # Implements ImplementorIface
    # Implements Buildable
    def accel_group
      __return_value = LibGtk.menu_get_accel_group(to_unsafe.as(LibGtk::Menu*))
      Gtk::AccelGroup.new(__return_value)
    end

    def accel_path
      __return_value = LibGtk.menu_get_accel_path(to_unsafe.as(LibGtk::Menu*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def active
      __return_value = LibGtk.menu_get_active(to_unsafe.as(LibGtk::Menu*))
      __return_value
    end

    def anchor_hints
      __return_value = LibGtk.menu_get_anchor_hints(to_unsafe.as(LibGtk::Menu*))
      __return_value
    end

    def attach_widget
      __return_value = LibGtk.menu_get_attach_widget(to_unsafe.as(LibGtk::Menu*))
      Gtk::Widget.new(__return_value)
    end

    def menu_type_hint
      __return_value = LibGtk.menu_get_menu_type_hint(to_unsafe.as(LibGtk::Menu*))
      __return_value
    end

    def monitor
      __return_value = LibGtk.menu_get_monitor(to_unsafe.as(LibGtk::Menu*))
      __return_value
    end

    def rect_anchor_dx
      __return_value = LibGtk.menu_get_rect_anchor_dx(to_unsafe.as(LibGtk::Menu*))
      __return_value
    end

    def rect_anchor_dy
      __return_value = LibGtk.menu_get_rect_anchor_dy(to_unsafe.as(LibGtk::Menu*))
      __return_value
    end

    def reserve_toggle_size
      __return_value = LibGtk.menu_get_reserve_toggle_size(to_unsafe.as(LibGtk::Menu*))
      __return_value
    end

    def tearoff_state
      __return_value = LibGtk.menu_get_tearoff_state(to_unsafe.as(LibGtk::Menu*))
      __return_value
    end

    def tearoff_title
      __return_value = LibGtk.menu_get_tearoff_title(to_unsafe.as(LibGtk::Menu*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def self.new : self
      __return_value = LibGtk.menu_new
      cast Gtk::Widget.new(__return_value)
    end

    def self.new_from_model(model) : self
      __return_value = LibGtk.menu_new_from_model(model.to_unsafe.as(LibGio::MenuModel*))
      cast Gtk::Widget.new(__return_value)
    end

    def self.for_attach_widget(widget)
      __return_value = LibGtk.menu_get_for_attach_widget(widget.to_unsafe.as(LibGtk::Widget*))
      GLib::ListIterator(Gtk::Widget, LibGtk::Widget*).new(GLib::SList.new(__return_value.as(LibGLib::List*)))
    end

    def attach(child, left_attach, right_attach, top_attach, bottom_attach)
      LibGtk.menu_attach(to_unsafe.as(LibGtk::Menu*), child.to_unsafe.as(LibGtk::Widget*), UInt32.new(left_attach), UInt32.new(right_attach), UInt32.new(top_attach), UInt32.new(bottom_attach))
      nil
    end

    def attach_to_widget(attach_widget, detacher)
      LibGtk.menu_attach_to_widget(to_unsafe.as(LibGtk::Menu*), attach_widget.to_unsafe.as(LibGtk::Widget*), detacher ? detacher : nil)
      nil
    end

    def detach
      LibGtk.menu_detach(to_unsafe.as(LibGtk::Menu*))
      nil
    end

    def accel_group
      __return_value = LibGtk.menu_get_accel_group(to_unsafe.as(LibGtk::Menu*))
      Gtk::AccelGroup.new(__return_value)
    end

    def accel_path
      __return_value = LibGtk.menu_get_accel_path(to_unsafe.as(LibGtk::Menu*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def active
      __return_value = LibGtk.menu_get_active(to_unsafe.as(LibGtk::Menu*))
      Gtk::Widget.new(__return_value)
    end

    def attach_widget
      __return_value = LibGtk.menu_get_attach_widget(to_unsafe.as(LibGtk::Menu*))
      Gtk::Widget.new(__return_value)
    end

    def monitor
      __return_value = LibGtk.menu_get_monitor(to_unsafe.as(LibGtk::Menu*))
      __return_value
    end

    def reserve_toggle_size
      __return_value = LibGtk.menu_get_reserve_toggle_size(to_unsafe.as(LibGtk::Menu*))
      __return_value
    end

    def tearoff_state
      __return_value = LibGtk.menu_get_tearoff_state(to_unsafe.as(LibGtk::Menu*))
      __return_value
    end

    def title
      __return_value = LibGtk.menu_get_title(to_unsafe.as(LibGtk::Menu*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def place_on_monitor(monitor)
      LibGtk.menu_place_on_monitor(to_unsafe.as(LibGtk::Menu*), monitor.to_unsafe.as(LibGdk::Monitor*))
      nil
    end

    def popdown
      LibGtk.menu_popdown(to_unsafe.as(LibGtk::Menu*))
      nil
    end

    def popup(parent_menu_shell, parent_menu_item, func, data, button, activate_time)
      LibGtk.menu_popup(to_unsafe.as(LibGtk::Menu*), parent_menu_shell ? parent_menu_shell.to_unsafe.as(LibGtk::Widget*) : nil, parent_menu_item ? parent_menu_item.to_unsafe.as(LibGtk::Widget*) : nil, func ? func : nil, data ? data : nil, UInt32.new(button), UInt32.new(activate_time))
      nil
    end

    def popup_at_pointer(trigger_event)
      LibGtk.menu_popup_at_pointer(to_unsafe.as(LibGtk::Menu*), trigger_event ? trigger_event.to_unsafe.as(LibGdk::Event*) : nil)
      nil
    end

    def popup_at_rect(rect_window, rect, rect_anchor : Gdk::Gravity, menu_anchor : Gdk::Gravity, trigger_event)
      LibGtk.menu_popup_at_rect(to_unsafe.as(LibGtk::Menu*), rect_window.to_unsafe.as(LibGdk::Window*), rect.to_unsafe.as(LibGdk::Rectangle*), rect_anchor, menu_anchor, trigger_event ? trigger_event.to_unsafe.as(LibGdk::Event*) : nil)
      nil
    end

    def popup_at_widget(widget, widget_anchor : Gdk::Gravity, menu_anchor : Gdk::Gravity, trigger_event)
      LibGtk.menu_popup_at_widget(to_unsafe.as(LibGtk::Menu*), widget.to_unsafe.as(LibGtk::Widget*), widget_anchor, menu_anchor, trigger_event ? trigger_event.to_unsafe.as(LibGdk::Event*) : nil)
      nil
    end

    def popup_for_device(device, parent_menu_shell, parent_menu_item, func, data, destroy, button, activate_time)
      LibGtk.menu_popup_for_device(to_unsafe.as(LibGtk::Menu*), device ? device.to_unsafe.as(LibGdk::Device*) : nil, parent_menu_shell ? parent_menu_shell.to_unsafe.as(LibGtk::Widget*) : nil, parent_menu_item ? parent_menu_item.to_unsafe.as(LibGtk::Widget*) : nil, func ? func : nil, data ? data : nil, destroy ? destroy : nil, UInt32.new(button), UInt32.new(activate_time))
      nil
    end

    def reorder_child(child, position)
      LibGtk.menu_reorder_child(to_unsafe.as(LibGtk::Menu*), child.to_unsafe.as(LibGtk::Widget*), Int32.new(position))
      nil
    end

    def reposition
      LibGtk.menu_reposition(to_unsafe.as(LibGtk::Menu*))
      nil
    end

    def accel_group=(accel_group)
      LibGtk.menu_set_accel_group(to_unsafe.as(LibGtk::Menu*), accel_group ? accel_group.to_unsafe.as(LibGtk::AccelGroup*) : nil)
      nil
    end

    def accel_path=(accel_path)
      LibGtk.menu_set_accel_path(to_unsafe.as(LibGtk::Menu*), accel_path ? accel_path.to_unsafe : nil)
      nil
    end

    def active=(index)
      LibGtk.menu_set_active(to_unsafe.as(LibGtk::Menu*), UInt32.new(index))
      nil
    end

    def monitor=(monitor_num)
      LibGtk.menu_set_monitor(to_unsafe.as(LibGtk::Menu*), Int32.new(monitor_num))
      nil
    end

    def reserve_toggle_size=(reserve_toggle_size)
      LibGtk.menu_set_reserve_toggle_size(to_unsafe.as(LibGtk::Menu*), reserve_toggle_size)
      nil
    end

    def screen=(screen)
      LibGtk.menu_set_screen(to_unsafe.as(LibGtk::Menu*), screen ? screen.to_unsafe.as(LibGdk::Screen*) : nil)
      nil
    end

    def tearoff_state=(torn_off)
      LibGtk.menu_set_tearoff_state(to_unsafe.as(LibGtk::Menu*), torn_off)
      nil
    end

    def title=(title)
      LibGtk.menu_set_title(to_unsafe.as(LibGtk::Menu*), title.to_unsafe)
      nil
    end

    alias MoveScrollSignal = Menu, Gtk::ScrollType ->
    def on_move_scroll(&__block : MoveScrollSignal)
      __callback = ->(_arg0 : LibGtk::Menu*, _arg1 : LibGtk::LibGtk::ScrollType*) {
       __return_value = __block.call(Menu.new(_arg0), _arg1)
       __return_value
      }
      connect("move-scroll", __callback)
    end

    alias PoppedUpSignal = Menu, Void*, Void*, Bool, Bool ->
    def on_popped_up(&__block : PoppedUpSignal)
      __callback = ->(_arg0 : LibGtk::Menu*, _arg1 : LibGtk::Void**, _arg2 : LibGtk::Void**, _arg3 : LibGtk::Bool*, _arg4 : LibGtk::Bool*) {
       __return_value = __block.call(Menu.new(_arg0), _arg1, _arg2, _arg3, _arg4)
       __return_value
      }
      connect("popped-up", __callback)
    end

  end
end

