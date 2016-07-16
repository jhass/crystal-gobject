module Gdk
  class Atom
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGdk::Atom*))
    end

    @gdk_atom : LibGdk::Atom*?
    def initialize(@gdk_atom : LibGdk::Atom*)
    end

    def to_unsafe
      @gdk_atom.not_nil!.as(Void*)
    end

    def name
      __return_value = LibGdk.atom_name(to_unsafe.as(LibGdk::Atom*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def self.intern(atom_name, only_if_exists)
      __return_value = LibGdk.atom_intern(atom_name.to_unsafe, only_if_exists)
      Gdk::Atom.new(__return_value)
    end

    def self.intern_static_string(atom_name)
      __return_value = LibGdk.atom_intern_static_string(atom_name.to_unsafe)
      Gdk::Atom.new(__return_value)
    end

  end
end

