module Gtk
  class BindingEntry
    include GObject::WrappedType

    def initialize(@gtk_binding_entry)
    end

    def to_unsafe
      @gtk_binding_entry.not_nil!
    end

    def self.add_signal_from_string(binding_set, signal_desc)
      __return_value = LibGtk.binding_entry_add_signal_from_string((binding_set.to_unsafe as LibGtk::BindingSet*), signal_desc)
      __return_value
    end

    def self.add_signall(binding_set, keyval, modifiers, signal_name, binding_args)
      __return_value = LibGtk.binding_entry_add_signall((binding_set.to_unsafe as LibGtk::BindingSet*), UInt32.new(keyval), modifiers, signal_name, binding_args)
      __return_value
    end

    def self.remove(binding_set, keyval, modifiers)
      __return_value = LibGtk.binding_entry_remove((binding_set.to_unsafe as LibGtk::BindingSet*), UInt32.new(keyval), modifiers)
      __return_value
    end

    def self.skip(binding_set, keyval, modifiers)
      __return_value = LibGtk.binding_entry_skip((binding_set.to_unsafe as LibGtk::BindingSet*), UInt32.new(keyval), modifiers)
      __return_value
    end

  end
end

