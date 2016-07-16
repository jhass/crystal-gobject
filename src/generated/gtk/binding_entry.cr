module Gtk
  class BindingEntry
    include GObject::WrappedType

    def self.new(keyval : UInt32|Nil = nil, modifiers : Gdk::ModifierType|Nil = nil, binding_set : Gtk::BindingSet|Nil = nil, destroyed : UInt32|Nil = nil, in_emission : UInt32|Nil = nil, marks_unbound : UInt32|Nil = nil, set_next : Gtk::BindingEntry|Nil = nil, hash_next : Gtk::BindingEntry|Nil = nil, signals : Gtk::BindingSignal|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(56, 0u8)
      new(ptr.as(LibGtk::BindingEntry*)).tap do |object|
        object.keyval = keyval unless keyval.nil?
        object.modifiers = modifiers unless modifiers.nil?
        object.binding_set = binding_set unless binding_set.nil?
        object.destroyed = destroyed unless destroyed.nil?
        object.in_emission = in_emission unless in_emission.nil?
        object.marks_unbound = marks_unbound unless marks_unbound.nil?
        object.set_next = set_next unless set_next.nil?
        object.hash_next = hash_next unless hash_next.nil?
        object.signals = signals unless signals.nil?
      end
    end

    @gtk_binding_entry : LibGtk::BindingEntry*?
    def initialize(@gtk_binding_entry : LibGtk::BindingEntry*)
    end

    def to_unsafe
      @gtk_binding_entry.not_nil!.as(Void*)
    end

    def self.add_signal_from_string(binding_set, signal_desc)
      __return_value = LibGtk.binding_entry_add_signal_from_string(binding_set.to_unsafe.as(LibGtk::BindingSet*), signal_desc.to_unsafe)
      __return_value
    end

    def self.add_signall(binding_set, keyval, modifiers, signal_name, binding_args)
      __return_value = LibGtk.binding_entry_add_signall(binding_set.to_unsafe.as(LibGtk::BindingSet*), UInt32.new(keyval), modifiers, signal_name.to_unsafe, binding_args)
      __return_value
    end

    def self.remove(binding_set, keyval, modifiers)
      __return_value = LibGtk.binding_entry_remove(binding_set.to_unsafe.as(LibGtk::BindingSet*), UInt32.new(keyval), modifiers)
      __return_value
    end

    def self.skip(binding_set, keyval, modifiers)
      __return_value = LibGtk.binding_entry_skip(binding_set.to_unsafe.as(LibGtk::BindingSet*), UInt32.new(keyval), modifiers)
      __return_value
    end

    def keyval
      (to_unsafe.as(LibGtk::BindingEntry*).value.keyval)
    end

    def keyval=(value : UInt32)
      to_unsafe.as(LibGtk::BindingEntry*).value.keyval = UInt32.new(value)
    end

    def modifiers
      (to_unsafe.as(LibGtk::BindingEntry*).value.modifiers)
    end

    def modifiers=(value : Gdk::ModifierType)
      to_unsafe.as(LibGtk::BindingEntry*).value.modifiers = value
    end

    def binding_set
      Gtk::BindingSet.new((to_unsafe.as(LibGtk::BindingEntry*).value.binding_set))
    end

    def binding_set=(value : Gtk::BindingSet)
      to_unsafe.as(LibGtk::BindingEntry*).value.binding_set = value.to_unsafe.as(LibGtk::BindingSet*)
    end

    def destroyed
      (to_unsafe.as(LibGtk::BindingEntry*).value.destroyed)
    end

    def destroyed=(value : UInt32)
      to_unsafe.as(LibGtk::BindingEntry*).value.destroyed = UInt32.new(value)
    end

    def in_emission
      (to_unsafe.as(LibGtk::BindingEntry*).value.in_emission)
    end

    def in_emission=(value : UInt32)
      to_unsafe.as(LibGtk::BindingEntry*).value.in_emission = UInt32.new(value)
    end

    def marks_unbound
      (to_unsafe.as(LibGtk::BindingEntry*).value.marks_unbound)
    end

    def marks_unbound=(value : UInt32)
      to_unsafe.as(LibGtk::BindingEntry*).value.marks_unbound = UInt32.new(value)
    end

    def set_next
      Gtk::BindingEntry.new((to_unsafe.as(LibGtk::BindingEntry*).value.set_next))
    end

    def set_next=(value : Gtk::BindingEntry)
      to_unsafe.as(LibGtk::BindingEntry*).value.set_next = value.to_unsafe.as(LibGtk::BindingEntry*)
    end

    def hash_next
      Gtk::BindingEntry.new((to_unsafe.as(LibGtk::BindingEntry*).value.hash_next))
    end

    def hash_next=(value : Gtk::BindingEntry)
      to_unsafe.as(LibGtk::BindingEntry*).value.hash_next = value.to_unsafe.as(LibGtk::BindingEntry*)
    end

    def signals
      Gtk::BindingSignal.new((to_unsafe.as(LibGtk::BindingEntry*).value.signals))
    end

    def signals=(value : Gtk::BindingSignal)
      to_unsafe.as(LibGtk::BindingEntry*).value.signals = value.to_unsafe.as(LibGtk::BindingSignal*)
    end

  end
end

