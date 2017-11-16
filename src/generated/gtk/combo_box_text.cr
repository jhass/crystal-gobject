require "./combo_box"

module Gtk
  class ComboBoxText < ComboBox
    @pointer : Void*
    def initialize(pointer : LibGtk::ComboBoxText*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::ComboBoxText*)
    end

    # Implements ImplementorIface
    # Implements Buildable
    # Implements CellEditable
    # Implements CellLayout
    def self.new : self
      __return_value = LibGtk.combo_box_text_new
      cast Gtk::Widget.new(__return_value)
    end

    def self.new_with_entry : self
      __return_value = LibGtk.combo_box_text_new_with_entry
      cast Gtk::Widget.new(__return_value)
    end

    def append(id, text)
      LibGtk.combo_box_text_append(@pointer.as(LibGtk::ComboBoxText*), id ? id.to_unsafe : nil, text.to_unsafe)
      nil
    end

    def append_text(text)
      LibGtk.combo_box_text_append_text(@pointer.as(LibGtk::ComboBoxText*), text.to_unsafe)
      nil
    end

    def active_text
      __return_value = LibGtk.combo_box_text_get_active_text(@pointer.as(LibGtk::ComboBoxText*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def insert(position, id, text)
      LibGtk.combo_box_text_insert(@pointer.as(LibGtk::ComboBoxText*), Int32.new(position), id ? id.to_unsafe : nil, text.to_unsafe)
      nil
    end

    def insert_text(position, text)
      LibGtk.combo_box_text_insert_text(@pointer.as(LibGtk::ComboBoxText*), Int32.new(position), text.to_unsafe)
      nil
    end

    def prepend(id, text)
      LibGtk.combo_box_text_prepend(@pointer.as(LibGtk::ComboBoxText*), id ? id.to_unsafe : nil, text.to_unsafe)
      nil
    end

    def prepend_text(text)
      LibGtk.combo_box_text_prepend_text(@pointer.as(LibGtk::ComboBoxText*), text.to_unsafe)
      nil
    end

    def remove(position)
      LibGtk.combo_box_text_remove(@pointer.as(LibGtk::ComboBoxText*), Int32.new(position))
      nil
    end

    def remove_all
      LibGtk.combo_box_text_remove_all(@pointer.as(LibGtk::ComboBoxText*))
      nil
    end

  end
end

