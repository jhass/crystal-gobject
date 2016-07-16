module Gtk
  class AccelKey
    include GObject::WrappedType

    def self.new(accel_key : UInt32|Nil = nil, accel_mods : Gdk::ModifierType|Nil = nil, accel_flags : UInt32|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(12, 0u8)
      new(ptr.as(LibGtk::AccelKey*)).tap do |object|
        object.accel_key = accel_key unless accel_key.nil?
        object.accel_mods = accel_mods unless accel_mods.nil?
        object.accel_flags = accel_flags unless accel_flags.nil?
      end
    end

    @gtk_accel_key : LibGtk::AccelKey*?
    def initialize(@gtk_accel_key : LibGtk::AccelKey*)
    end

    def to_unsafe
      @gtk_accel_key.not_nil!.as(Void*)
    end

    def accel_key
      (to_unsafe.as(LibGtk::AccelKey*).value.accel_key)
    end

    def accel_key=(value : UInt32)
      to_unsafe.as(LibGtk::AccelKey*).value.accel_key = UInt32.new(value)
    end

    def accel_mods
      (to_unsafe.as(LibGtk::AccelKey*).value.accel_mods)
    end

    def accel_mods=(value : Gdk::ModifierType)
      to_unsafe.as(LibGtk::AccelKey*).value.accel_mods = value
    end

    def accel_flags
      (to_unsafe.as(LibGtk::AccelKey*).value.accel_flags)
    end

    def accel_flags=(value : UInt32)
      to_unsafe.as(LibGtk::AccelKey*).value.accel_flags = UInt32.new(value)
    end

  end
end

