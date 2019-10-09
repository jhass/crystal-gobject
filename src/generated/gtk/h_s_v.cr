require "./widget"

module Gtk
  class HSV < Widget
    @pointer : Void*
    def initialize(pointer : LibGtk::HSV*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::HSV*)
    end

    # Implements ImplementorIface
    # Implements Buildable
    def self.new : self
      __return_value = LibGtk.h_s_v_new
      cast Gtk::Widget.new(__return_value)
    end

    def self.to_rgb(h, s, v, r, g, b)
      LibGtk.h_s_v_to_rgb(Float64.new(h), Float64.new(s), Float64.new(v), r, g, b)
      nil
    end

    def color(h, s, v)
      LibGtk.h_s_v_get_color(@pointer.as(LibGtk::HSV*), h, s, v)
      nil
    end

    def metrics(size, ring_width)
      LibGtk.h_s_v_get_metrics(@pointer.as(LibGtk::HSV*), size, ring_width)
      nil
    end

    def adjusting?
      __return_value = LibGtk.h_s_v_is_adjusting(@pointer.as(LibGtk::HSV*))
      __return_value
    end

    def set_color(h, s, v)
      LibGtk.h_s_v_set_color(@pointer.as(LibGtk::HSV*), Float64.new(h), Float64.new(s), Float64.new(v))
      nil
    end

    def set_metrics(size, ring_width)
      LibGtk.h_s_v_set_metrics(@pointer.as(LibGtk::HSV*), Int32.new(size), Int32.new(ring_width))
      nil
    end

    alias ChangedSignal = HSV ->
    def on_changed(&__block : ChangedSignal)
      __callback = ->(_arg0 : LibGtk::HSV*) {
       __return_value = __block.call(HSV.new(_arg0))
       __return_value
      }
      connect("changed", __callback)
    end

    alias MoveSignal = HSV, Gtk::DirectionType ->
    def on_move(&__block : MoveSignal)
      __callback = ->(_arg0 : LibGtk::HSV*, _arg1 : LibGtk::DirectionType*) {
       __return_value = __block.call(HSV.new(_arg0), _arg1)
       __return_value
      }
      connect("move", __callback)
    end

  end
end

