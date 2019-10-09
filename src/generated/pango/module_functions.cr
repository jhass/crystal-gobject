module Pango
  ANALYSIS_FLAG_CENTERED_BASELINE = LibPango::ANALYSIS_FLAG_CENTERED_BASELINE

  ANALYSIS_FLAG_IS_ELLIPSIS = LibPango::ANALYSIS_FLAG_IS_ELLIPSIS

  ANALYSIS_FLAG_NEED_HYPHEN = LibPango::ANALYSIS_FLAG_NEED_HYPHEN

  ATTR_INDEX_FROM_TEXT_BEGINNING = LibPango::ATTR_INDEX_FROM_TEXT_BEGINNING

  ENGINE_TYPE_LANG = LibPango::ENGINE_TYPE_LANG

  ENGINE_TYPE_SHAPE = LibPango::ENGINE_TYPE_SHAPE

  GLYPH_EMPTY = LibPango::GLYPH_EMPTY

  GLYPH_INVALID_INPUT = LibPango::GLYPH_INVALID_INPUT

  GLYPH_UNKNOWN_FLAG = LibPango::GLYPH_UNKNOWN_FLAG

  RENDER_TYPE_NONE = LibPango::RENDER_TYPE_NONE

  SCALE = LibPango::SCALE

  UNKNOWN_GLYPH_HEIGHT = LibPango::UNKNOWN_GLYPH_HEIGHT

  UNKNOWN_GLYPH_WIDTH = LibPango::UNKNOWN_GLYPH_WIDTH

  VERSION_MIN_REQUIRED = LibPango::VERSION_MIN_REQUIRED

  def self.attr_allow_breaks_new(allow_breaks)
    __return_value = LibPango.attr_allow_breaks_new(allow_breaks)
    Pango::Attribute.new(__return_value)
  end

  def self.attr_background_alpha_new(alpha)
    __return_value = LibPango.attr_background_alpha_new(UInt16.new(alpha))
    Pango::Attribute.new(__return_value)
  end

  def self.attr_background_new(red, green, blue)
    __return_value = LibPango.attr_background_new(UInt16.new(red), UInt16.new(green), UInt16.new(blue))
    Pango::Attribute.new(__return_value)
  end

  def self.attr_fallback_new(enable_fallback)
    __return_value = LibPango.attr_fallback_new(enable_fallback)
    Pango::Attribute.new(__return_value)
  end

  def self.attr_family_new(family)
    __return_value = LibPango.attr_family_new(family.to_unsafe)
    Pango::Attribute.new(__return_value)
  end

  def self.attr_font_desc_new(desc)
    __return_value = LibPango.attr_font_desc_new(desc.to_unsafe.as(LibPango::FontDescription*))
    Pango::Attribute.new(__return_value)
  end

  def self.attr_font_features_new(features)
    __return_value = LibPango.attr_font_features_new(features.to_unsafe)
    Pango::Attribute.new(__return_value)
  end

  def self.attr_foreground_alpha_new(alpha)
    __return_value = LibPango.attr_foreground_alpha_new(UInt16.new(alpha))
    Pango::Attribute.new(__return_value)
  end

  def self.attr_foreground_new(red, green, blue)
    __return_value = LibPango.attr_foreground_new(UInt16.new(red), UInt16.new(green), UInt16.new(blue))
    Pango::Attribute.new(__return_value)
  end

  def self.attr_gravity_hint_new(hint : Pango::GravityHint)
    __return_value = LibPango.attr_gravity_hint_new(hint)
    Pango::Attribute.new(__return_value)
  end

  def self.attr_gravity_new(gravity : Pango::Gravity)
    __return_value = LibPango.attr_gravity_new(gravity)
    Pango::Attribute.new(__return_value)
  end

  def self.attr_insert_hyphens_new(insert_hyphens)
    __return_value = LibPango.attr_insert_hyphens_new(insert_hyphens)
    Pango::Attribute.new(__return_value)
  end

  def self.attr_language_new(language)
    __return_value = LibPango.attr_language_new(language.to_unsafe.as(LibPango::Language*))
    Pango::Attribute.new(__return_value)
  end

  def self.attr_letter_spacing_new(letter_spacing)
    __return_value = LibPango.attr_letter_spacing_new(Int32.new(letter_spacing))
    Pango::Attribute.new(__return_value)
  end

  def self.attr_rise_new(rise)
    __return_value = LibPango.attr_rise_new(Int32.new(rise))
    Pango::Attribute.new(__return_value)
  end

  def self.attr_scale_new(scale_factor)
    __return_value = LibPango.attr_scale_new(Float64.new(scale_factor))
    Pango::Attribute.new(__return_value)
  end

  def self.attr_shape_new(ink_rect, logical_rect)
    __return_value = LibPango.attr_shape_new(ink_rect.to_unsafe.as(LibPango::Rectangle*), logical_rect.to_unsafe.as(LibPango::Rectangle*))
    Pango::Attribute.new(__return_value)
  end

  def self.attr_shape_new_with_data(ink_rect, logical_rect, data, copy_func, destroy_func)
    __return_value = LibPango.attr_shape_new_with_data(ink_rect.to_unsafe.as(LibPango::Rectangle*), logical_rect.to_unsafe.as(LibPango::Rectangle*), data ? data : nil, copy_func ? copy_func : nil, destroy_func ? destroy_func : nil)
    Pango::Attribute.new(__return_value)
  end

  def self.attr_show_new(flags : Pango::ShowFlags)
    __return_value = LibPango.attr_show_new(flags)
    Pango::Attribute.new(__return_value)
  end

  def self.attr_size_new(size)
    __return_value = LibPango.attr_size_new(Int32.new(size))
    Pango::Attribute.new(__return_value)
  end

  def self.attr_size_new_absolute(size)
    __return_value = LibPango.attr_size_new_absolute(Int32.new(size))
    Pango::Attribute.new(__return_value)
  end

  def self.attr_stretch_new(stretch : Pango::Stretch)
    __return_value = LibPango.attr_stretch_new(stretch)
    Pango::Attribute.new(__return_value)
  end

  def self.attr_strikethrough_color_new(red, green, blue)
    __return_value = LibPango.attr_strikethrough_color_new(UInt16.new(red), UInt16.new(green), UInt16.new(blue))
    Pango::Attribute.new(__return_value)
  end

  def self.attr_strikethrough_new(strikethrough)
    __return_value = LibPango.attr_strikethrough_new(strikethrough)
    Pango::Attribute.new(__return_value)
  end

  def self.attr_style_new(style : Pango::Style)
    __return_value = LibPango.attr_style_new(style)
    Pango::Attribute.new(__return_value)
  end

  def self.attr_type_get_name(type : Pango::AttrType)
    __return_value = LibPango.attr_type_get_name(type)
    (raise "Expected string but got null" unless __return_value; ::String.new(__return_value)) if __return_value
  end

  def self.attr_type_register(name)
    __return_value = LibPango.attr_type_register(name.to_unsafe)
    __return_value
  end

  def self.attr_underline_color_new(red, green, blue)
    __return_value = LibPango.attr_underline_color_new(UInt16.new(red), UInt16.new(green), UInt16.new(blue))
    Pango::Attribute.new(__return_value)
  end

  def self.attr_underline_new(underline : Pango::Underline)
    __return_value = LibPango.attr_underline_new(underline)
    Pango::Attribute.new(__return_value)
  end

  def self.attr_variant_new(variant : Pango::Variant)
    __return_value = LibPango.attr_variant_new(variant)
    Pango::Attribute.new(__return_value)
  end

  def self.attr_weight_new(weight : Pango::Weight)
    __return_value = LibPango.attr_weight_new(weight)
    Pango::Attribute.new(__return_value)
  end

  def self.bidi_type_for_unichar(ch)
    __return_value = LibPango.bidi_type_for_unichar(UInt8.new(ch))
    __return_value
  end

  def self.break(text, length, analysis, attrs, attrs_len)
    LibPango.break(text.to_unsafe, Int32.new(length), analysis.to_unsafe.as(LibPango::Analysis*), attrs, Int32.new(attrs_len))
    nil
  end

  def self.default_break(text, length, analysis, attrs, attrs_len)
    LibPango.default_break(text.to_unsafe, Int32.new(length), analysis ? analysis.to_unsafe.as(LibPango::Analysis*) : nil, attrs.to_unsafe.as(LibPango::LogAttr*), Int32.new(attrs_len))
    nil
  end

  def self.extents_to_pixels(inclusive, nearest)
    LibPango.extents_to_pixels(inclusive ? inclusive.to_unsafe.as(LibPango::Rectangle*) : nil, nearest ? nearest.to_unsafe.as(LibPango::Rectangle*) : nil)
    nil
  end

  def self.find_base_dir(text, length)
    __return_value = LibPango.find_base_dir(text.to_unsafe, Int32.new(length))
    __return_value
  end

  def self.find_paragraph_boundary(text, length, paragraph_delimiter_index, next_paragraph_start)
    LibPango.find_paragraph_boundary(text.to_unsafe, Int32.new(length), paragraph_delimiter_index, next_paragraph_start)
    nil
  end

  def self.font_description_from_string(str)
    __return_value = LibPango.font_description_from_string(str.to_unsafe)
    Pango::FontDescription.new(__return_value)
  end

  def self.log_attrs(text, length, level, language, log_attrs, attrs_len)
    LibPango.get_log_attrs(text.to_unsafe, Int32.new(length), Int32.new(level), language.to_unsafe.as(LibPango::Language*), log_attrs, Int32.new(attrs_len))
    nil
  end

  def self.mirror_char(ch, mirrored_ch)
    __return_value = LibPango.get_mirror_char(UInt8.new(ch), mirrored_ch)
    __return_value
  end

  def self.gravity_get_for_matrix(matrix)
    __return_value = LibPango.gravity_get_for_matrix(matrix ? matrix.to_unsafe.as(LibPango::Matrix*) : nil)
    __return_value
  end

  def self.gravity_get_for_script(script : Pango::Script, base_gravity : Pango::Gravity, hint : Pango::GravityHint)
    __return_value = LibPango.gravity_get_for_script(script, base_gravity, hint)
    __return_value
  end

  def self.gravity_get_for_script_and_width(script : Pango::Script, wide, base_gravity : Pango::Gravity, hint : Pango::GravityHint)
    __return_value = LibPango.gravity_get_for_script_and_width(script, wide, base_gravity, hint)
    __return_value
  end

  def self.gravity_to_rotation(gravity : Pango::Gravity)
    __return_value = LibPango.gravity_to_rotation(gravity)
    __return_value
  end

  def self.zero_width?(ch)
    __return_value = LibPango.is_zero_width(UInt8.new(ch))
    __return_value
  end

  def self.itemize(context, text, start_index, length, attrs, cached_iter)
    __return_value = LibPango.itemize(context.to_unsafe.as(LibPango::Context*), text.to_unsafe, Int32.new(start_index), Int32.new(length), attrs.to_unsafe.as(LibPango::AttrList*), cached_iter ? cached_iter.to_unsafe.as(LibPango::AttrIterator*) : nil)
    GLib::ListIterator(Pango::Item, LibPango::Item*).new(GLib::SList.new(__return_value.as(LibGLib::List*)))
  end

  def self.itemize_with_base_dir(context, base_dir : Pango::Direction, text, start_index, length, attrs, cached_iter)
    __return_value = LibPango.itemize_with_base_dir(context.to_unsafe.as(LibPango::Context*), base_dir, text.to_unsafe, Int32.new(start_index), Int32.new(length), attrs.to_unsafe.as(LibPango::AttrList*), cached_iter ? cached_iter.to_unsafe.as(LibPango::AttrIterator*) : nil)
    GLib::ListIterator(Pango::Item, LibPango::Item*).new(GLib::SList.new(__return_value.as(LibGLib::List*)))
  end

  def self.language_from_string(language)
    __return_value = LibPango.language_from_string(language ? language.to_unsafe : nil)
    Pango::Language.new(__return_value) if __return_value
  end

  def self.language_get_default
    __return_value = LibPango.language_get_default
    Pango::Language.new(__return_value)
  end

  def self.log2vis_get_embedding_levels(text, length, pbase_dir : Pango::Direction)
    __return_value = LibPango.log2vis_get_embedding_levels(text.to_unsafe, Int32.new(length), pbase_dir.to_unsafe.as(LibPango::Direction*))
    __return_value
  end

  def self.markup_parser_finish(context, attr_list, text, accel_char)
    __error = Pointer(LibGLib::Error).null
    __return_value = LibPango.markup_parser_finish(context.to_unsafe.as(LibGLib::MarkupParseContext*), attr_list, text, accel_char, pointerof(__error))
    GLib::Error.assert __error
    __return_value
  end

  def self.markup_parser_new(accel_marker)
    __return_value = LibPango.markup_parser_new(UInt8.new(accel_marker))
    GLib::MarkupParseContext.new(__return_value)
  end

  def self.parse_enum(type, str, value, warn, possible_values)
    __return_value = LibPango.parse_enum(UInt64.new(type), str ? str.to_unsafe : nil, value, warn, possible_values)
    __return_value
  end

  def self.parse_markup(markup_text, length, accel_marker, attr_list, text, accel_char)
    __error = Pointer(LibGLib::Error).null
    __return_value = LibPango.parse_markup(markup_text.to_unsafe, Int32.new(length), UInt8.new(accel_marker), attr_list, text, accel_char, pointerof(__error))
    GLib::Error.assert __error
    __return_value
  end

  def self.parse_stretch(str, stretch : Pango::Stretch, warn)
    __return_value = LibPango.parse_stretch(str.to_unsafe, stretch, warn)
    __return_value
  end

  def self.parse_style(str, style : Pango::Style, warn)
    __return_value = LibPango.parse_style(str.to_unsafe, style, warn)
    __return_value
  end

  def self.parse_variant(str, variant : Pango::Variant, warn)
    __return_value = LibPango.parse_variant(str.to_unsafe, variant, warn)
    __return_value
  end

  def self.parse_weight(str, weight : Pango::Weight, warn)
    __return_value = LibPango.parse_weight(str.to_unsafe, weight, warn)
    __return_value
  end

  def self.quantize_line_geometry(thickness, position)
    LibPango.quantize_line_geometry(thickness, position)
    nil
  end

  def self.read_line(stream, str)
    __return_value = LibPango.read_line(stream ? stream : nil, str.to_unsafe.as(LibGLib::String*))
    __return_value
  end

  def self.reorder_items(logical_items)
    __return_value = LibPango.reorder_items(logical_items)
    GLib::ListIterator(Pango::Item, LibPango::Item*).new(GLib::SList.new(__return_value.as(LibGLib::List*)))
  end

  def self.scan_int(pos, _out)
    __return_value = LibPango.scan_int(pos, _out)
    __return_value
  end

  def self.scan_string(pos, _out)
    __return_value = LibPango.scan_string(pos, _out.to_unsafe.as(LibGLib::String*))
    __return_value
  end

  def self.scan_word(pos, _out)
    __return_value = LibPango.scan_word(pos, _out.to_unsafe.as(LibGLib::String*))
    __return_value
  end

  def self.script_for_unichar(ch)
    __return_value = LibPango.script_for_unichar(UInt8.new(ch))
    __return_value
  end

  def self.script_get_sample_language(script : Pango::Script)
    __return_value = LibPango.script_get_sample_language(script)
    Pango::Language.new(__return_value) if __return_value
  end

  def self.shape(text, length, analysis, glyphs)
    LibPango.shape(text.to_unsafe, Int32.new(length), analysis.to_unsafe.as(LibPango::Analysis*), glyphs.to_unsafe.as(LibPango::GlyphString*))
    nil
  end

  def self.shape_full(item_text, item_length, paragraph_text, paragraph_length, analysis, glyphs)
    LibPango.shape_full(item_text.to_unsafe, Int32.new(item_length), paragraph_text ? paragraph_text.to_unsafe : nil, Int32.new(paragraph_length), analysis.to_unsafe.as(LibPango::Analysis*), glyphs.to_unsafe.as(LibPango::GlyphString*))
    nil
  end

  def self.shape_with_flags(item_text, item_length, paragraph_text, paragraph_length, analysis, glyphs, flags : Pango::ShapeFlags)
    LibPango.shape_with_flags(item_text.to_unsafe, Int32.new(item_length), paragraph_text ? paragraph_text.to_unsafe : nil, Int32.new(paragraph_length), analysis.to_unsafe.as(LibPango::Analysis*), glyphs.to_unsafe.as(LibPango::GlyphString*), flags)
    nil
  end

  def self.skip_space(pos)
    __return_value = LibPango.skip_space(pos)
    __return_value
  end

  def self.split_file_list(str)
    __return_value = LibPango.split_file_list(str.to_unsafe)
    PointerIterator.new(__return_value) {|__item| (raise "Expected string but got null" unless __item; ::String.new(__item)) }
  end

  def self.tailor_break(text, length, analysis, offset, log_attrs, log_attrs_len)
    LibPango.tailor_break(text.to_unsafe, Int32.new(length), analysis.to_unsafe.as(LibPango::Analysis*), Int32.new(offset), log_attrs, Int32.new(log_attrs_len))
    nil
  end

  def self.trim_string(str)
    __return_value = LibPango.trim_string(str.to_unsafe)
    (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
  end

  def self.unichar_direction(ch)
    __return_value = LibPango.unichar_direction(UInt8.new(ch))
    __return_value
  end

  def self.units_from_double(d)
    __return_value = LibPango.units_from_double(Float64.new(d))
    __return_value
  end

  def self.units_to_double(i)
    __return_value = LibPango.units_to_double(Int32.new(i))
    __return_value
  end

  def self.version
    __return_value = LibPango.version
    __return_value
  end

  def self.version_check(required_major, required_minor, required_micro)
    __return_value = LibPango.version_check(Int32.new(required_major), Int32.new(required_minor), Int32.new(required_micro))
    (raise "Expected string but got null" unless __return_value; ::String.new(__return_value)) if __return_value
  end

  def self.version_string
    __return_value = LibPango.version_string
    (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
  end
end

