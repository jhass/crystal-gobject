require "./box"

module Gtk
  class StackSwitcher < Box
    @gtk_stack_switcher : LibGtk::StackSwitcher*?
    def initialize(@gtk_stack_switcher : LibGtk::StackSwitcher*)
    end

    def to_unsafe
      @gtk_stack_switcher.not_nil!
    end

    # Implements ImplementorIface
    # Implements Buildable
    # Implements Orientable


    def self.new
      __return_value = LibGtk.stack_switcher_new
      cast Gtk::Widget.new(__return_value)
    end

    def stack
      __return_value = LibGtk.stack_switcher_get_stack((to_unsafe as LibGtk::StackSwitcher*))
      Gtk::Stack.new(__return_value) if __return_value
    end

    def stack=(stack)
      __return_value = LibGtk.stack_switcher_set_stack((to_unsafe as LibGtk::StackSwitcher*), stack && (stack.to_unsafe as LibGtk::Stack*))
      __return_value
    end

  end
end

