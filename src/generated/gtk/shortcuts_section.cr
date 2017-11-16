require "./box"

module Gtk
  class ShortcutsSection < Box
    @pointer : Void*
    def initialize(pointer : LibGtk::ShortcutsSection*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::ShortcutsSection*)
    end

    # Implements ImplementorIface
    # Implements Buildable
    # Implements Orientable
    def max_height
      __return_value = LibGtk.shortcuts_section_get_max_height(to_unsafe.as(LibGtk::ShortcutsSection*))
      __return_value
    end

    def section_name
      __return_value = LibGtk.shortcuts_section_get_section_name(to_unsafe.as(LibGtk::ShortcutsSection*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def title
      __return_value = LibGtk.shortcuts_section_get_title(to_unsafe.as(LibGtk::ShortcutsSection*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def view_name
      __return_value = LibGtk.shortcuts_section_get_view_name(to_unsafe.as(LibGtk::ShortcutsSection*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

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

