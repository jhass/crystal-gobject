require "./event_controller"

module Gtk
  class PadController < EventController
    @gtk_pad_controller : LibGtk::PadController*?
    def initialize(@gtk_pad_controller : LibGtk::PadController*)
    end

    def to_unsafe
      @gtk_pad_controller.not_nil!
    end



    def self.new(window, group, pad) : self
      __return_value = LibGtk.pad_controller_new(window.to_unsafe.as(LibGtk::Window*), group.to_unsafe.as(LibGio::ActionGroup*), pad && pad.to_unsafe.as(LibGdk::Device*))
      cast Gtk::PadController.new(__return_value)
    end

    def set_action(type : Gtk::PadActionType, index, mode, label, action_name)
      __return_value = LibGtk.pad_controller_set_action(to_unsafe.as(LibGtk::PadController*), type, Int32.new(index), Int32.new(mode), label, action_name)
      __return_value
    end

    def set_action_entries(entries, n_entries)
      __return_value = LibGtk.pad_controller_set_action_entries(to_unsafe.as(LibGtk::PadController*), entries, Int32.new(n_entries))
      __return_value
    end

  end
end

