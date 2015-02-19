require "./box"

module Gtk
  class Statusbar < Box
    def initialize @gtk_statusbar
    end

    def to_unsafe
      @gtk_statusbar.not_nil!
    end

    # Implements ImplementorIface
    # Implements Buildable
    # Implements Orientable
    def self.new_internal
      __return_value = LibGtk.statusbar_new
      Gtk::Widget.new(__return_value)
    end

    def context_id(context_description)
      __return_value = LibGtk.statusbar_get_context_id((to_unsafe as LibGtk::Statusbar*), context_description)
      __return_value
    end

    def message_area
      __return_value = LibGtk.statusbar_get_message_area((to_unsafe as LibGtk::Statusbar*))
      Gtk::Box.new(__return_value)
    end

    def pop(context_id)
      __return_value = LibGtk.statusbar_pop((to_unsafe as LibGtk::Statusbar*), UInt32.cast(context_id))
      __return_value
    end

    def push(context_id, text)
      __return_value = LibGtk.statusbar_push((to_unsafe as LibGtk::Statusbar*), UInt32.cast(context_id), text)
      __return_value
    end

    def remove(context_id, message_id)
      __return_value = LibGtk.statusbar_remove((to_unsafe as LibGtk::Statusbar*), UInt32.cast(context_id), UInt32.cast(message_id))
      __return_value
    end

    def remove_all(context_id)
      __return_value = LibGtk.statusbar_remove_all((to_unsafe as LibGtk::Statusbar*), UInt32.cast(context_id))
      __return_value
    end

  end
end

