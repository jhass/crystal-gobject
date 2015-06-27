module Pango
  def self.attr_type_get_name(type)
    __return_value = LibPango.attr_type_get_name(type)
    raise "Expected string but got null" unless __return_value; String.new(__return_value)
  end

  def self.attr_type_register(name)
    __return_value = LibPango.attr_type_register(name)
    __return_value
  end

  def self.bidi_type_for_unichar(ch)
    __return_value = LibPango.bidi_type_for_unichar(UInt8.cast(ch))
    __return_value
  end

  def self.break(text, length, analysis, attrs, attrs_len)
    __return_value = LibPango.break(text, Int32.cast(length), (analysis.to_unsafe as LibPango::Analysis*), attrs, Int32.cast(attrs_len))
    __return_value
  end

  def self.config_key_get(key)
    __return_value = LibPango.config_key_get(key)
    raise "Expected string but got null" unless __return_value; String.new(__return_value)
  end

  def self.config_key_get_system(key)
    __return_value = LibPango.config_key_get_system(key)
    raise "Expected string but got null" unless __return_value; String.new(__return_value)
  end

  def self.default_break(text, length, analysis, attrs, attrs_len)
    __return_value = LibPango.default_break(text, Int32.cast(length), (analysis.to_unsafe as LibPango::Analysis*), (attrs.to_unsafe as LibPango::LogAttr*), Int32.cast(attrs_len))
    __return_value
  end

  def self.extents_to_pixels(inclusive, nearest)
    __return_value = LibPango.extents_to_pixels(inclusive && (inclusive.to_unsafe as LibPango::Rectangle*), nearest && (nearest.to_unsafe as LibPango::Rectangle*))
    __return_value
  end

  def self.find_base_dir(text, length)
    __return_value = LibPango.find_base_dir(text, Int32.cast(length))
    __return_value
  end

  def self.find_paragraph_boundary(text, length, paragraph_delimiter_index, next_paragraph_start)
    __return_value = LibPango.find_paragraph_boundary(text, Int32.cast(length), Int32.cast(paragraph_delimiter_index), Int32.cast(next_paragraph_start))
    __return_value
  end

  def self.font_description_from_string(str)
    __return_value = LibPango.font_description_from_string(str)
    Pango::FontDescription.new(__return_value)
  end

  def self.lib_subdirectory
    __return_value = LibPango.get_lib_subdirectory
    raise "Expected string but got null" unless __return_value; String.new(__return_value)
  end

  def self.log_attrs(text, length, level, language, log_attrs, attrs_len)
    __return_value = LibPango.get_log_attrs(text, Int32.cast(length), Int32.cast(level), (language.to_unsafe as LibPango::Language*), log_attrs, Int32.cast(attrs_len))
    __return_value
  end

  def self.mirror_char(ch, mirrored_ch)
    __return_value = LibPango.get_mirror_char(UInt8.cast(ch), mirrored_ch)
    __return_value
  end

  def self.sysconf_subdirectory
    __return_value = LibPango.get_sysconf_subdirectory
    raise "Expected string but got null" unless __return_value; String.new(__return_value)
  end

  def self.gravity_get_for_matrix(matrix)
    __return_value = LibPango.gravity_get_for_matrix((matrix.to_unsafe as LibPango::Matrix*))
    __return_value
  end

  def self.gravity_get_for_script(script, base_gravity, hint)
    __return_value = LibPango.gravity_get_for_script(script, base_gravity, hint)
    __return_value
  end

  def self.gravity_get_for_script_and_width(script, wide, base_gravity, hint)
    __return_value = LibPango.gravity_get_for_script_and_width(script, Bool.cast(wide), base_gravity, hint)
    __return_value
  end

  def self.gravity_to_rotation(gravity)
    __return_value = LibPango.gravity_to_rotation(gravity)
    __return_value
  end

  def self.is_zero_width(ch)
    __return_value = LibPango.is_zero_width(UInt8.cast(ch))
    __return_value
  end

  def self.itemize(context, text, start_index, length, attrs, cached_iter)
    __return_value = LibPango.itemize((context.to_unsafe as LibPango::Context*), text, Int32.cast(start_index), Int32.cast(length), (attrs.to_unsafe as LibPango::AttrList*), cached_iter && (cached_iter.to_unsafe as LibPango::AttrIterator*))
    __return_value
  end

  def self.itemize_with_base_dir(context, base_dir, text, start_index, length, attrs, cached_iter)
    __return_value = LibPango.itemize_with_base_dir((context.to_unsafe as LibPango::Context*), base_dir, text, Int32.cast(start_index), Int32.cast(length), (attrs.to_unsafe as LibPango::AttrList*), cached_iter && (cached_iter.to_unsafe as LibPango::AttrIterator*))
    __return_value
  end

  def self.language_from_string(language)
    __return_value = LibPango.language_from_string(language && language)
    Pango::Language.new(__return_value)
  end

  def self.language_get_default
    __return_value = LibPango.language_get_default
    Pango::Language.new(__return_value)
  end

  def self.log2vis_get_embedding_levels(text, length, pbase_dir)
    __return_value = LibPango.log2vis_get_embedding_levels(text, Int32.cast(length), (pbase_dir.to_unsafe as LibPango::Direction*))
    __return_value
  end

  def self.lookup_aliases(fontname, families, n_families)
    __return_value = LibPango.lookup_aliases(fontname, families, Int32.cast(n_families))
    __return_value
  end

  def self.markup_parser_finish(context, attr_list, text, accel_char)
    __error = Pointer(LibGLib::Error).null
    __return_value = LibPango.markup_parser_finish((context.to_unsafe as LibGLib::MarkupParseContext*), (attr_list.to_unsafe as LibPango::AttrList*), text, UInt8.cast(accel_char), pointerof(__error))
    GLib::Error.assert __error
    __return_value
  end

  def self.markup_parser_new(accel_marker)
    __return_value = LibPango.markup_parser_new(UInt8.cast(accel_marker))
    GLib::MarkupParseContext.new(__return_value)
  end

  def self.module_register(_module)
    __return_value = LibPango.module_register((_module.to_unsafe as LibPango::IncludedModule*))
    __return_value
  end

  def self.parse_enum(type, str, value, warn, possible_values)
    __return_value = LibPango.parse_enum(UInt64.cast(type), str && str, Int32.cast(value), Bool.cast(warn), possible_values)
    __return_value
  end

  def self.parse_markup(markup_text, length, accel_marker, attr_list, text, accel_char)
    __error = Pointer(LibGLib::Error).null
    __return_value = LibPango.parse_markup(markup_text, Int32.cast(length), UInt8.cast(accel_marker), (attr_list.to_unsafe as LibPango::AttrList*), text, UInt8.cast(accel_char), pointerof(__error))
    GLib::Error.assert __error
    __return_value
  end

  def self.parse_stretch(str, stretch, warn)
    __return_value = LibPango.parse_stretch(str, stretch, Bool.cast(warn))
    __return_value
  end

  def self.parse_style(str, style, warn)
    __return_value = LibPango.parse_style(str, style, Bool.cast(warn))
    __return_value
  end

  def self.parse_variant(str, variant, warn)
    __return_value = LibPango.parse_variant(str, variant, Bool.cast(warn))
    __return_value
  end

  def self.parse_weight(str, weight, warn)
    __return_value = LibPango.parse_weight(str, weight, Bool.cast(warn))
    __return_value
  end

  def self.quantize_line_geometry(thickness, position)
    __return_value = LibPango.quantize_line_geometry(Int32.cast(thickness), Int32.cast(position))
    __return_value
  end

  def self.read_line(stream, str)
    __return_value = LibPango.read_line(stream, str)
    __return_value
  end

  def self.reorder_items(logical_items)
    __return_value = LibPango.reorder_items(logical_items)
    __return_value
  end

  def self.scan_int(pos, _out)
    __return_value = LibPango.scan_int(pos, Int32.cast(_out))
    __return_value
  end

  def self.scan_string(pos, _out)
    __return_value = LibPango.scan_string(pos, _out)
    __return_value
  end

  def self.scan_word(pos, _out)
    __return_value = LibPango.scan_word(pos, _out)
    __return_value
  end

  def self.script_for_unichar(ch)
    __return_value = LibPango.script_for_unichar(UInt8.cast(ch))
    __return_value
  end

  def self.script_get_sample_language(script)
    __return_value = LibPango.script_get_sample_language(script)
    Pango::Language.new(__return_value)
  end

  def self.shape(text, length, analysis, glyphs)
    __return_value = LibPango.shape(text, Int32.cast(length), (analysis.to_unsafe as LibPango::Analysis*), (glyphs.to_unsafe as LibPango::GlyphString*))
    __return_value
  end

  def self.shape_full(item_text, item_length, paragraph_text, paragraph_length, analysis, glyphs)
    __return_value = LibPango.shape_full(item_text, Int32.cast(item_length), paragraph_text && paragraph_text, Int32.cast(paragraph_length), (analysis.to_unsafe as LibPango::Analysis*), (glyphs.to_unsafe as LibPango::GlyphString*))
    __return_value
  end

  def self.skip_space(pos)
    __return_value = LibPango.skip_space(pos)
    __return_value
  end

  def self.split_file_list(str)
    __return_value = LibPango.split_file_list(str)
    PointerIterator.new(__return_value) {|__item_55| raise "Expected string but got null" unless __item_55; String.new(__item_55) }
  end

  def self.trim_string(str)
    __return_value = LibPango.trim_string(str)
    raise "Expected string but got null" unless __return_value; String.new(__return_value)
  end

  def self.unichar_direction(ch)
    __return_value = LibPango.unichar_direction(UInt8.cast(ch))
    __return_value
  end

  def self.units_from_double(d)
    __return_value = LibPango.units_from_double(Float64.cast(d))
    __return_value
  end

  def self.units_to_double(i)
    __return_value = LibPango.units_to_double(Int32.cast(i))
    __return_value
  end

  def self.version
    __return_value = LibPango.version
    __return_value
  end

  def self.version_check(required_major, required_minor, required_micro)
    __return_value = LibPango.version_check(Int32.cast(required_major), Int32.cast(required_minor), Int32.cast(required_micro))
    raise "Expected string but got null" unless __return_value; String.new(__return_value)
  end

  def self.version_string
    __return_value = LibPango.version_string
    raise "Expected string but got null" unless __return_value; String.new(__return_value)
  end
end

