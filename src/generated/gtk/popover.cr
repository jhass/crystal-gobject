require "./bin"

module Gtk
  class Popover < Bin
    @gtk_popover : LibGtk::Popover*?
    def initialize(@gtk_popover : LibGtk::Popover*)
    end

    def to_unsafe
      @gtk_popover.not_nil!
    end

    # Implements ImplementorIface
    # Implements Buildable
    def constrain_to
      __return_value = LibGtk.popover_get_constrain_to(to_unsafe.as(LibGtk::Popover*))
      __return_value
    end

    def modal
      __return_value = LibGtk.popover_get_modal(to_unsafe.as(LibGtk::Popover*))
      __return_value
    end

    def pointing_to
      __return_value = LibGtk.popover_get_pointing_to(to_unsafe.as(LibGtk::Popover*))
      Gdk::Rectangle.new(__return_value)
    end

    def position
      __return_value = LibGtk.popover_get_position(to_unsafe.as(LibGtk::Popover*))
      __return_value
    end

    def relative_to
      __return_value = LibGtk.popover_get_relative_to(to_unsafe.as(LibGtk::Popover*))
      Gtk::Widget.new(__return_value)
    end

    def transitions_enabled
      __return_value = LibGtk.popover_get_transitions_enabled(to_unsafe.as(LibGtk::Popover*))
      __return_value
    end

    def self.new(relative_to) : self
      __return_value = LibGtk.popover_new(relative_to ? relative_to.to_unsafe.as(LibGtk::Widget*) : nil)
      cast Gtk::Widget.new(__return_value)
    end

    def self.new_from_model(relative_to, model) : self
      __return_value = LibGtk.popover_new_from_model(relative_to ? relative_to.to_unsafe.as(LibGtk::Widget*) : nil, model.to_unsafe.as(LibGio::MenuModel*))
      cast Gtk::Widget.new(__return_value)
    end

    def bind_model(model, action_namespace)
      LibGtk.popover_bind_model(to_unsafe.as(LibGtk::Popover*), model ? model.to_unsafe.as(LibGio::MenuModel*) : nil, action_namespace ? action_namespace.to_unsafe : nil)
      nil
    end

    def constrain_to
      __return_value = LibGtk.popover_get_constrain_to(to_unsafe.as(LibGtk::Popover*))
      __return_value
    end

    def default_widget
      __return_value = LibGtk.popover_get_default_widget(to_unsafe.as(LibGtk::Popover*))
      Gtk::Widget.new(__return_value) if __return_value
    end

    def modal
      __return_value = LibGtk.popover_get_modal(to_unsafe.as(LibGtk::Popover*))
      __return_value
    end

    def pointing_to(rect)
      __return_value = LibGtk.popover_get_pointing_to(to_unsafe.as(LibGtk::Popover*), rect)
      __return_value
    end

    def position
      __return_value = LibGtk.popover_get_position(to_unsafe.as(LibGtk::Popover*))
      __return_value
    end

    def relative_to
      __return_value = LibGtk.popover_get_relative_to(to_unsafe.as(LibGtk::Popover*))
      Gtk::Widget.new(__return_value)
    end

    def transitions_enabled
      __return_value = LibGtk.popover_get_transitions_enabled(to_unsafe.as(LibGtk::Popover*))
      __return_value
    end

    def popdown
      LibGtk.popover_popdown(to_unsafe.as(LibGtk::Popover*))
      nil
    end

    def popup
      LibGtk.popover_popup(to_unsafe.as(LibGtk::Popover*))
      nil
    end

    def constrain_to=(constraint : Gtk::PopoverConstraint)
      LibGtk.popover_set_constrain_to(to_unsafe.as(LibGtk::Popover*), constraint)
      nil
    end

    def default_widget=(widget)
      LibGtk.popover_set_default_widget(to_unsafe.as(LibGtk::Popover*), widget ? widget.to_unsafe.as(LibGtk::Widget*) : nil)
      nil
    end

    def modal=(modal)
      LibGtk.popover_set_modal(to_unsafe.as(LibGtk::Popover*), modal)
      nil
    end

    def pointing_to=(rect)
      LibGtk.popover_set_pointing_to(to_unsafe.as(LibGtk::Popover*), rect.to_unsafe.as(LibGdk::Rectangle*))
      nil
    end

    def position=(position : Gtk::PositionType)
      LibGtk.popover_set_position(to_unsafe.as(LibGtk::Popover*), position)
      nil
    end

    def relative_to=(relative_to)
      LibGtk.popover_set_relative_to(to_unsafe.as(LibGtk::Popover*), relative_to ? relative_to.to_unsafe.as(LibGtk::Widget*) : nil)
      nil
    end

    def transitions_enabled=(transitions_enabled)
      LibGtk.popover_set_transitions_enabled(to_unsafe.as(LibGtk::Popover*), transitions_enabled)
      nil
    end

    alias ClosedSignal = Popover ->
    def on_closed(&__block : ClosedSignal)
      __callback = ->(_arg0 : LibGtk::Popover*) {
       __return_value = __block.call(Popover.new(_arg0))
       __return_value
      }
      connect("closed", __callback)
    end

  end
end

