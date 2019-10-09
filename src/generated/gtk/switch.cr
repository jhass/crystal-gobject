require "./widget"

module Gtk
  class Switch < Widget
    @pointer : Void*
    def initialize(pointer : LibGtk::Switch*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::Switch*)
    end

    # Implements ImplementorIface
    # Implements Actionable
    # Implements Activatable
    # Implements Buildable
    def active
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "active", gvalue)
      gvalue.boolean
    end

    def state
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "state", gvalue)
      gvalue.boolean
    end

    def self.new : self
      __return_value = LibGtk.switch_new
      cast Gtk::Widget.new(__return_value)
    end

    def active
      __return_value = LibGtk.switch_get_active(@pointer.as(LibGtk::Switch*))
      __return_value
    end

    def state
      __return_value = LibGtk.switch_get_state(@pointer.as(LibGtk::Switch*))
      __return_value
    end

    def active=(is_active)
      LibGtk.switch_set_active(@pointer.as(LibGtk::Switch*), is_active)
      nil
    end

    def state=(state)
      LibGtk.switch_set_state(@pointer.as(LibGtk::Switch*), state)
      nil
    end

    alias ActivateSignal = Switch ->
    def on_activate(&__block : ActivateSignal)
      __callback = ->(_arg0 : LibGtk::Switch*) {
       __return_value = __block.call(Switch.new(_arg0))
       __return_value
      }
      connect("activate", __callback)
    end

    alias StateSetSignal = Switch, Bool -> Bool
    def on_state_set(&__block : StateSetSignal)
      __callback = ->(_arg0 : LibGtk::Switch*, _arg1 : Bool*) {
       __return_value = __block.call(Switch.new(_arg0), _arg1)
       __return_value
      }
      connect("state-set", __callback)
    end

  end
end

