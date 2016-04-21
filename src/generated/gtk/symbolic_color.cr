module Gtk
  class SymbolicColor
    include GObject::WrappedType

    @gtk_symbolic_color : LibGtk::SymbolicColor*?
    def initialize(@gtk_symbolic_color : LibGtk::SymbolicColor*)
    end

    def to_unsafe
      @gtk_symbolic_color.not_nil!
    end

    def self.new_alpha(color, factor) : self
      __return_value = LibGtk.symbolic_color_new_alpha((color.to_unsafe as LibGtk::SymbolicColor*), Float64.new(factor))
      cast Gtk::SymbolicColor.new(__return_value)
    end

    def self.new_literal(color) : self
      __return_value = LibGtk.symbolic_color_new_literal((color.to_unsafe as LibGdk::RGBA*))
      cast Gtk::SymbolicColor.new(__return_value)
    end

    def self.new_mix(color1, color2, factor) : self
      __return_value = LibGtk.symbolic_color_new_mix((color1.to_unsafe as LibGtk::SymbolicColor*), (color2.to_unsafe as LibGtk::SymbolicColor*), Float64.new(factor))
      cast Gtk::SymbolicColor.new(__return_value)
    end

    def self.new_name(name) : self
      __return_value = LibGtk.symbolic_color_new_name(name)
      cast Gtk::SymbolicColor.new(__return_value)
    end

    def self.new_shade(color, factor) : self
      __return_value = LibGtk.symbolic_color_new_shade((color.to_unsafe as LibGtk::SymbolicColor*), Float64.new(factor))
      cast Gtk::SymbolicColor.new(__return_value)
    end

    def self.new_win32(theme_class, id) : self
      __return_value = LibGtk.symbolic_color_new_win32(theme_class, Int32.new(id))
      cast Gtk::SymbolicColor.new(__return_value)
    end

    def ref
      __return_value = LibGtk.symbolic_color_ref((to_unsafe as LibGtk::SymbolicColor*))
      Gtk::SymbolicColor.new(__return_value)
    end

    def resolve(props, resolved_color)
      __return_value = LibGtk.symbolic_color_resolve((to_unsafe as LibGtk::SymbolicColor*), props && (props.to_unsafe as LibGtk::StyleProperties*), resolved_color)
      __return_value
    end

    def to_string
      __return_value = LibGtk.symbolic_color_to_string((to_unsafe as LibGtk::SymbolicColor*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def unref
      __return_value = LibGtk.symbolic_color_unref((to_unsafe as LibGtk::SymbolicColor*))
      __return_value
    end

  end
end

