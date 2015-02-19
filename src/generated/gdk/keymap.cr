module Gdk
  class Keymap < GObject::Object
    def initialize @gdk_keymap
    end

    def to_unsafe
      @gdk_keymap.not_nil!
    end

    def self.default
      __return_value = LibGdk.keymap_get_default
      Gdk::Keymap.new(__return_value)
    end

    def self.for_display(display)
      __return_value = LibGdk.keymap_get_for_display((display.to_unsafe as LibGdk::Display*))
      Gdk::Keymap.new(__return_value)
    end

    def add_virtual_modifiers(state)
      __return_value = LibGdk.keymap_add_virtual_modifiers((to_unsafe as LibGdk::Keymap*), state)
      __return_value
    end

    def caps_lock_state
      __return_value = LibGdk.keymap_get_caps_lock_state((to_unsafe as LibGdk::Keymap*))
      __return_value
    end

    def direction
      __return_value = LibGdk.keymap_get_direction((to_unsafe as LibGdk::Keymap*))
      __return_value
    end

    def entries_for_keycode(hardware_keycode, keys, keyvals, n_entries)
      __return_value = LibGdk.keymap_get_entries_for_keycode((to_unsafe as LibGdk::Keymap*), UInt32.cast(hardware_keycode), keys, keyvals, Int32.cast(n_entries))
      __return_value
    end

    def entries_for_keyval(keyval, keys, n_keys)
      __return_value = LibGdk.keymap_get_entries_for_keyval((to_unsafe as LibGdk::Keymap*), UInt32.cast(keyval), keys, Int32.cast(n_keys))
      __return_value
    end

    def modifier_mask(intent)
      __return_value = LibGdk.keymap_get_modifier_mask((to_unsafe as LibGdk::Keymap*), intent)
      __return_value
    end

    def modifier_state
      __return_value = LibGdk.keymap_get_modifier_state((to_unsafe as LibGdk::Keymap*))
      __return_value
    end

    def num_lock_state
      __return_value = LibGdk.keymap_get_num_lock_state((to_unsafe as LibGdk::Keymap*))
      __return_value
    end

    def have_bidi_layouts
      __return_value = LibGdk.keymap_have_bidi_layouts((to_unsafe as LibGdk::Keymap*))
      __return_value
    end

    def lookup_key(key)
      __return_value = LibGdk.keymap_lookup_key((to_unsafe as LibGdk::Keymap*), (key.to_unsafe as LibGdk::KeymapKey*))
      __return_value
    end

    def map_virtual_modifiers(state)
      __return_value = LibGdk.keymap_map_virtual_modifiers((to_unsafe as LibGdk::Keymap*), state)
      __return_value
    end

    def translate_keyboard_state(hardware_keycode, state, group, keyval, effective_group, level, consumed_modifiers)
      __return_value = LibGdk.keymap_translate_keyboard_state((to_unsafe as LibGdk::Keymap*), UInt32.cast(hardware_keycode), state, Int32.cast(group), UInt32.cast(keyval), Int32.cast(effective_group), Int32.cast(level), consumed_modifiers)
      __return_value
    end

  end
end

