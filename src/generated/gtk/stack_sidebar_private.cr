module Gtk
  class StackSidebarPrivate
    include GObject::WrappedType

    def initialize(@gtk_stack_sidebar_private)
    end

    def to_unsafe
      @gtk_stack_sidebar_private.not_nil!
    end

  end
end

