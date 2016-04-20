module Gtk
  class StackSidebarPrivate
    include GObject::WrappedType

    @gtk_stack_sidebar_private : LibGtk::StackSidebarPrivate*?
    def initialize(@gtk_stack_sidebar_private : LibGtk::StackSidebarPrivate*)
    end

    def to_unsafe
      @gtk_stack_sidebar_private.not_nil!
    end

  end
end

