require "./box"

module Gtk
  class FontSelection < Box
    @pointer : Void*
    def initialize(pointer : LibGtk::FontSelection*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::FontSelection*)
    end

    # Implements ImplementorIface
    # Implements Buildable
    # Implements Orientable
    def font_name
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "font_name", gvalue)
      gvalue.string
    end

    def preview_text
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "preview_text", gvalue)
      gvalue.string
    end

    def self.new : self
      __return_value = LibGtk.font_selection_new
      cast Gtk::Widget.new(__return_value)
    end

    def face
      __return_value = LibGtk.font_selection_get_face(@pointer.as(LibGtk::FontSelection*))
      Pango::FontFace.new(__return_value)
    end

    def face_list
      __return_value = LibGtk.font_selection_get_face_list(@pointer.as(LibGtk::FontSelection*))
      Gtk::Widget.new(__return_value)
    end

    def family
      __return_value = LibGtk.font_selection_get_family(@pointer.as(LibGtk::FontSelection*))
      Pango::FontFamily.new(__return_value)
    end

    def family_list
      __return_value = LibGtk.font_selection_get_family_list(@pointer.as(LibGtk::FontSelection*))
      Gtk::Widget.new(__return_value)
    end

    def font_name
      __return_value = LibGtk.font_selection_get_font_name(@pointer.as(LibGtk::FontSelection*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def preview_entry
      __return_value = LibGtk.font_selection_get_preview_entry(@pointer.as(LibGtk::FontSelection*))
      Gtk::Widget.new(__return_value)
    end

    def preview_text
      __return_value = LibGtk.font_selection_get_preview_text(@pointer.as(LibGtk::FontSelection*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def size
      __return_value = LibGtk.font_selection_get_size(@pointer.as(LibGtk::FontSelection*))
      __return_value
    end

    def size_entry
      __return_value = LibGtk.font_selection_get_size_entry(@pointer.as(LibGtk::FontSelection*))
      Gtk::Widget.new(__return_value)
    end

    def size_list
      __return_value = LibGtk.font_selection_get_size_list(@pointer.as(LibGtk::FontSelection*))
      Gtk::Widget.new(__return_value)
    end

    def font_name=(fontname)
      __return_value = LibGtk.font_selection_set_font_name(@pointer.as(LibGtk::FontSelection*), fontname.to_unsafe)
      __return_value
    end

    def preview_text=(text)
      LibGtk.font_selection_set_preview_text(@pointer.as(LibGtk::FontSelection*), text.to_unsafe)
      nil
    end

  end
end

