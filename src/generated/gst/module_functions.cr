module Gst
  def self.buffer_get_max_memory
    __return_value = LibGst.buffer_get_max_memory
    __return_value
  end

  def self.caps_features_from_string(features)
    __return_value = LibGst.caps_features_from_string(features)
    Gst::CapsFeatures.new(__return_value) if __return_value
  end

  def self.caps_from_string(string)
    __return_value = LibGst.caps_from_string(string)
    Gst::Caps.new(__return_value)
  end

  def self.core_error_quark
    __return_value = LibGst.core_error_quark
    __return_value
  end

  def self.debug_add_log_function(func : LibGst::LogFunction, user_data, notify : LibGLib::DestroyNotify)
    __return_value = LibGst.debug_add_log_function(func, user_data && user_data, notify)
    __return_value
  end

  def self.debug_bin_to_dot_data(bin, details)
    __return_value = LibGst.debug_bin_to_dot_data((bin.to_unsafe as LibGst::Bin*), details)
    (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
  end

  def self.debug_bin_to_dot_file(bin, details, file_name)
    __return_value = LibGst.debug_bin_to_dot_file((bin.to_unsafe as LibGst::Bin*), details, file_name)
    __return_value
  end

  def self.debug_bin_to_dot_file_with_ts(bin, details, file_name)
    __return_value = LibGst.debug_bin_to_dot_file_with_ts((bin.to_unsafe as LibGst::Bin*), details, file_name)
    __return_value
  end

  def self.debug_construct_term_color(colorinfo)
    __return_value = LibGst.debug_construct_term_color(UInt32.new(colorinfo))
    (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
  end

  def self.debug_construct_win_color(colorinfo)
    __return_value = LibGst.debug_construct_win_color(UInt32.new(colorinfo))
    __return_value
  end

  def self.debug_get_all_categories
    __return_value = LibGst.debug_get_all_categories
    __return_value
  end

  def self.debug_get_color_mode
    __return_value = LibGst.debug_get_color_mode
    __return_value
  end

  def self.debug_get_default_threshold
    __return_value = LibGst.debug_get_default_threshold
    __return_value
  end

  def self.debug_is_active
    __return_value = LibGst.debug_is_active
    __return_value
  end

  def self.debug_is_colored
    __return_value = LibGst.debug_is_colored
    __return_value
  end

  def self.debug_level_get_name(level)
    __return_value = LibGst.debug_level_get_name(level)
    (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
  end

  def self.debug_log_default(category, level, file, function, line, object, message, user_data)
    __return_value = LibGst.debug_log_default((category.to_unsafe as LibGst::DebugCategory*), level, file, function, Int32.new(line), object && (object.to_unsafe as LibGObject::Object*), (message.to_unsafe as LibGst::DebugMessage*), user_data && user_data)
    __return_value
  end

  def self.debug_print_stack_trace
    __return_value = LibGst.debug_print_stack_trace
    __return_value
  end

  def self.debug_remove_log_function(func : LibGst::LogFunction)
    __return_value = LibGst.debug_remove_log_function(func)
    __return_value
  end

  def self.debug_remove_log_function_by_data(data)
    __return_value = LibGst.debug_remove_log_function_by_data(data && data)
    __return_value
  end

  def self.debug_set_active(active)
    __return_value = LibGst.debug_set_active(active)
    __return_value
  end

  def self.debug_set_color_mode(mode)
    __return_value = LibGst.debug_set_color_mode(mode)
    __return_value
  end

  def self.debug_set_color_mode_from_string(mode)
    __return_value = LibGst.debug_set_color_mode_from_string(mode)
    __return_value
  end

  def self.debug_set_colored(colored)
    __return_value = LibGst.debug_set_colored(colored)
    __return_value
  end

  def self.debug_set_default_threshold(level)
    __return_value = LibGst.debug_set_default_threshold(level)
    __return_value
  end

  def self.debug_set_threshold_for_name(name, level)
    __return_value = LibGst.debug_set_threshold_for_name(name, level)
    __return_value
  end

  def self.debug_set_threshold_from_string(list, reset)
    __return_value = LibGst.debug_set_threshold_from_string(list, reset)
    __return_value
  end

  def self.debug_unset_threshold_for_name(name)
    __return_value = LibGst.debug_unset_threshold_for_name(name)
    __return_value
  end

  def self.deinit
    __return_value = LibGst.deinit
    __return_value
  end

  def self.error_get_message(domain, code)
    __return_value = LibGst.error_get_message(UInt32.new(domain), Int32.new(code))
    (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
  end

  def self.event_type_get_flags(type)
    __return_value = LibGst.event_type_get_flags(type)
    __return_value
  end

  def self.event_type_get_name(type)
    __return_value = LibGst.event_type_get_name(type)
    (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
  end

  def self.event_type_to_quark(type)
    __return_value = LibGst.event_type_to_quark(type)
    __return_value
  end

  def self.filename_to_uri(filename)
    __error = Pointer(LibGLib::Error).null
    __return_value = LibGst.filename_to_uri(filename, pointerof(__error))
    GLib::Error.assert __error
    (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
  end

  def self.flow_get_name(ret)
    __return_value = LibGst.flow_get_name(ret)
    (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
  end

  def self.flow_to_quark(ret)
    __return_value = LibGst.flow_to_quark(ret)
    __return_value
  end

  def self.format_get_by_nick(nick)
    __return_value = LibGst.format_get_by_nick(nick)
    __return_value
  end

  def self.format_get_details(format)
    __return_value = LibGst.format_get_details(format)
    Gst::FormatDefinition.new(__return_value) if __return_value
  end

  def self.format_get_name(format)
    __return_value = LibGst.format_get_name(format)
    (raise "Expected string but got null" unless __return_value; ::String.new(__return_value)) if __return_value
  end

  def self.format_iterate_definitions
    __return_value = LibGst.format_iterate_definitions
    Gst::Iterator.new(__return_value)
  end

  def self.format_register(nick, description)
    __return_value = LibGst.format_register(nick, description)
    __return_value
  end

  def self.format_to_quark(format)
    __return_value = LibGst.format_to_quark(format)
    __return_value
  end

  def self.formats_contains(formats, format)
    __return_value = LibGst.formats_contains(formats, format)
    __return_value
  end

  def self.init(argc, argv)
    __return_value = LibGst.init(argc && Int32.new(argc), argv && argv)
    __return_value
  end

  def self.init_check(argc, argv)
    __error = Pointer(LibGLib::Error).null
    __return_value = LibGst.init_check(argc && Int32.new(argc), argv && argv, pointerof(__error))
    GLib::Error.assert __error
    __return_value
  end

  def self.caps_features?(obj)
    __return_value = LibGst.is_caps_features(obj && obj)
    __return_value
  end

  def self.initialized?
    __return_value = LibGst.is_initialized
    __return_value
  end

  def self.library_error_quark
    __return_value = LibGst.library_error_quark
    __return_value
  end

  def self.message_type_get_name(type)
    __return_value = LibGst.message_type_get_name(type)
    (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
  end

  def self.message_type_to_quark(type)
    __return_value = LibGst.message_type_to_quark(type)
    __return_value
  end

  def self.meta_api_type_get_tags(api)
    __return_value = LibGst.meta_api_type_get_tags(UInt64.new(api))
    PointerIterator.new(__return_value) {|__item_31| (raise "Expected string but got null" unless __item_31; ::String.new(__item_31)) }
  end

  def self.meta_api_type_has_tag(api, tag)
    __return_value = LibGst.meta_api_type_has_tag(UInt64.new(api), UInt32.new(tag))
    __return_value
  end

  def self.meta_api_type_register(api, tags)
    __return_value = LibGst.meta_api_type_register(api, tags)
    __return_value
  end

  def self.meta_get_info(impl)
    __return_value = LibGst.meta_get_info(impl)
    Gst::MetaInfo.new(__return_value) if __return_value
  end

  def self.meta_register(api, impl, size, init_func : LibGst::MetaInitFunction, free_func : LibGst::MetaFreeFunction, transform_func : LibGst::MetaTransformFunction)
    __return_value = LibGst.meta_register(UInt64.new(api), impl, UInt64.new(size), init_func, free_func, transform_func)
    Gst::MetaInfo.new(__return_value)
  end

  def self.mini_object_replace(olddata, newdata)
    __return_value = LibGst.mini_object_replace(olddata && (olddata.to_unsafe as LibGst::MiniObject*), newdata && (newdata.to_unsafe as LibGst::MiniObject*))
    __return_value
  end

  def self.mini_object_take(olddata, newdata)
    __return_value = LibGst.mini_object_take((olddata.to_unsafe as LibGst::MiniObject*), (newdata.to_unsafe as LibGst::MiniObject*))
    __return_value
  end

  def self.pad_mode_get_name(mode)
    __return_value = LibGst.pad_mode_get_name(mode)
    (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
  end

  def self.param_spec_fraction(name, nick, blurb, min_num, min_denom, max_num, max_denom, default_num, default_denom, flags)
    __return_value = LibGst.param_spec_fraction(name, nick, blurb, Int32.new(min_num), Int32.new(min_denom), Int32.new(max_num), Int32.new(max_denom), Int32.new(default_num), Int32.new(default_denom), flags)
    GObject::ParamSpec.new(__return_value)
  end

  def self.parent_buffer_meta_api_get_type
    __return_value = LibGst.parent_buffer_meta_api_get_type
    __return_value
  end

  def self.parent_buffer_meta_get_info
    __return_value = LibGst.parent_buffer_meta_get_info
    Gst::MetaInfo.new(__return_value)
  end

  def self.parse_bin_from_description(bin_description, ghost_unlinked_pads)
    __error = Pointer(LibGLib::Error).null
    __return_value = LibGst.parse_bin_from_description(bin_description, ghost_unlinked_pads, pointerof(__error))
    GLib::Error.assert __error
    Gst::Bin.new(__return_value) if __return_value
  end

  def self.parse_bin_from_description_full(bin_description, ghost_unlinked_pads, context, flags)
    __error = Pointer(LibGLib::Error).null
    __return_value = LibGst.parse_bin_from_description_full(bin_description, ghost_unlinked_pads, context && (context.to_unsafe as LibGst::ParseContext*), flags, pointerof(__error))
    GLib::Error.assert __error
    Gst::Element.new(__return_value)
  end

  def self.parse_error_quark
    __return_value = LibGst.parse_error_quark
    __return_value
  end

  def self.parse_launch(pipeline_description)
    __error = Pointer(LibGLib::Error).null
    __return_value = LibGst.parse_launch(pipeline_description, pointerof(__error))
    GLib::Error.assert __error
    Gst::Element.new(__return_value)
  end

  def self.parse_launch_full(pipeline_description, context, flags)
    __error = Pointer(LibGLib::Error).null
    __return_value = LibGst.parse_launch_full(pipeline_description, context && (context.to_unsafe as LibGst::ParseContext*), flags, pointerof(__error))
    GLib::Error.assert __error
    Gst::Element.new(__return_value)
  end

  def self.parse_launchv(argv)
    __error = Pointer(LibGLib::Error).null
    __return_value = LibGst.parse_launchv(argv, pointerof(__error))
    GLib::Error.assert __error
    Gst::Element.new(__return_value)
  end

  def self.parse_launchv_full(argv, context, flags)
    __error = Pointer(LibGLib::Error).null
    __return_value = LibGst.parse_launchv_full(argv, context && (context.to_unsafe as LibGst::ParseContext*), flags, pointerof(__error))
    GLib::Error.assert __error
    Gst::Element.new(__return_value)
  end

  def self.plugin_error_quark
    __return_value = LibGst.plugin_error_quark
    __return_value
  end

  def self.preset_get_app_dir
    __return_value = LibGst.preset_get_app_dir
    (raise "Expected string but got null" unless __return_value; ::String.new(__return_value)) if __return_value
  end

  def self.preset_set_app_dir(app_dir)
    __return_value = LibGst.preset_set_app_dir(app_dir)
    __return_value
  end

  def self.protection_meta_api_get_type
    __return_value = LibGst.protection_meta_api_get_type
    __return_value
  end

  def self.protection_meta_get_info
    __return_value = LibGst.protection_meta_get_info
    Gst::MetaInfo.new(__return_value)
  end

  def self.protection_select_system(system_identifiers)
    __return_value = LibGst.protection_select_system(system_identifiers)
    (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
  end

  def self.query_type_get_flags(type)
    __return_value = LibGst.query_type_get_flags(type)
    __return_value
  end

  def self.query_type_get_name(type)
    __return_value = LibGst.query_type_get_name(type)
    (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
  end

  def self.query_type_to_quark(type)
    __return_value = LibGst.query_type_to_quark(type)
    __return_value
  end

  def self.resource_error_quark
    __return_value = LibGst.resource_error_quark
    __return_value
  end

  def self.segtrap_is_enabled
    __return_value = LibGst.segtrap_is_enabled
    __return_value
  end

  def self.segtrap_set_enabled(enabled)
    __return_value = LibGst.segtrap_set_enabled(enabled)
    __return_value
  end

  def self.static_caps_get_type
    __return_value = LibGst.static_caps_get_type
    __return_value
  end

  def self.static_pad_template_get_type
    __return_value = LibGst.static_pad_template_get_type
    __return_value
  end

  def self.stream_error_quark
    __return_value = LibGst.stream_error_quark
    __return_value
  end

  def self.structure_from_string(string, end)
    __return_value = LibGst.structure_from_string(string, end)
    Gst::Structure.new(__return_value) if __return_value
  end

  def self.tag_exists(tag)
    __return_value = LibGst.tag_exists(tag)
    __return_value
  end

  def self.tag_get_description(tag)
    __return_value = LibGst.tag_get_description(tag)
    (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
  end

  def self.tag_get_flag(tag)
    __return_value = LibGst.tag_get_flag(tag)
    __return_value
  end

  def self.tag_get_nick(tag)
    __return_value = LibGst.tag_get_nick(tag)
    (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
  end

  def self.tag_get_type(tag)
    __return_value = LibGst.tag_get_type(tag)
    __return_value
  end

  def self.tag_is_fixed(tag)
    __return_value = LibGst.tag_is_fixed(tag)
    __return_value
  end

  def self.tag_list_copy_value(dest, list, tag)
    __return_value = LibGst.tag_list_copy_value(dest, (list.to_unsafe as LibGst::TagList*), tag)
    __return_value
  end

  def self.tag_merge_strings_with_comma(dest, src)
    __return_value = LibGst.tag_merge_strings_with_comma(dest, (src.to_unsafe as LibGObject::Value*))
    __return_value
  end

  def self.tag_merge_use_first(dest, src)
    __return_value = LibGst.tag_merge_use_first(dest, (src.to_unsafe as LibGObject::Value*))
    __return_value
  end

  def self.tag_register(name, flag, type, nick, blurb, func : LibGst::TagMergeFunc?)
    __return_value = LibGst.tag_register(name, flag, UInt64.new(type), nick, blurb, func && func)
    __return_value
  end

  def self.tag_register_static(name, flag, type, nick, blurb, func : LibGst::TagMergeFunc?)
    __return_value = LibGst.tag_register_static(name, flag, UInt64.new(type), nick, blurb, func && func)
    __return_value
  end

  def self.toc_entry_type_get_nick(type)
    __return_value = LibGst.toc_entry_type_get_nick(type)
    (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
  end

  def self.type_find_get_type
    __return_value = LibGst.type_find_get_type
    __return_value
  end

  def self.type_find_register(plugin, name, rank, func : LibGst::TypeFindFunction, extensions, possible_caps, data, data_notify : LibGLib::DestroyNotify)
    __return_value = LibGst.type_find_register(plugin && (plugin.to_unsafe as LibGst::Plugin*), name, UInt32.new(rank), func, extensions && extensions, (possible_caps.to_unsafe as LibGst::Caps*), data && data, data_notify)
    __return_value
  end

  def self.update_registry
    __return_value = LibGst.update_registry
    __return_value
  end

  def self.uri_construct(protocol, location)
    __return_value = LibGst.uri_construct(protocol, location)
    (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
  end

  def self.uri_error_quark
    __return_value = LibGst.uri_error_quark
    __return_value
  end

  def self.uri_from_string(uri)
    __return_value = LibGst.uri_from_string(uri)
    Gst::Uri.new(__return_value) if __return_value
  end

  def self.uri_get_location(uri)
    __return_value = LibGst.uri_get_location(uri)
    (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
  end

  def self.uri_get_protocol(uri)
    __return_value = LibGst.uri_get_protocol(uri)
    (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
  end

  def self.uri_has_protocol(uri, protocol)
    __return_value = LibGst.uri_has_protocol(uri, protocol)
    __return_value
  end

  def self.uri_is_valid(uri)
    __return_value = LibGst.uri_is_valid(uri)
    __return_value
  end

  def self.uri_join_strings(base_uri, ref_uri)
    __return_value = LibGst.uri_join_strings(base_uri, ref_uri)
    (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
  end

  def self.uri_protocol_is_supported(type, protocol)
    __return_value = LibGst.uri_protocol_is_supported(type, protocol)
    __return_value
  end

  def self.uri_protocol_is_valid(protocol)
    __return_value = LibGst.uri_protocol_is_valid(protocol)
    __return_value
  end

  def self.util_array_binary_search(array, num_elements, element_size, search_func : LibGLib::CompareDataFunc, mode, search_data, user_data)
    __return_value = LibGst.util_array_binary_search(array && array, UInt32.new(num_elements), UInt64.new(element_size), search_func, mode, search_data && search_data, user_data && user_data)
    __return_value if __return_value
  end

  def self.util_double_to_fraction(src, dest_n, dest_d)
    __return_value = LibGst.util_double_to_fraction(Float64.new(src), Int32.new(dest_n), Int32.new(dest_d))
    __return_value
  end

  def self.util_dump_mem(mem, size)
    __return_value = LibGst.util_dump_mem(mem, UInt32.new(size))
    __return_value
  end

  def self.util_fraction_add(a_n, a_d, b_n, b_d, res_n, res_d)
    __return_value = LibGst.util_fraction_add(Int32.new(a_n), Int32.new(a_d), Int32.new(b_n), Int32.new(b_d), Int32.new(res_n), Int32.new(res_d))
    __return_value
  end

  def self.util_fraction_compare(a_n, a_d, b_n, b_d)
    __return_value = LibGst.util_fraction_compare(Int32.new(a_n), Int32.new(a_d), Int32.new(b_n), Int32.new(b_d))
    __return_value
  end

  def self.util_fraction_multiply(a_n, a_d, b_n, b_d, res_n, res_d)
    __return_value = LibGst.util_fraction_multiply(Int32.new(a_n), Int32.new(a_d), Int32.new(b_n), Int32.new(b_d), Int32.new(res_n), Int32.new(res_d))
    __return_value
  end

  def self.util_fraction_to_double(src_n, src_d, dest)
    __return_value = LibGst.util_fraction_to_double(Int32.new(src_n), Int32.new(src_d), Float64.new(dest))
    __return_value
  end

  def self.util_gdouble_to_guint64(value)
    __return_value = LibGst.util_gdouble_to_guint64(Float64.new(value))
    __return_value
  end

  def self.util_get_timestamp
    __return_value = LibGst.util_get_timestamp
    __return_value
  end

  def self.util_greatest_common_divisor(a, b)
    __return_value = LibGst.util_greatest_common_divisor(Int32.new(a), Int32.new(b))
    __return_value
  end

  def self.util_greatest_common_divisor_int64(a, b)
    __return_value = LibGst.util_greatest_common_divisor_int64(Int64.new(a), Int64.new(b))
    __return_value
  end

  def self.util_group_id_next
    __return_value = LibGst.util_group_id_next
    __return_value
  end

  def self.util_guint64_to_gdouble(value)
    __return_value = LibGst.util_guint64_to_gdouble(UInt64.new(value))
    __return_value
  end

  def self.util_seqnum_compare(s1, s2)
    __return_value = LibGst.util_seqnum_compare(UInt32.new(s1), UInt32.new(s2))
    __return_value
  end

  def self.util_seqnum_next
    __return_value = LibGst.util_seqnum_next
    __return_value
  end

  def self.util_set_object_arg(object, name, value)
    __return_value = LibGst.util_set_object_arg((object.to_unsafe as LibGObject::Object*), name, value)
    __return_value
  end

  def self.util_set_value_from_string(value, value_str)
    __return_value = LibGst.util_set_value_from_string(value, value_str)
    __return_value
  end

  def self.util_uint64_scale(val, num, denom)
    __return_value = LibGst.util_uint64_scale(UInt64.new(val), UInt64.new(num), UInt64.new(denom))
    __return_value
  end

  def self.util_uint64_scale_ceil(val, num, denom)
    __return_value = LibGst.util_uint64_scale_ceil(UInt64.new(val), UInt64.new(num), UInt64.new(denom))
    __return_value
  end

  def self.util_uint64_scale_int(val, num, denom)
    __return_value = LibGst.util_uint64_scale_int(UInt64.new(val), Int32.new(num), Int32.new(denom))
    __return_value
  end

  def self.util_uint64_scale_int_ceil(val, num, denom)
    __return_value = LibGst.util_uint64_scale_int_ceil(UInt64.new(val), Int32.new(num), Int32.new(denom))
    __return_value
  end

  def self.util_uint64_scale_int_round(val, num, denom)
    __return_value = LibGst.util_uint64_scale_int_round(UInt64.new(val), Int32.new(num), Int32.new(denom))
    __return_value
  end

  def self.util_uint64_scale_round(val, num, denom)
    __return_value = LibGst.util_uint64_scale_round(UInt64.new(val), UInt64.new(num), UInt64.new(denom))
    __return_value
  end

  def self.value_can_compare(value1, value2)
    __return_value = LibGst.value_can_compare((value1.to_unsafe as LibGObject::Value*), (value2.to_unsafe as LibGObject::Value*))
    __return_value
  end

  def self.value_can_intersect(value1, value2)
    __return_value = LibGst.value_can_intersect((value1.to_unsafe as LibGObject::Value*), (value2.to_unsafe as LibGObject::Value*))
    __return_value
  end

  def self.value_can_subtract(minuend, subtrahend)
    __return_value = LibGst.value_can_subtract((minuend.to_unsafe as LibGObject::Value*), (subtrahend.to_unsafe as LibGObject::Value*))
    __return_value
  end

  def self.value_can_union(value1, value2)
    __return_value = LibGst.value_can_union((value1.to_unsafe as LibGObject::Value*), (value2.to_unsafe as LibGObject::Value*))
    __return_value
  end

  def self.value_compare(value1, value2)
    __return_value = LibGst.value_compare((value1.to_unsafe as LibGObject::Value*), (value2.to_unsafe as LibGObject::Value*))
    __return_value
  end

  def self.value_deserialize(dest, src)
    __return_value = LibGst.value_deserialize(dest, src)
    __return_value
  end

  def self.value_fixate(dest, src)
    __return_value = LibGst.value_fixate((dest.to_unsafe as LibGObject::Value*), (src.to_unsafe as LibGObject::Value*))
    __return_value
  end

  def self.value_fraction_multiply(product, factor1, factor2)
    __return_value = LibGst.value_fraction_multiply((product.to_unsafe as LibGObject::Value*), (factor1.to_unsafe as LibGObject::Value*), (factor2.to_unsafe as LibGObject::Value*))
    __return_value
  end

  def self.value_fraction_subtract(dest, minuend, subtrahend)
    __return_value = LibGst.value_fraction_subtract((dest.to_unsafe as LibGObject::Value*), (minuend.to_unsafe as LibGObject::Value*), (subtrahend.to_unsafe as LibGObject::Value*))
    __return_value
  end

  def self.value_get_bitmask(value)
    __return_value = LibGst.value_get_bitmask((value.to_unsafe as LibGObject::Value*))
    __return_value
  end

  def self.value_get_caps(value)
    __return_value = LibGst.value_get_caps((value.to_unsafe as LibGObject::Value*))
    Gst::Caps.new(__return_value)
  end

  def self.value_get_caps_features(value)
    __return_value = LibGst.value_get_caps_features((value.to_unsafe as LibGObject::Value*))
    Gst::CapsFeatures.new(__return_value)
  end

  def self.value_get_double_range_max(value)
    __return_value = LibGst.value_get_double_range_max((value.to_unsafe as LibGObject::Value*))
    __return_value
  end

  def self.value_get_double_range_min(value)
    __return_value = LibGst.value_get_double_range_min((value.to_unsafe as LibGObject::Value*))
    __return_value
  end

  def self.value_get_flagset_flags(value)
    __return_value = LibGst.value_get_flagset_flags((value.to_unsafe as LibGObject::Value*))
    __return_value
  end

  def self.value_get_flagset_mask(value)
    __return_value = LibGst.value_get_flagset_mask((value.to_unsafe as LibGObject::Value*))
    __return_value
  end

  def self.value_get_fraction_denominator(value)
    __return_value = LibGst.value_get_fraction_denominator((value.to_unsafe as LibGObject::Value*))
    __return_value
  end

  def self.value_get_fraction_numerator(value)
    __return_value = LibGst.value_get_fraction_numerator((value.to_unsafe as LibGObject::Value*))
    __return_value
  end

  def self.value_get_fraction_range_max(value)
    __return_value = LibGst.value_get_fraction_range_max((value.to_unsafe as LibGObject::Value*))
    GObject::Value.new(__return_value)
  end

  def self.value_get_fraction_range_min(value)
    __return_value = LibGst.value_get_fraction_range_min((value.to_unsafe as LibGObject::Value*))
    GObject::Value.new(__return_value)
  end

  def self.value_get_int64_range_max(value)
    __return_value = LibGst.value_get_int64_range_max((value.to_unsafe as LibGObject::Value*))
    __return_value
  end

  def self.value_get_int64_range_min(value)
    __return_value = LibGst.value_get_int64_range_min((value.to_unsafe as LibGObject::Value*))
    __return_value
  end

  def self.value_get_int64_range_step(value)
    __return_value = LibGst.value_get_int64_range_step((value.to_unsafe as LibGObject::Value*))
    __return_value
  end

  def self.value_get_int_range_max(value)
    __return_value = LibGst.value_get_int_range_max((value.to_unsafe as LibGObject::Value*))
    __return_value
  end

  def self.value_get_int_range_min(value)
    __return_value = LibGst.value_get_int_range_min((value.to_unsafe as LibGObject::Value*))
    __return_value
  end

  def self.value_get_int_range_step(value)
    __return_value = LibGst.value_get_int_range_step((value.to_unsafe as LibGObject::Value*))
    __return_value
  end

  def self.value_get_structure(value)
    __return_value = LibGst.value_get_structure((value.to_unsafe as LibGObject::Value*))
    Gst::Structure.new(__return_value)
  end

  def self.value_init_and_copy(dest, src)
    __return_value = LibGst.value_init_and_copy(dest, (src.to_unsafe as LibGObject::Value*))
    __return_value
  end

  def self.value_intersect(dest, value1, value2)
    __return_value = LibGst.value_intersect(dest, (value1.to_unsafe as LibGObject::Value*), (value2.to_unsafe as LibGObject::Value*))
    __return_value
  end

  def self.value_is_fixed(value)
    __return_value = LibGst.value_is_fixed((value.to_unsafe as LibGObject::Value*))
    __return_value
  end

  def self.value_is_subset(value1, value2)
    __return_value = LibGst.value_is_subset((value1.to_unsafe as LibGObject::Value*), (value2.to_unsafe as LibGObject::Value*))
    __return_value
  end

  def self.value_register(table)
    __return_value = LibGst.value_register((table.to_unsafe as LibGst::ValueTable*))
    __return_value
  end

  def self.value_serialize(value)
    __return_value = LibGst.value_serialize((value.to_unsafe as LibGObject::Value*))
    (raise "Expected string but got null" unless __return_value; ::String.new(__return_value)) if __return_value
  end

  def self.value_set_bitmask(value, bitmask)
    __return_value = LibGst.value_set_bitmask((value.to_unsafe as LibGObject::Value*), UInt64.new(bitmask))
    __return_value
  end

  def self.value_set_caps(value, caps)
    __return_value = LibGst.value_set_caps((value.to_unsafe as LibGObject::Value*), (caps.to_unsafe as LibGst::Caps*))
    __return_value
  end

  def self.value_set_caps_features(value, features)
    __return_value = LibGst.value_set_caps_features((value.to_unsafe as LibGObject::Value*), (features.to_unsafe as LibGst::CapsFeatures*))
    __return_value
  end

  def self.value_set_double_range(value, start, end)
    __return_value = LibGst.value_set_double_range((value.to_unsafe as LibGObject::Value*), Float64.new(start), Float64.new(end))
    __return_value
  end

  def self.value_set_flagset(value, flags, mask)
    __return_value = LibGst.value_set_flagset((value.to_unsafe as LibGObject::Value*), UInt32.new(flags), UInt32.new(mask))
    __return_value
  end

  def self.value_set_fraction(value, numerator, denominator)
    __return_value = LibGst.value_set_fraction((value.to_unsafe as LibGObject::Value*), Int32.new(numerator), Int32.new(denominator))
    __return_value
  end

  def self.value_set_fraction_range(value, start, end)
    __return_value = LibGst.value_set_fraction_range((value.to_unsafe as LibGObject::Value*), (start.to_unsafe as LibGObject::Value*), (end.to_unsafe as LibGObject::Value*))
    __return_value
  end

  def self.value_set_fraction_range_full(value, numerator_start, denominator_start, numerator_end, denominator_end)
    __return_value = LibGst.value_set_fraction_range_full((value.to_unsafe as LibGObject::Value*), Int32.new(numerator_start), Int32.new(denominator_start), Int32.new(numerator_end), Int32.new(denominator_end))
    __return_value
  end

  def self.value_set_int64_range(value, start, end)
    __return_value = LibGst.value_set_int64_range((value.to_unsafe as LibGObject::Value*), Int64.new(start), Int64.new(end))
    __return_value
  end

  def self.value_set_int64_range_step(value, start, end, step)
    __return_value = LibGst.value_set_int64_range_step((value.to_unsafe as LibGObject::Value*), Int64.new(start), Int64.new(end), Int64.new(step))
    __return_value
  end

  def self.value_set_int_range(value, start, end)
    __return_value = LibGst.value_set_int_range((value.to_unsafe as LibGObject::Value*), Int32.new(start), Int32.new(end))
    __return_value
  end

  def self.value_set_int_range_step(value, start, end, step)
    __return_value = LibGst.value_set_int_range_step((value.to_unsafe as LibGObject::Value*), Int32.new(start), Int32.new(end), Int32.new(step))
    __return_value
  end

  def self.value_set_structure(value, structure)
    __return_value = LibGst.value_set_structure((value.to_unsafe as LibGObject::Value*), (structure.to_unsafe as LibGst::Structure*))
    __return_value
  end

  def self.value_subtract(dest, minuend, subtrahend)
    __return_value = LibGst.value_subtract(dest, (minuend.to_unsafe as LibGObject::Value*), (subtrahend.to_unsafe as LibGObject::Value*))
    __return_value
  end

  def self.value_union(dest, value1, value2)
    __return_value = LibGst.value_union(dest, (value1.to_unsafe as LibGObject::Value*), (value2.to_unsafe as LibGObject::Value*))
    __return_value
  end

  def self.version(major, minor, micro, nano)
    __return_value = LibGst.version(UInt32.new(major), UInt32.new(minor), UInt32.new(micro), UInt32.new(nano))
    __return_value
  end

  def self.version_string
    __return_value = LibGst.version_string
    (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
  end
end

