module Gtk
  class CssSection
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGtk::CssSection*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::CssSection*)
    end

    def end_line
      __return_value = LibGtk.css_section_get_end_line(@pointer.as(LibGtk::CssSection*))
      __return_value
    end

    def end_position
      __return_value = LibGtk.css_section_get_end_position(@pointer.as(LibGtk::CssSection*))
      __return_value
    end

    def file
      __return_value = LibGtk.css_section_get_file(@pointer.as(LibGtk::CssSection*))
      __return_value
    end

    def parent
      __return_value = LibGtk.css_section_get_parent(@pointer.as(LibGtk::CssSection*))
      Gtk::CssSection.new(__return_value) if __return_value
    end

    def section_type
      __return_value = LibGtk.css_section_get_section_type(@pointer.as(LibGtk::CssSection*))
      __return_value
    end

    def start_line
      __return_value = LibGtk.css_section_get_start_line(@pointer.as(LibGtk::CssSection*))
      __return_value
    end

    def start_position
      __return_value = LibGtk.css_section_get_start_position(@pointer.as(LibGtk::CssSection*))
      __return_value
    end

    def ref
      __return_value = LibGtk.css_section_ref(@pointer.as(LibGtk::CssSection*))
      Gtk::CssSection.new(__return_value)
    end

    def unref
      LibGtk.css_section_unref(@pointer.as(LibGtk::CssSection*))
      nil
    end

  end
end

