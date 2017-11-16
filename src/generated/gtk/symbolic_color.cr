module Gtk
  class SymbolicColor
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGtk::SymbolicColor*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::SymbolicColor*)
    end

    def self.new_alpha(color, factor) : self
      __return_value = LibGtk.symbolic_color_new_alpha(color.to_unsafe.as(LibGtk::SymbolicColor*), Float64.new(factor))
      cast Gtk::SymbolicColor.new(__return_value)
    end

    def self.new_literal(color) : self
      __return_value = LibGtk.symbolic_color_new_literal(color.to_unsafe.as(LibGdk::RGBA*))
      cast Gtk::SymbolicColor.new(__return_value)
    end

    def self.new_mix(color1, color2, factor) : self
      __return_value = LibGtk.symbolic_color_new_mix(color1.to_unsafe.as(LibGtk::SymbolicColor*), color2.to_unsafe.as(LibGtk::SymbolicColor*), Float64.new(factor))
      cast Gtk::SymbolicColor.new(__return_value)
    end

    def self.new_name(name) : self
      __return_value = LibGtk.symbolic_color_new_name(name.to_unsafe)
      cast Gtk::SymbolicColor.new(__return_value)
    end

    def self.new_shade(color, factor) : self
      __return_value = LibGtk.symbolic_color_new_shade(color.to_unsafe.as(LibGtk::SymbolicColor*), Float64.new(factor))
      cast Gtk::SymbolicColor.new(__return_value)
    end

    def self.new_win32(theme_class, id) : self
      __return_value = LibGtk.symbolic_color_new_win32(theme_class.to_unsafe, Int32.new(id))
      cast Gtk::SymbolicColor.new(__return_value)
    end

    def ref
      __return_value = LibGtk.symbolic_color_ref(@pointer.as(LibGtk::SymbolicColor*))
      Gtk::SymbolicColor.new(__return_value)
    end

    def resolve(props, resolved_color)
      __return_value = LibGtk.symbolic_color_resolve(@pointer.as(LibGtk::SymbolicColor*), props ? props.to_unsafe.as(LibGtk::StyleProperties*) : nil, resolved_color)
      __return_value
    end

    def to_string
      __return_value = LibGtk.symbolic_color_to_string(@pointer.as(LibGtk::SymbolicColor*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def unref
      LibGtk.symbolic_color_unref(@pointer.as(LibGtk::SymbolicColor*))
      nil
    end

  end
end

