module Pango
  class FontDescription
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibPango::FontDescription*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibPango::FontDescription*)
    end

    def self.new : self
      __return_value = LibPango.font_description_new
      cast Pango::FontDescription.new(__return_value)
    end

    def better_match(old_match, new_match)
      __return_value = LibPango.font_description_better_match(@pointer.as(LibPango::FontDescription*), old_match ? old_match.to_unsafe.as(LibPango::FontDescription*) : nil, new_match.to_unsafe.as(LibPango::FontDescription*))
      __return_value
    end

    def copy
      __return_value = LibPango.font_description_copy(@pointer.as(LibPango::FontDescription*))
      Pango::FontDescription.new(__return_value) if __return_value
    end

    def copy_static
      __return_value = LibPango.font_description_copy_static(@pointer.as(LibPango::FontDescription*))
      Pango::FontDescription.new(__return_value) if __return_value
    end

    def equal(desc2)
      __return_value = LibPango.font_description_equal(@pointer.as(LibPango::FontDescription*), desc2.to_unsafe.as(LibPango::FontDescription*))
      __return_value
    end

    def free
      LibPango.font_description_free(@pointer.as(LibPango::FontDescription*))
      nil
    end

    def family
      __return_value = LibPango.font_description_get_family(@pointer.as(LibPango::FontDescription*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value)) if __return_value
    end

    def gravity
      __return_value = LibPango.font_description_get_gravity(@pointer.as(LibPango::FontDescription*))
      __return_value
    end

    def set_fields
      __return_value = LibPango.font_description_get_set_fields(@pointer.as(LibPango::FontDescription*))
      __return_value
    end

    def size
      __return_value = LibPango.font_description_get_size(@pointer.as(LibPango::FontDescription*))
      __return_value
    end

    def size_is_absolute
      __return_value = LibPango.font_description_get_size_is_absolute(@pointer.as(LibPango::FontDescription*))
      __return_value
    end

    def stretch
      __return_value = LibPango.font_description_get_stretch(@pointer.as(LibPango::FontDescription*))
      __return_value
    end

    def style
      __return_value = LibPango.font_description_get_style(@pointer.as(LibPango::FontDescription*))
      __return_value
    end

    def variant
      __return_value = LibPango.font_description_get_variant(@pointer.as(LibPango::FontDescription*))
      __return_value
    end

    def weight
      __return_value = LibPango.font_description_get_weight(@pointer.as(LibPango::FontDescription*))
      __return_value
    end

    def hash
      __return_value = LibPango.font_description_hash(@pointer.as(LibPango::FontDescription*))
      __return_value
    end

    def merge(desc_to_merge, replace_existing)
      LibPango.font_description_merge(@pointer.as(LibPango::FontDescription*), desc_to_merge ? desc_to_merge.to_unsafe.as(LibPango::FontDescription*) : nil, replace_existing)
      nil
    end

    def merge_static(desc_to_merge, replace_existing)
      LibPango.font_description_merge_static(@pointer.as(LibPango::FontDescription*), desc_to_merge.to_unsafe.as(LibPango::FontDescription*), replace_existing)
      nil
    end

    def absolute_size=(size)
      LibPango.font_description_set_absolute_size(@pointer.as(LibPango::FontDescription*), Float64.new(size))
      nil
    end

    def family=(family)
      LibPango.font_description_set_family(@pointer.as(LibPango::FontDescription*), family.to_unsafe)
      nil
    end

    def family_static=(family)
      LibPango.font_description_set_family_static(@pointer.as(LibPango::FontDescription*), family.to_unsafe)
      nil
    end

    def gravity=(gravity : Pango::Gravity)
      LibPango.font_description_set_gravity(@pointer.as(LibPango::FontDescription*), gravity)
      nil
    end

    def size=(size)
      LibPango.font_description_set_size(@pointer.as(LibPango::FontDescription*), Int32.new(size))
      nil
    end

    def stretch=(stretch : Pango::Stretch)
      LibPango.font_description_set_stretch(@pointer.as(LibPango::FontDescription*), stretch)
      nil
    end

    def style=(style : Pango::Style)
      LibPango.font_description_set_style(@pointer.as(LibPango::FontDescription*), style)
      nil
    end

    def variant=(variant : Pango::Variant)
      LibPango.font_description_set_variant(@pointer.as(LibPango::FontDescription*), variant)
      nil
    end

    def weight=(weight : Pango::Weight)
      LibPango.font_description_set_weight(@pointer.as(LibPango::FontDescription*), weight)
      nil
    end

    def to_filename
      __return_value = LibPango.font_description_to_filename(@pointer.as(LibPango::FontDescription*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def to_string
      __return_value = LibPango.font_description_to_string(@pointer.as(LibPango::FontDescription*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def unset_fields(to_unset : Pango::FontMask)
      LibPango.font_description_unset_fields(@pointer.as(LibPango::FontDescription*), to_unset)
      nil
    end

    def self.from_string(str)
      __return_value = LibPango.font_description_from_string(str.to_unsafe)
      Pango::FontDescription.new(__return_value)
    end

  end
end

