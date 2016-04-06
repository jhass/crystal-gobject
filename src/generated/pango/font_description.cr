module Pango
  class FontDescription
    include GObject::WrappedType

    def initialize(@pango_font_description)
    end

    def to_unsafe
      @pango_font_description.not_nil!
    end

    def self.new_internal
      __return_value = LibPango.font_description_new
      Pango::FontDescription.new(__return_value)
    end

    def better_match(old_match, new_match)
      __return_value = LibPango.font_description_better_match((to_unsafe as LibPango::FontDescription*), old_match && (old_match.to_unsafe as LibPango::FontDescription*), (new_match.to_unsafe as LibPango::FontDescription*))
      __return_value
    end

    def copy
      __return_value = LibPango.font_description_copy((to_unsafe as LibPango::FontDescription*))
      Pango::FontDescription.new(__return_value) if __return_value
    end

    def copy_static
      __return_value = LibPango.font_description_copy_static((to_unsafe as LibPango::FontDescription*))
      Pango::FontDescription.new(__return_value) if __return_value
    end

    def equal(desc2)
      __return_value = LibPango.font_description_equal((to_unsafe as LibPango::FontDescription*), (desc2.to_unsafe as LibPango::FontDescription*))
      __return_value
    end

    def free
      __return_value = LibPango.font_description_free((to_unsafe as LibPango::FontDescription*))
      __return_value
    end

    def family
      __return_value = LibPango.font_description_get_family((to_unsafe as LibPango::FontDescription*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value)) if __return_value
    end

    def gravity
      __return_value = LibPango.font_description_get_gravity((to_unsafe as LibPango::FontDescription*))
      __return_value
    end

    def set_fields
      __return_value = LibPango.font_description_get_set_fields((to_unsafe as LibPango::FontDescription*))
      __return_value
    end

    def size
      __return_value = LibPango.font_description_get_size((to_unsafe as LibPango::FontDescription*))
      __return_value
    end

    def size_is_absolute
      __return_value = LibPango.font_description_get_size_is_absolute((to_unsafe as LibPango::FontDescription*))
      __return_value
    end

    def stretch
      __return_value = LibPango.font_description_get_stretch((to_unsafe as LibPango::FontDescription*))
      __return_value
    end

    def style
      __return_value = LibPango.font_description_get_style((to_unsafe as LibPango::FontDescription*))
      __return_value
    end

    def variant
      __return_value = LibPango.font_description_get_variant((to_unsafe as LibPango::FontDescription*))
      __return_value
    end

    def weight
      __return_value = LibPango.font_description_get_weight((to_unsafe as LibPango::FontDescription*))
      __return_value
    end

    def hash
      __return_value = LibPango.font_description_hash((to_unsafe as LibPango::FontDescription*))
      __return_value
    end

    def merge(desc_to_merge, replace_existing)
      __return_value = LibPango.font_description_merge((to_unsafe as LibPango::FontDescription*), desc_to_merge && (desc_to_merge.to_unsafe as LibPango::FontDescription*), replace_existing)
      __return_value
    end

    def merge_static(desc_to_merge, replace_existing)
      __return_value = LibPango.font_description_merge_static((to_unsafe as LibPango::FontDescription*), (desc_to_merge.to_unsafe as LibPango::FontDescription*), replace_existing)
      __return_value
    end

    def absolute_size=(size)
      __return_value = LibPango.font_description_set_absolute_size((to_unsafe as LibPango::FontDescription*), Float64.new(size))
      __return_value
    end

    def family=(family)
      __return_value = LibPango.font_description_set_family((to_unsafe as LibPango::FontDescription*), family)
      __return_value
    end

    def family_static=(family)
      __return_value = LibPango.font_description_set_family_static((to_unsafe as LibPango::FontDescription*), family)
      __return_value
    end

    def gravity=(gravity)
      __return_value = LibPango.font_description_set_gravity((to_unsafe as LibPango::FontDescription*), gravity)
      __return_value
    end

    def size=(size)
      __return_value = LibPango.font_description_set_size((to_unsafe as LibPango::FontDescription*), Int32.new(size))
      __return_value
    end

    def stretch=(stretch)
      __return_value = LibPango.font_description_set_stretch((to_unsafe as LibPango::FontDescription*), stretch)
      __return_value
    end

    def style=(style)
      __return_value = LibPango.font_description_set_style((to_unsafe as LibPango::FontDescription*), style)
      __return_value
    end

    def variant=(variant)
      __return_value = LibPango.font_description_set_variant((to_unsafe as LibPango::FontDescription*), variant)
      __return_value
    end

    def weight=(weight)
      __return_value = LibPango.font_description_set_weight((to_unsafe as LibPango::FontDescription*), weight)
      __return_value
    end

    def to_filename
      __return_value = LibPango.font_description_to_filename((to_unsafe as LibPango::FontDescription*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def to_string
      __return_value = LibPango.font_description_to_string((to_unsafe as LibPango::FontDescription*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def unset_fields(to_unset)
      __return_value = LibPango.font_description_unset_fields((to_unsafe as LibPango::FontDescription*), to_unset)
      __return_value
    end

    def self.from_string(str)
      __return_value = LibPango.font_description_from_string(str)
      Pango::FontDescription.new(__return_value)
    end

  end
end

