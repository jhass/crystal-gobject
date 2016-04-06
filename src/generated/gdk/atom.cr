module Gdk
  class Atom
    include GObject::WrappedType

    def initialize(@gdk_atom)
    end

    def to_unsafe
      @gdk_atom.not_nil!
    end

    def name
      __return_value = LibGdk.atom_name((to_unsafe as LibGdk::Atom*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def self.intern(atom_name, only_if_exists)
      __return_value = LibGdk.atom_intern(atom_name, only_if_exists)
      Gdk::Atom.new(__return_value)
    end

    def self.intern_static_string(atom_name)
      __return_value = LibGdk.atom_intern_static_string(atom_name)
      Gdk::Atom.new(__return_value)
    end

  end
end

