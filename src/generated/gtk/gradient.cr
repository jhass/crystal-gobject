module Gtk
  class Gradient
    include GObject::WrappedType

    def initialize(@gtk_gradient)
    end

    def to_unsafe
      @gtk_gradient.not_nil!
    end

    def self.new_linear(x0, y0, x1, y1)
      __return_value = LibGtk.gradient_new_linear(Float64.new(x0), Float64.new(y0), Float64.new(x1), Float64.new(y1))
      Gtk::Gradient.new(__return_value)
    end

    def self.new_radial(x0, y0, radius0, x1, y1, radius1)
      __return_value = LibGtk.gradient_new_radial(Float64.new(x0), Float64.new(y0), Float64.new(radius0), Float64.new(x1), Float64.new(y1), Float64.new(radius1))
      Gtk::Gradient.new(__return_value)
    end

    def add_color_stop(offset, color)
      __return_value = LibGtk.gradient_add_color_stop((to_unsafe as LibGtk::Gradient*), Float64.new(offset), (color.to_unsafe as LibGtk::SymbolicColor*))
      __return_value
    end

    def ref
      __return_value = LibGtk.gradient_ref((to_unsafe as LibGtk::Gradient*))
      Gtk::Gradient.new(__return_value)
    end

    def resolve(props, resolved_gradient)
      __return_value = LibGtk.gradient_resolve((to_unsafe as LibGtk::Gradient*), (props.to_unsafe as LibGtk::StyleProperties*), (resolved_gradient.to_unsafe as LibCairo::Pattern*))
      __return_value
    end

    def resolve_for_context(context)
      __return_value = LibGtk.gradient_resolve_for_context((to_unsafe as LibGtk::Gradient*), (context.to_unsafe as LibGtk::StyleContext*))
      Cairo::Pattern.new(__return_value)
    end

    def to_string
      __return_value = LibGtk.gradient_to_string((to_unsafe as LibGtk::Gradient*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def unref
      __return_value = LibGtk.gradient_unref((to_unsafe as LibGtk::Gradient*))
      __return_value
    end

  end
end

