require "./event_controller"

module Gtk
  class PadController < EventController
    @pointer : Void*
    def initialize(pointer : LibGtk::PadController*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::PadController*)
    end

    def action_group
      __return_value = LibGtk.pad_controller_get_action_group(to_unsafe.as(LibGtk::PadController*))
      __return_value
    end

    def pad
      __return_value = LibGtk.pad_controller_get_pad(to_unsafe.as(LibGtk::PadController*))
      Gdk::Device.new(__return_value)
    end

    def self.new(window, group, pad) : self
      __return_value = LibGtk.pad_controller_new(window.to_unsafe.as(LibGtk::Window*), group.to_unsafe.as(LibGio::ActionGroup*), pad ? pad.to_unsafe.as(LibGdk::Device*) : nil)
      cast Gtk::PadController.new(__return_value)
    end

    def set_action(type : Gtk::PadActionType, index, mode, label, action_name)
      LibGtk.pad_controller_set_action(@pointer.as(LibGtk::PadController*), type, Int32.new(index), Int32.new(mode), label.to_unsafe, action_name.to_unsafe)
      nil
    end

    def set_action_entries(entries, n_entries)
      LibGtk.pad_controller_set_action_entries(@pointer.as(LibGtk::PadController*), entries, Int32.new(n_entries))
      nil
    end

  end
end

