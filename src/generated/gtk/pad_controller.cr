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
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "action_group", gvalue)
      gvalue
    end

    def pad
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "pad", gvalue)
      Gdk::Device.cast(gvalue.object)
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

