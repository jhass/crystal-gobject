module Gtk
  class FixedChild
    include GObject::WrappedType

    @gtk_fixed_child : LibGtk::FixedChild*?
    def initialize(@gtk_fixed_child : LibGtk::FixedChild*)
    end

    def to_unsafe
      @gtk_fixed_child.not_nil!
    end

  end
end

