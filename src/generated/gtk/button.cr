require "./bin"

module Gtk
  class Button < Bin
    @pointer : Void*
    def initialize(pointer : LibGtk::Button*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::Button*)
    end

    # Implements ImplementorIface
    # Implements Actionable
    # Implements Activatable
    # Implements Buildable
    def always_show_image
      __return_value = LibGtk.button_get_always_show_image(to_unsafe.as(LibGtk::Button*))
      __return_value
    end

    def image
      __return_value = LibGtk.button_get_image(to_unsafe.as(LibGtk::Button*))
      Gtk::Widget.new(__return_value)
    end

    def image_position
      __return_value = LibGtk.button_get_image_position(to_unsafe.as(LibGtk::Button*))
      __return_value
    end

    def label
      __return_value = LibGtk.button_get_label(to_unsafe.as(LibGtk::Button*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def relief
      __return_value = LibGtk.button_get_relief(to_unsafe.as(LibGtk::Button*))
      __return_value
    end

    def use_stock
      __return_value = LibGtk.button_get_use_stock(to_unsafe.as(LibGtk::Button*))
      __return_value
    end

    def use_underline
      __return_value = LibGtk.button_get_use_underline(to_unsafe.as(LibGtk::Button*))
      __return_value
    end

    def xalign
      __return_value = LibGtk.button_get_xalign(to_unsafe.as(LibGtk::Button*))
      __return_value
    end

    def yalign
      __return_value = LibGtk.button_get_yalign(to_unsafe.as(LibGtk::Button*))
      __return_value
    end

    def self.new : self
      __return_value = LibGtk.button_new
      cast Gtk::Widget.new(__return_value)
    end

    def self.new_from_icon_name(icon_name, size) : self
      __return_value = LibGtk.button_new_from_icon_name(icon_name ? icon_name.to_unsafe : nil, Int32.new(size))
      cast Gtk::Widget.new(__return_value)
    end

    def self.new_from_stock(stock_id) : self
      __return_value = LibGtk.button_new_from_stock(stock_id.to_unsafe)
      cast Gtk::Widget.new(__return_value)
    end

    def self.new_with_label(label) : self
      __return_value = LibGtk.button_new_with_label(label.to_unsafe)
      cast Gtk::Widget.new(__return_value)
    end

    def self.new_with_mnemonic(label) : self
      __return_value = LibGtk.button_new_with_mnemonic(label.to_unsafe)
      cast Gtk::Widget.new(__return_value)
    end

    def clicked
      LibGtk.button_clicked(@pointer.as(LibGtk::Button*))
      nil
    end

    def enter
      LibGtk.button_enter(@pointer.as(LibGtk::Button*))
      nil
    end

    def alignment(xalign, yalign)
      LibGtk.button_get_alignment(@pointer.as(LibGtk::Button*), xalign, yalign)
      nil
    end

    def always_show_image
      __return_value = LibGtk.button_get_always_show_image(@pointer.as(LibGtk::Button*))
      __return_value
    end

    def event_window
      __return_value = LibGtk.button_get_event_window(@pointer.as(LibGtk::Button*))
      Gdk::Window.new(__return_value)
    end

    def focus_on_click
      __return_value = LibGtk.button_get_focus_on_click(@pointer.as(LibGtk::Button*))
      __return_value
    end

    def image
      __return_value = LibGtk.button_get_image(@pointer.as(LibGtk::Button*))
      Gtk::Widget.new(__return_value) if __return_value
    end

    def image_position
      __return_value = LibGtk.button_get_image_position(@pointer.as(LibGtk::Button*))
      __return_value
    end

    def label
      __return_value = LibGtk.button_get_label(@pointer.as(LibGtk::Button*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def relief
      __return_value = LibGtk.button_get_relief(@pointer.as(LibGtk::Button*))
      __return_value
    end

    def use_stock
      __return_value = LibGtk.button_get_use_stock(@pointer.as(LibGtk::Button*))
      __return_value
    end

    def use_underline
      __return_value = LibGtk.button_get_use_underline(@pointer.as(LibGtk::Button*))
      __return_value
    end

    def leave
      LibGtk.button_leave(@pointer.as(LibGtk::Button*))
      nil
    end

    def pressed
      LibGtk.button_pressed(@pointer.as(LibGtk::Button*))
      nil
    end

    def released
      LibGtk.button_released(@pointer.as(LibGtk::Button*))
      nil
    end

    def set_alignment(xalign, yalign)
      LibGtk.button_set_alignment(@pointer.as(LibGtk::Button*), Float32.new(xalign), Float32.new(yalign))
      nil
    end

    def always_show_image=(always_show)
      LibGtk.button_set_always_show_image(@pointer.as(LibGtk::Button*), always_show)
      nil
    end

    def focus_on_click=(focus_on_click)
      LibGtk.button_set_focus_on_click(@pointer.as(LibGtk::Button*), focus_on_click)
      nil
    end

    def image=(image)
      LibGtk.button_set_image(@pointer.as(LibGtk::Button*), image ? image.to_unsafe.as(LibGtk::Widget*) : nil)
      nil
    end

    def image_position=(position : Gtk::PositionType)
      LibGtk.button_set_image_position(@pointer.as(LibGtk::Button*), position)
      nil
    end

    def label=(label)
      LibGtk.button_set_label(@pointer.as(LibGtk::Button*), label.to_unsafe)
      nil
    end

    def relief=(relief : Gtk::ReliefStyle)
      LibGtk.button_set_relief(@pointer.as(LibGtk::Button*), relief)
      nil
    end

    def use_stock=(use_stock)
      LibGtk.button_set_use_stock(@pointer.as(LibGtk::Button*), use_stock)
      nil
    end

    def use_underline=(use_underline)
      LibGtk.button_set_use_underline(@pointer.as(LibGtk::Button*), use_underline)
      nil
    end

    alias ActivateSignal = Button ->
    def on_activate(&__block : ActivateSignal)
      __callback = ->(_arg0 : LibGtk::Button*) {
       __return_value = __block.call(Button.new(_arg0))
       __return_value
      }
      connect("activate", __callback)
    end

    alias ClickedSignal = Button ->
    def on_clicked(&__block : ClickedSignal)
      __callback = ->(_arg0 : LibGtk::Button*) {
       __return_value = __block.call(Button.new(_arg0))
       __return_value
      }
      connect("clicked", __callback)
    end

    alias EnterSignal = Button ->
    def on_enter(&__block : EnterSignal)
      __callback = ->(_arg0 : LibGtk::Button*) {
       __return_value = __block.call(Button.new(_arg0))
       __return_value
      }
      connect("enter", __callback)
    end

    alias LeaveSignal = Button ->
    def on_leave(&__block : LeaveSignal)
      __callback = ->(_arg0 : LibGtk::Button*) {
       __return_value = __block.call(Button.new(_arg0))
       __return_value
      }
      connect("leave", __callback)
    end

    alias PressedSignal = Button ->
    def on_pressed(&__block : PressedSignal)
      __callback = ->(_arg0 : LibGtk::Button*) {
       __return_value = __block.call(Button.new(_arg0))
       __return_value
      }
      connect("pressed", __callback)
    end

    alias ReleasedSignal = Button ->
    def on_released(&__block : ReleasedSignal)
      __callback = ->(_arg0 : LibGtk::Button*) {
       __return_value = __block.call(Button.new(_arg0))
       __return_value
      }
      connect("released", __callback)
    end

  end
end

