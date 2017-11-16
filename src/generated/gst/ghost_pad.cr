require "./proxy_pad"

module Gst
  class GhostPad < ProxyPad
    @pointer : Void*
    def initialize(pointer : LibGst::GhostPad*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGst::GhostPad*)
    end

    def self.new(name, target) : self
      __return_value = LibGst.ghost_pad_new(name ? name.to_unsafe : nil, target.to_unsafe.as(LibGst::Pad*))
      cast Gst::Pad.new(__return_value) if __return_value
    end

    def self.new_from_template(name, target, templ) : self
      __return_value = LibGst.ghost_pad_new_from_template(name ? name.to_unsafe : nil, target.to_unsafe.as(LibGst::Pad*), templ.to_unsafe.as(LibGst::PadTemplate*))
      cast Gst::Pad.new(__return_value) if __return_value
    end

    def self.new_no_target(name, dir : Gst::PadDirection) : self
      __return_value = LibGst.ghost_pad_new_no_target(name ? name.to_unsafe : nil, dir)
      cast Gst::Pad.new(__return_value) if __return_value
    end

    def self.new_no_target_from_template(name, templ) : self
      __return_value = LibGst.ghost_pad_new_no_target_from_template(name ? name.to_unsafe : nil, templ.to_unsafe.as(LibGst::PadTemplate*))
      cast Gst::Pad.new(__return_value) if __return_value
    end

    def self.activate_mode_default(pad, parent, mode : Gst::PadMode, active)
      __return_value = LibGst.ghost_pad_activate_mode_default(pad.to_unsafe.as(LibGst::Pad*), parent ? parent.to_unsafe.as(LibGst::Object*) : nil, mode, active)
      __return_value
    end

    def self.internal_activate_mode_default(pad, parent, mode : Gst::PadMode, active)
      __return_value = LibGst.ghost_pad_internal_activate_mode_default(pad.to_unsafe.as(LibGst::Pad*), parent ? parent.to_unsafe.as(LibGst::Object*) : nil, mode, active)
      __return_value
    end

    def construct
      __return_value = LibGst.ghost_pad_construct(@pointer.as(LibGst::GhostPad*))
      __return_value
    end

    def target
      __return_value = LibGst.ghost_pad_get_target(@pointer.as(LibGst::GhostPad*))
      Gst::Pad.new(__return_value) if __return_value
    end

    def target=(newtarget)
      __return_value = LibGst.ghost_pad_set_target(@pointer.as(LibGst::GhostPad*), newtarget ? newtarget.to_unsafe.as(LibGst::Pad*) : nil)
      __return_value
    end

  end
end

