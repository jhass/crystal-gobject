require "./box"

module Gtk
  class FontSelection < Box
    def initialize(@gtk_font_selection)
    end

    def to_unsafe
      @gtk_font_selection.not_nil!
    end

    # Implements ImplementorIface
    # Implements Buildable
    # Implements Orientable


    def self.new_internal
      __return_value = LibGtk.font_selection_new
      Gtk::Widget.new(__return_value)
    end

    def face
      __return_value = LibGtk.font_selection_get_face((to_unsafe as LibGtk::FontSelection*))
      Pango::FontFace.new(__return_value)
    end

    def face_list
      __return_value = LibGtk.font_selection_get_face_list((to_unsafe as LibGtk::FontSelection*))
      Gtk::Widget.new(__return_value)
    end

    def family
      __return_value = LibGtk.font_selection_get_family((to_unsafe as LibGtk::FontSelection*))
      Pango::FontFamily.new(__return_value)
    end

    def family_list
      __return_value = LibGtk.font_selection_get_family_list((to_unsafe as LibGtk::FontSelection*))
      Gtk::Widget.new(__return_value)
    end

    def font_name
      __return_value = LibGtk.font_selection_get_font_name((to_unsafe as LibGtk::FontSelection*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def preview_entry
      __return_value = LibGtk.font_selection_get_preview_entry((to_unsafe as LibGtk::FontSelection*))
      Gtk::Widget.new(__return_value)
    end

    def preview_text
      __return_value = LibGtk.font_selection_get_preview_text((to_unsafe as LibGtk::FontSelection*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def size
      __return_value = LibGtk.font_selection_get_size((to_unsafe as LibGtk::FontSelection*))
      __return_value
    end

    def size_entry
      __return_value = LibGtk.font_selection_get_size_entry((to_unsafe as LibGtk::FontSelection*))
      Gtk::Widget.new(__return_value)
    end

    def size_list
      __return_value = LibGtk.font_selection_get_size_list((to_unsafe as LibGtk::FontSelection*))
      Gtk::Widget.new(__return_value)
    end

    def font_name=(fontname)
      __return_value = LibGtk.font_selection_set_font_name((to_unsafe as LibGtk::FontSelection*), fontname)
      __return_value
    end

    def preview_text=(text)
      __return_value = LibGtk.font_selection_set_preview_text((to_unsafe as LibGtk::FontSelection*), text)
      __return_value
    end

  end
end

