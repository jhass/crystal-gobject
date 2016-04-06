require "./combo_box"

module Gtk
  class ComboBoxText < ComboBox
    def initialize(@gtk_combo_box_text)
    end

    def to_unsafe
      @gtk_combo_box_text.not_nil!
    end

    # Implements ImplementorIface
    # Implements Buildable
    # Implements CellEditable
    # Implements CellLayout
    def self.new_internal
      __return_value = LibGtk.combo_box_text_new
      Gtk::Widget.new(__return_value)
    end

    def self.new_with_entry
      __return_value = LibGtk.combo_box_text_new_with_entry
      Gtk::Widget.new(__return_value)
    end

    def append(id, text)
      __return_value = LibGtk.combo_box_text_append((to_unsafe as LibGtk::ComboBoxText*), id && id, text)
      __return_value
    end

    def append_text(text)
      __return_value = LibGtk.combo_box_text_append_text((to_unsafe as LibGtk::ComboBoxText*), text)
      __return_value
    end

    def active_text
      __return_value = LibGtk.combo_box_text_get_active_text((to_unsafe as LibGtk::ComboBoxText*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def insert(position, id, text)
      __return_value = LibGtk.combo_box_text_insert((to_unsafe as LibGtk::ComboBoxText*), Int32.new(position), id && id, text)
      __return_value
    end

    def insert_text(position, text)
      __return_value = LibGtk.combo_box_text_insert_text((to_unsafe as LibGtk::ComboBoxText*), Int32.new(position), text)
      __return_value
    end

    def prepend(id, text)
      __return_value = LibGtk.combo_box_text_prepend((to_unsafe as LibGtk::ComboBoxText*), id && id, text)
      __return_value
    end

    def prepend_text(text)
      __return_value = LibGtk.combo_box_text_prepend_text((to_unsafe as LibGtk::ComboBoxText*), text)
      __return_value
    end

    def remove(position)
      __return_value = LibGtk.combo_box_text_remove((to_unsafe as LibGtk::ComboBoxText*), Int32.new(position))
      __return_value
    end

    def remove_all
      __return_value = LibGtk.combo_box_text_remove_all((to_unsafe as LibGtk::ComboBoxText*))
      __return_value
    end

  end
end

