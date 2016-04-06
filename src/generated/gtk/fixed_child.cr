module Gtk
  class FixedChild
    include GObject::WrappedType

    def initialize(@gtk_fixed_child)
    end

    def to_unsafe
      @gtk_fixed_child.not_nil!
    end

  end
end

