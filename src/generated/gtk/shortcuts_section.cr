require "./box"

module Gtk
  class ShortcutsSection < Box
    @gtk_shortcuts_section : LibGtk::ShortcutsSection*?
    def initialize(@gtk_shortcuts_section : LibGtk::ShortcutsSection*)
    end

    def to_unsafe
      @gtk_shortcuts_section.not_nil!
    end

    # Implements ImplementorIface
    # Implements Buildable
    # Implements Orientable




    alias ChangeCurrentPageSignal = ShortcutsSection, Int32 -> Bool
    def on_change_current_page(&__block : ChangeCurrentPageSignal)
      __callback = ->(_arg0 : LibGtk::ShortcutsSection*, _arg1 : LibGtk::Int32*) {
       __return_value = __block.call(ShortcutsSection.new(_arg0), _arg1)
       __return_value
      }
      connect("change-current-page", __callback)
    end

  end
end

