module Gtk
  class AccelGroup < GObject::Object
    def initialize @gtk_accel_group
    end

    def to_unsafe
      @gtk_accel_group.not_nil!
    end



    def self.new_internal
      __return_value = LibGtk.accel_group_new
      Gtk::AccelGroup.new(__return_value)
    end

    def self.from_accel_closure(closure)
      __return_value = LibGtk.accel_group_from_accel_closure((closure.to_unsafe as LibGObject::Closure*))
      Gtk::AccelGroup.new(__return_value)
    end

    def activate(accel_quark, acceleratable, accel_key, accel_mods)
      __return_value = LibGtk.accel_group_activate((to_unsafe as LibGtk::AccelGroup*), UInt32.cast(accel_quark), (acceleratable.to_unsafe as LibGObject::Object*), UInt32.cast(accel_key), accel_mods)
      __return_value
    end

    def connect(accel_key, accel_mods, accel_flags, closure)
      __return_value = LibGtk.accel_group_connect((to_unsafe as LibGtk::AccelGroup*), UInt32.cast(accel_key), accel_mods, accel_flags, (closure.to_unsafe as LibGObject::Closure*))
      __return_value
    end

    def connect_by_path(accel_path, closure)
      __return_value = LibGtk.accel_group_connect_by_path((to_unsafe as LibGtk::AccelGroup*), accel_path, (closure.to_unsafe as LibGObject::Closure*))
      __return_value
    end

    def disconnect(closure)
      __return_value = LibGtk.accel_group_disconnect((to_unsafe as LibGtk::AccelGroup*), (closure.to_unsafe as LibGObject::Closure*))
      __return_value
    end

    def disconnect_key(accel_key, accel_mods)
      __return_value = LibGtk.accel_group_disconnect_key((to_unsafe as LibGtk::AccelGroup*), UInt32.cast(accel_key), accel_mods)
      __return_value
    end

    def find(find_func, data)
      __return_value = LibGtk.accel_group_find((to_unsafe as LibGtk::AccelGroup*), find_func, data)
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
      __return_value = LibGtk.accel_group_query((to_unsafe as LibGtk::AccelGroup*), UInt32.cast(accel_key), accel_mods, UInt32.cast(n_entries))
      PointerIterator.new(__return_value) {|__item_44| Gtk::AccelGroupEntry.new(__item_44) }
    end

    def unlock
      __return_value = LibGtk.accel_group_unlock((to_unsafe as LibGtk::AccelGroup*))
      __return_value
    end

  end
end

