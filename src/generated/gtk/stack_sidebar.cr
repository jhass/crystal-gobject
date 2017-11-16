require "./bin"

module Gtk
  class StackSidebar < Bin
    @pointer : Void*
    def initialize(pointer : LibGtk::StackSidebar*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::StackSidebar*)
    end

    # Implements ImplementorIface
    # Implements Buildable
    def stack
      __return_value = LibGtk.stack_sidebar_get_stack(to_unsafe.as(LibGtk::StackSidebar*))
      Gtk::Stack.new(__return_value)
    end

    def self.new : self
      __return_value = LibGtk.stack_sidebar_new
      cast Gtk::Widget.new(__return_value)
    end

    def stack
      __return_value = LibGtk.stack_sidebar_get_stack(@pointer.as(LibGtk::StackSidebar*))
      Gtk::Stack.new(__return_value) if __return_value
    end

    def stack=(stack)
      LibGtk.stack_sidebar_set_stack(@pointer.as(LibGtk::StackSidebar*), stack.to_unsafe.as(LibGtk::Stack*))
      nil
    end

  end
end

