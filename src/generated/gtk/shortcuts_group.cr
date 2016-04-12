require "./box"

module Gtk
  class ShortcutsGroup < Box
    def initialize(@gtk_shortcuts_group)
    end

    def to_unsafe
      @gtk_shortcuts_group.not_nil!
    end

    # Implements ImplementorIface
    # Implements Buildable
    # Implements Orientable





  end
end

