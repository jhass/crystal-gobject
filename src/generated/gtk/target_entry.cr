module Gtk
  class TargetEntry
    include GObject::WrappedType

    def self.new(target : String|Nil = nil, flags : UInt32|Nil = nil, info : UInt32|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(16, 0u8)
      new(ptr.as(LibGtk::TargetEntry*)).tap do |object|
        object.target = target unless target.nil?
        object.flags = flags unless flags.nil?
        object.info = info unless info.nil?
      end
    end

    @pointer : Void*
    def initialize(pointer : LibGtk::TargetEntry*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::TargetEntry*)
    end

    def self.new(target, flags, info) : self
      __return_value = LibGtk.target_entry_new(target.to_unsafe, UInt32.new(flags), UInt32.new(info))
      cast Gtk::TargetEntry.new(__return_value)
    end

    def copy
      __return_value = LibGtk.target_entry_copy(@pointer.as(LibGtk::TargetEntry*))
      Gtk::TargetEntry.new(__return_value)
    end

    def free
      LibGtk.target_entry_free(@pointer.as(LibGtk::TargetEntry*))
      nil
    end

    def target
      (raise "Expected string but got null" unless (to_unsafe.as(LibGtk::TargetEntry*).value.target); ::String.new((to_unsafe.as(LibGtk::TargetEntry*).value.target)))
    end

    def target=(value : String)
      to_unsafe.as(LibGtk::TargetEntry*).value.target = value.to_unsafe
    end

    def flags
      (to_unsafe.as(LibGtk::TargetEntry*).value.flags)
    end

    def flags=(value : UInt32)
      to_unsafe.as(LibGtk::TargetEntry*).value.flags = UInt32.new(value)
    end

    def info
      (to_unsafe.as(LibGtk::TargetEntry*).value.info)
    end

    def info=(value : UInt32)
      to_unsafe.as(LibGtk::TargetEntry*).value.info = UInt32.new(value)
    end

  end
end

