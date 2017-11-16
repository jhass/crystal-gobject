require "./box"

module Gtk
  class ShortcutsShortcut < Box
    @pointer : Void*
    def initialize(pointer : LibGtk::ShortcutsShortcut*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::ShortcutsShortcut*)
    end

    # Implements ImplementorIface
    # Implements Buildable
    # Implements Orientable

    def accelerator
      __return_value = LibGtk.shortcuts_shortcut_get_accelerator(to_unsafe.as(LibGtk::ShortcutsShortcut*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def action_name
      __return_value = LibGtk.shortcuts_shortcut_get_action_name(to_unsafe.as(LibGtk::ShortcutsShortcut*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def direction
      __return_value = LibGtk.shortcuts_shortcut_get_direction(to_unsafe.as(LibGtk::ShortcutsShortcut*))
      __return_value
    end

    def icon
      __return_value = LibGtk.shortcuts_shortcut_get_icon(to_unsafe.as(LibGtk::ShortcutsShortcut*))
      __return_value
    end

    def icon_set
      __return_value = LibGtk.shortcuts_shortcut_get_icon_set(to_unsafe.as(LibGtk::ShortcutsShortcut*))
      __return_value
    end

    def shortcut_type
      __return_value = LibGtk.shortcuts_shortcut_get_shortcut_type(to_unsafe.as(LibGtk::ShortcutsShortcut*))
      __return_value
    end

    def subtitle
      __return_value = LibGtk.shortcuts_shortcut_get_subtitle(to_unsafe.as(LibGtk::ShortcutsShortcut*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def subtitle_set
      __return_value = LibGtk.shortcuts_shortcut_get_subtitle_set(to_unsafe.as(LibGtk::ShortcutsShortcut*))
      __return_value
    end

    def title
      __return_value = LibGtk.shortcuts_shortcut_get_title(to_unsafe.as(LibGtk::ShortcutsShortcut*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end


  end
end

