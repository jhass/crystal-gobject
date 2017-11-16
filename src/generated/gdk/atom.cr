module Gdk
  class Atom
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGdk::Atom*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGdk::Atom*)
    end

    def name
      __return_value = LibGdk.atom_name(@pointer.as(LibGdk::Atom*))
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

