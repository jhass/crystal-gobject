require "./bin"

module Gtk
  class ListBoxRow < Bin
    def initialize @gtk_list_box_row
    end

    def to_unsafe
      @gtk_list_box_row.not_nil!
    end

    # Implements ImplementorIface
    # Implements Buildable
    def activatable=(__value)
      LibGtk.list_box_row_set_activatable((to_unsafe as LibGtk::ListBoxRow*), Bool.cast(__value))
    end

    def selectable=(__value)
      LibGtk.list_box_row_set_selectable((to_unsafe as LibGtk::ListBoxRow*), Bool.cast(__value))
    end

    def self.new_internal
      __return_value = LibGtk.list_box_row_new
      Gtk::Widget.new(__return_value)
    end

    def changed
      __return_value = LibGtk.list_box_row_changed((to_unsafe as LibGtk::ListBoxRow*))
      __return_value
    end

    def activatable
      __return_value = LibGtk.list_box_row_get_activatable((to_unsafe as LibGtk::ListBoxRow*))
      __return_value
    end

    def header
      __return_value = LibGtk.list_box_row_get_header((to_unsafe as LibGtk::ListBoxRow*))
      Gtk::Widget.new(__return_value)
    end

    def index
      __return_value = LibGtk.list_box_row_get_index((to_unsafe as LibGtk::ListBoxRow*))
      __return_value
    end

    def selectable
      __return_value = LibGtk.list_box_row_get_selectable((to_unsafe as LibGtk::ListBoxRow*))
      __return_value
    end

    def is_selected
      __return_value = LibGtk.list_box_row_is_selected((to_unsafe as LibGtk::ListBoxRow*))
      __return_value
    end

    def activatable=(activatable)
      __return_value = LibGtk.list_box_row_set_activatable((to_unsafe as LibGtk::ListBoxRow*), Bool.cast(activatable))
      __return_value
    end

    def header=(header)
      __return_value = LibGtk.list_box_row_set_header((to_unsafe as LibGtk::ListBoxRow*), (header.to_unsafe as LibGtk::Widget*))
      __return_value
    end

    def selectable=(selectable)
      __return_value = LibGtk.list_box_row_set_selectable((to_unsafe as LibGtk::ListBoxRow*), Bool.cast(selectable))
      __return_value
    end

  end
end

