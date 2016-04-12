module Gtk
  class AccelGroup < GObject::Object
    def initialize(@gtk_accel_group)
    end

    def to_unsafe
      @gtk_accel_group.not_nil!
    end



    def self.new_internal
      __return_value = LibGtk.accel_group_new
      cast Gtk::AccelGroup.new(__return_value)
    end

    def self.from_accel_closure(closure)
      __return_value = LibGtk.accel_group_from_accel_closure((closure.to_unsafe as LibGObject::Closure*))
      Gtk::AccelGroup.new(__return_value) if __return_value
    end

    def activate(accel_quark, acceleratable, accel_key, accel_mods)
      __return_value = LibGtk.accel_group_activate((to_unsafe as LibGtk::AccelGroup*), UInt32.new(accel_quark), (acceleratable.to_unsafe as LibGObject::Object*), UInt32.new(accel_key), accel_mods)
      __return_value
    end

    def connect(accel_key, accel_mods, accel_flags, closure)
      __return_value = LibGtk.accel_group_connect((to_unsafe as LibGtk::AccelGroup*), UInt32.new(accel_key), accel_mods, accel_flags, (closure.to_unsafe as LibGObject::Closure*))
      __return_value
    end

    def connect_by_path(accel_path, closure)
      __return_value = LibGtk.accel_group_connect_by_path((to_unsafe as LibGtk::AccelGroup*), accel_path, (closure.to_unsafe as LibGObject::Closure*))
      __return_value
    end

    def disconnect(closure)
      __return_value = LibGtk.accel_group_disconnect((to_unsafe as LibGtk::AccelGroup*), closure && (closure.to_unsafe as LibGObject::Closure*))
      __return_value
    end

    def disconnect_key(accel_key, accel_mods)
      __return_value = LibGtk.accel_group_disconnect_key((to_unsafe as LibGtk::AccelGroup*), UInt32.new(accel_key), accel_mods)
      __return_value
    end

    def find(find_func : LibGtk::AccelGroupFindFunc, data)
      __return_value = LibGtk.accel_group_find((to_unsafe as LibGtk::AccelGroup*), find_func, data && data)
      Gtk::AccelKey.new(__return_value)
    end

    def is_locked
      __return_value = LibGtk.accel_group_get_is_locked((to_unsafe as LibGtk::AccelGroup*))
      __return_value
    end

    def modifier_mask
      __return_value = LibGtk.accel_group_get_modifier_mask((to_unsafe as LibGtk::AccelGroup*))
      __return_value
    end

    def lock
      __return_value = LibGtk.accel_group_lock((to_unsafe as LibGtk::AccelGroup*))
      __return_value
    end

    def query(accel_key, accel_mods, n_entries)
      __return_value = LibGtk.accel_group_query((to_unsafe as LibGtk::AccelGroup*), UInt32.new(accel_key), accel_mods, UInt32.new(n_entries))
      PointerIterator.new(__return_value) {|__item_78| Gtk::AccelGroupEntry.new(__item_78) } if __return_value
    end

    def unlock
      __return_value = LibGtk.accel_group_unlock((to_unsafe as LibGtk::AccelGroup*))
      __return_value
    end

    alias AccelActivateSignal = AccelGroup, GObject::Object, UInt32, Gdk::ModifierType -> Bool
    def on_accel_activate(&__block : AccelActivateSignal)
      __callback = ->(_arg0 : LibGtk::AccelGroup*, _arg1 : LibGtk::LibGObject::Object*, _arg2 : LibGtk::UInt32*, _arg3 : LibGtk::LibGdk::ModifierType*) {
       __return_value = __block.call(AccelGroup.new(_arg0), GObject::Object.new(_arg1), _arg2, _arg3)
       __return_value
      }
      connect("accel-activate", __callback)
    end

    alias AccelChangedSignal = AccelGroup, UInt32, Gdk::ModifierType, GObject::Closure -> 
    def on_accel_changed(&__block : AccelChangedSignal)
      __callback = ->(_arg0 : LibGtk::AccelGroup*, _arg1 : LibGtk::UInt32*, _arg2 : LibGtk::LibGdk::ModifierType*, _arg3 : LibGtk::LibGObject::Closure*) {
       __return_value = __block.call(AccelGroup.new(_arg0), _arg1, _arg2, GObject::Closure.new(_arg3))
       __return_value
      }
      connect("accel-changed", __callback)
    end

  end
end

