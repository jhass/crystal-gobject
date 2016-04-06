module Gtk
  class CssSection
    include GObject::WrappedType

    def initialize(@gtk_css_section)
    end

    def to_unsafe
      @gtk_css_section.not_nil!
    end

    def end_line
      __return_value = LibGtk.css_section_get_end_line((to_unsafe as LibGtk::CssSection*))
      __return_value
    end

    def end_position
      __return_value = LibGtk.css_section_get_end_position((to_unsafe as LibGtk::CssSection*))
      __return_value
    end

    def file
      __return_value = LibGtk.css_section_get_file((to_unsafe as LibGtk::CssSection*))
      __return_value
    end

    def parent
      __return_value = LibGtk.css_section_get_parent((to_unsafe as LibGtk::CssSection*))
      Gtk::CssSection.new(__return_value) if __return_value
    end

    def section_type
      __return_value = LibGtk.css_section_get_section_type((to_unsafe as LibGtk::CssSection*))
      __return_value
    end

    def start_line
      __return_value = LibGtk.css_section_get_start_line((to_unsafe as LibGtk::CssSection*))
      __return_value
    end

    def start_position
      __return_value = LibGtk.css_section_get_start_position((to_unsafe as LibGtk::CssSection*))
      __return_value
    end

    def ref
      __return_value = LibGtk.css_section_ref((to_unsafe as LibGtk::CssSection*))
      Gtk::CssSection.new(__return_value)
    end

    def unref
      __return_value = LibGtk.css_section_unref((to_unsafe as LibGtk::CssSection*))
      __return_value
    end

  end
end

