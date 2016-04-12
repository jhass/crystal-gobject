require "./box"

module Gtk
  class ShortcutsShortcut < Box
    def initialize(@gtk_shortcuts_shortcut)
    end

    def to_unsafe
      @gtk_shortcuts_shortcut.not_nil!
    end

    # Implements ImplementorIface
    # Implements Buildable
    # Implements Orientable










  end
end

