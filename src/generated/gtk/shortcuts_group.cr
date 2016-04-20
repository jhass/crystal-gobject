require "./box"

module Gtk
  class ShortcutsGroup < Box
    @gtk_shortcuts_group : LibGtk::ShortcutsGroup*?
    def initialize(@gtk_shortcuts_group : LibGtk::ShortcutsGroup*)
    end

    def to_unsafe
      @gtk_shortcuts_group.not_nil!
    end

    # Implements ImplementorIface
    # Implements Buildable
    # Implements Orientable





  end
end

