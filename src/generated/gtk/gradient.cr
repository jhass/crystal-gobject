module Gtk
  class Gradient
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGtk::Gradient*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::Gradient*)
    end

    def self.new_linear(x0, y0, x1, y1) : self
      __return_value = LibGtk.gradient_new_linear(Float64.new(x0), Float64.new(y0), Float64.new(x1), Float64.new(y1))
      cast Gtk::Gradient.new(__return_value)
    end

    def self.new_radial(x0, y0, radius0, x1, y1, radius1) : self
      __return_value = LibGtk.gradient_new_radial(Float64.new(x0), Float64.new(y0), Float64.new(radius0), Float64.new(x1), Float64.new(y1), Float64.new(radius1))
      cast Gtk::Gradient.new(__return_value)
    end

    def add_color_stop(offset, color)
      LibGtk.gradient_add_color_stop(@pointer.as(LibGtk::Gradient*), Float64.new(offset), color.to_unsafe.as(LibGtk::SymbolicColor*))
      nil
    end

    def ref
      __return_value = LibGtk.gradient_ref(@pointer.as(LibGtk::Gradient*))
      Gtk::Gradient.new(__return_value)
    end

    def resolve(props, resolved_gradient)
      __return_value = LibGtk.gradient_resolve(@pointer.as(LibGtk::Gradient*), props.to_unsafe.as(LibGtk::StyleProperties*), resolved_gradient)
      __return_value
    end

    def resolve_for_context(context)
      __return_value = LibGtk.gradient_resolve_for_context(@pointer.as(LibGtk::Gradient*), context.to_unsafe.as(LibGtk::StyleContext*))
      Cairo::Pattern.new(__return_value)
    end

    def to_string
      __return_value = LibGtk.gradient_to_string(@pointer.as(LibGtk::Gradient*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def unref
      LibGtk.gradient_unref(@pointer.as(LibGtk::Gradient*))
      nil
    end

  end
end

