require "./proxy_pad"

module Gst
  class GhostPad < ProxyPad
    @gst_ghost_pad : LibGst::GhostPad*?
    def initialize(@gst_ghost_pad : LibGst::GhostPad*)
    end

    def to_unsafe
      @gst_ghost_pad.not_nil!.as(Void*)
    end

    def self.new(name, target) : self
      __return_value = LibGst.ghost_pad_new(name && name.to_unsafe, target.to_unsafe.as(LibGst::Pad*))
      cast Gst::Pad.new(__return_value) if __return_value
    end

    def self.new_from_template(name, target, templ) : self
      __return_value = LibGst.ghost_pad_new_from_template(name && name.to_unsafe, target.to_unsafe.as(LibGst::Pad*), templ.to_unsafe.as(LibGst::PadTemplate*))
      cast Gst::Pad.new(__return_value) if __return_value
    end

    def self.new_no_target(name, dir : Gst::PadDirection) : self
      __return_value = LibGst.ghost_pad_new_no_target(name && name.to_unsafe, dir)
      cast Gst::Pad.new(__return_value) if __return_value
    end

    def self.new_no_target_from_template(name, templ) : self
      __return_value = LibGst.ghost_pad_new_no_target_from_template(name && name.to_unsafe, templ.to_unsafe.as(LibGst::PadTemplate*))
      cast Gst::Pad.new(__return_value) if __return_value
    end

    def self.activate_mode_default(pad, parent, mode : Gst::PadMode, active)
      __return_value = LibGst.ghost_pad_activate_mode_default(pad.to_unsafe.as(LibGst::Pad*), parent && parent.to_unsafe.as(LibGst::Object*), mode, active)
      __return_value
    end

    def self.internal_activate_mode_default(pad, parent, mode : Gst::PadMode, active)
      __return_value = LibGst.ghost_pad_internal_activate_mode_default(pad.to_unsafe.as(LibGst::Pad*), parent && parent.to_unsafe.as(LibGst::Object*), mode, active)
      __return_value
    end

    def construct
      __return_value = LibGst.ghost_pad_construct(to_unsafe.as(LibGst::GhostPad*))
      __return_value
    end

    def target
      __return_value = LibGst.ghost_pad_get_target(to_unsafe.as(LibGst::GhostPad*))
      Gst::Pad.new(__return_value) if __return_value
    end

    def target=(newtarget)
      __return_value = LibGst.ghost_pad_set_target(to_unsafe.as(LibGst::GhostPad*), newtarget && newtarget.to_unsafe.as(LibGst::Pad*))
      __return_value
    end

  end
end

