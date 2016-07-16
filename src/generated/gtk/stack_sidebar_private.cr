module Gtk
  class StackSidebarPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::StackSidebarPrivate*))
    end

    @gtk_stack_sidebar_private : LibGtk::StackSidebarPrivate*?
    def initialize(@gtk_stack_sidebar_private : LibGtk::StackSidebarPrivate*)
    end

    def to_unsafe
      @gtk_stack_sidebar_private.not_nil!
    end

  end
end

