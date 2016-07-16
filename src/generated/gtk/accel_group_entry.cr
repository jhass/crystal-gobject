module Gtk
  class AccelGroupEntry
    include GObject::WrappedType

    def self.new(key : Gtk::AccelKey|Nil = nil, closure : GObject::Closure|Nil = nil, accel_path_quark : UInt32|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(32, 0u8)
      new(ptr.as(LibGtk::AccelGroupEntry*)).tap do |object|
        object.key = key unless key.nil?
        object.closure = closure unless closure.nil?
        object.accel_path_quark = accel_path_quark unless accel_path_quark.nil?
      end
    end

    @gtk_accel_group_entry : LibGtk::AccelGroupEntry*?
    def initialize(@gtk_accel_group_entry : LibGtk::AccelGroupEntry*)
    end

    def to_unsafe
      @gtk_accel_group_entry.not_nil!.as(Void*)
    end

    def key
      Gtk::AccelKey.new((to_unsafe.as(LibGtk::AccelGroupEntry*).value.key))
    end

    def key=(value : Gtk::AccelKey)
      to_unsafe.as(LibGtk::AccelGroupEntry*).value.key = value
    end

    def closure
      GObject::Closure.new((to_unsafe.as(LibGtk::AccelGroupEntry*).value.closure))
    end

    def closure=(value : GObject::Closure)
      to_unsafe.as(LibGtk::AccelGroupEntry*).value.closure = value.to_unsafe.as(LibGObject::Closure*)
    end

    def accel_path_quark
      (to_unsafe.as(LibGtk::AccelGroupEntry*).value.accel_path_quark)
    end

    def accel_path_quark=(value : UInt32)
      to_unsafe.as(LibGtk::AccelGroupEntry*).value.accel_path_quark = UInt32.new(value)
    end

  end
end

