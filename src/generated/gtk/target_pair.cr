module Gtk
  class TargetPair
    include GObject::WrappedType

    def self.new(target : Gdk::Atom|Nil = nil, flags : UInt32|Nil = nil, info : UInt32|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(16, 0u8)
      new(ptr.as(LibGtk::TargetPair*)).tap do |object|
        object.target = target unless target.nil?
        object.flags = flags unless flags.nil?
        object.info = info unless info.nil?
      end
    end

    @pointer : Void*
    def initialize(pointer : LibGtk::TargetPair*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::TargetPair*)
    end

    def target
      Gdk::Atom.new((to_unsafe.as(LibGtk::TargetPair*).value.target))
    end

    def target=(value : Gdk::Atom)
      to_unsafe.as(LibGtk::TargetPair*).value.target = value.to_unsafe.as(LibGdk::Atom*)
    end

    def flags
      (to_unsafe.as(LibGtk::TargetPair*).value.flags)
    end

    def flags=(value : UInt32)
      to_unsafe.as(LibGtk::TargetPair*).value.flags = UInt32.new(value)
    end

    def info
      (to_unsafe.as(LibGtk::TargetPair*).value.info)
    end

    def info=(value : UInt32)
      to_unsafe.as(LibGtk::TargetPair*).value.info = UInt32.new(value)
    end

  end
end

