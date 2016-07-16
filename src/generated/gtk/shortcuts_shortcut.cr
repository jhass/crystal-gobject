require "./box"

module Gtk
  class ShortcutsShortcut < Box
    @gtk_shortcuts_shortcut : LibGtk::ShortcutsShortcut*?
    def initialize(@gtk_shortcuts_shortcut : LibGtk::ShortcutsShortcut*)
    end

    def to_unsafe
      @gtk_shortcuts_shortcut.not_nil!.as(Void*)
    end

    # Implements ImplementorIface
    # Implements Buildable
    # Implements Orientable










  end
end

