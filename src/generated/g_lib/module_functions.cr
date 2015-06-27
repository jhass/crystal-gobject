module GLib
  def self.access(filename, mode)
    __return_value = LibGLib.access(filename, Int32.cast(mode))
    __return_value
  end

  def self.ascii_digit_value(c)
    __return_value = LibGLib.ascii_digit_value(Int8.cast(c))
    __return_value
  end

  def self.ascii_dtostr(buffer, buf_len, d)
    __return_value = LibGLib.ascii_dtostr(buffer, Int32.cast(buf_len), Float64.cast(d))
    raise "Expected string but got null" unless __return_value; String.new(__return_value)
  end

  def self.ascii_formatd(buffer, buf_len, format, d)
    __return_value = LibGLib.ascii_formatd(buffer, Int32.cast(buf_len), format, Float64.cast(d))
    raise "Expected string but got null" unless __return_value; String.new(__return_value)
  end

  def self.ascii_strcasecmp(s1, s2)
    __return_value = LibGLib.ascii_strcasecmp(s1, s2)
    __return_value
  end

  def self.ascii_strdown(str, len)
    __return_value = LibGLib.ascii_strdown(str, Int64.cast(len))
    raise "Expected string but got null" unless __return_value; String.new(__return_value)
  end

  def self.ascii_strncasecmp(s1, s2, n)
    __return_value = LibGLib.ascii_strncasecmp(s1, s2, UInt64.cast(n))
    __return_value
  end

  def self.ascii_strtod(nptr, endptr)
    __return_value = LibGLib.ascii_strtod(nptr, endptr)
    __return_value
  end

  def self.ascii_strtoll(nptr, endptr, base)
    __return_value = LibGLib.ascii_strtoll(nptr, endptr, UInt32.cast(base))
    __return_value
  end

  def self.ascii_strtoull(nptr, endptr, base)
    __return_value = LibGLib.ascii_strtoull(nptr, endptr, UInt32.cast(base))
    __return_value
  end

  def self.ascii_strup(str, len)
    __return_value = LibGLib.ascii_strup(str, Int64.cast(len))
    raise "Expected string but got null" unless __return_value; String.new(__return_value)
  end

  def self.ascii_tolower(c)
    __return_value = LibGLib.ascii_tolower(Int8.cast(c))
    __return_value
  end

  def self.ascii_toupper(c)
    __return_value = LibGLib.ascii_toupper(Int8.cast(c))
    __return_value
  end

  def self.ascii_xdigit_value(c)
    __return_value = LibGLib.ascii_xdigit_value(Int8.cast(c))
    __return_value
  end

  def self.assert_warning(log_domain, file, line, pretty_function, expression)
    __return_value = LibGLib.assert_warning(log_domain, file, Int32.cast(line), pretty_function, expression)
    __return_value
  end

  def self.assertion_message(domain, file, line, func, message)
    __return_value = LibGLib.assertion_message(domain, file, Int32.cast(line), func, message)
    __return_value
  end

  def self.assertion_message_cmpstr(domain, file, line, func, expr, arg1, cmp, arg2)
    __return_value = LibGLib.assertion_message_cmpstr(domain, file, Int32.cast(line), func, expr, arg1, cmp, arg2)
    __return_value
  end

  def self.assertion_message_error(domain, file, line, func, expr, error, error_domain, error_code)
    __return_value = LibGLib.assertion_message_error(domain, file, Int32.cast(line), func, expr, error, UInt32.cast(error_domain), Int32.cast(error_code))
    __return_value
  end

  def self.assertion_message_expr(domain, file, line, func, expr)
    __return_value = LibGLib.assertion_message_expr(domain, file, Int32.cast(line), func, expr)
    __return_value
  end

  def self.atexit(func : LibGLib::VoidFunc)
    __return_value = LibGLib.atexit(func)
    __return_value
  end

  def self.atomic_int_add(atomic, val)
    __return_value = LibGLib.atomic_int_add(atomic, Int32.cast(val))
    __return_value
  end

  def self.atomic_int_and(atomic, val)
    __return_value = LibGLib.atomic_int_and(atomic, UInt32.cast(val))
    __return_value
  end

  def self.atomic_int_compare_and_exchange(atomic, oldval, newval)
    __return_value = LibGLib.atomic_int_compare_and_exchange(atomic, Int32.cast(oldval), Int32.cast(newval))
    __return_value
  end

  def self.atomic_int_dec_and_test(atomic)
    __return_value = LibGLib.atomic_int_dec_and_test(atomic)
    __return_value
  end

  def self.atomic_int_exchange_and_add(atomic, val)
    __return_value = LibGLib.atomic_int_exchange_and_add(atomic, Int32.cast(val))
    __return_value
  end

  def self.atomic_int_get(atomic)
    __return_value = LibGLib.atomic_int_get(atomic)
    __return_value
  end

  def self.atomic_int_inc(atomic)
    __return_value = LibGLib.atomic_int_inc(atomic)
    __return_value
  end

  def self.atomic_int_or(atomic, val)
    __return_value = LibGLib.atomic_int_or(atomic, UInt32.cast(val))
    __return_value
  end

  def self.atomic_int_set(atomic, newval)
    __return_value = LibGLib.atomic_int_set(atomic, Int32.cast(newval))
    __return_value
  end

  def self.atomic_int_xor(atomic, val)
    __return_value = LibGLib.atomic_int_xor(atomic, UInt32.cast(val))
    __return_value
  end

  def self.atomic_pointer_add(atomic, val)
    __return_value = LibGLib.atomic_pointer_add(atomic, Int64.cast(val))
    __return_value
  end

  def self.atomic_pointer_and(atomic, val)
    __return_value = LibGLib.atomic_pointer_and(atomic, UInt64.cast(val))
    __return_value
  end

  def self.atomic_pointer_compare_and_exchange(atomic, oldval, newval)
    __return_value = LibGLib.atomic_pointer_compare_and_exchange(atomic, oldval, newval)
    __return_value
  end

  def self.atomic_pointer_or(atomic, val)
    __return_value = LibGLib.atomic_pointer_or(atomic, UInt64.cast(val))
    __return_value
  end

  def self.atomic_pointer_set(atomic, newval)
    __return_value = LibGLib.atomic_pointer_set(atomic, newval)
    __return_value
  end

  def self.atomic_pointer_xor(atomic, val)
    __return_value = LibGLib.atomic_pointer_xor(atomic, UInt64.cast(val))
    __return_value
  end

  def self.base64_decode(text, out_len)
    __return_value = LibGLib.base64_decode(text, UInt64.cast(out_len))
    PointerIterator.new(__return_value) {|__item_95| __item_95 }
  end

  def self.base64_decode_inplace(text, out_len)
    __return_value = LibGLib.base64_decode_inplace(text, UInt64.cast(out_len))
    __return_value
  end

  def self.base64_decode_step(in, len, _out, state, save)
    __return_value = LibGLib.base64_decode_step(in, UInt64.cast(len), _out, Int32.cast(state), UInt32.cast(save))
    __return_value
  end

  def self.base64_encode(data, len)
    __return_value = LibGLib.base64_encode(data, UInt64.cast(len))
    raise "Expected string but got null" unless __return_value; String.new(__return_value)
  end

  def self.base64_encode_close(break_lines, _out, state, save)
    __return_value = LibGLib.base64_encode_close(Bool.cast(break_lines), _out, Int32.cast(state), Int32.cast(save))
    __return_value
  end

  def self.base64_encode_step(in, len, break_lines, _out, state, save)
    __return_value = LibGLib.base64_encode_step(in, UInt64.cast(len), Bool.cast(break_lines), _out, Int32.cast(state), Int32.cast(save))
    __return_value
  end

  def self.basename(file_name)
    __return_value = LibGLib.basename(file_name)
    raise "Expected string but got null" unless __return_value; String.new(__return_value)
  end

  def self.bit_lock(address, lock_bit)
    __return_value = LibGLib.bit_lock(address, Int32.cast(lock_bit))
    __return_value
  end

  def self.bit_nth_lsf(mask, nth_bit)
    __return_value = LibGLib.bit_nth_lsf(UInt64.cast(mask), Int32.cast(nth_bit))
    __return_value
  end

  def self.bit_nth_msf(mask, nth_bit)
    __return_value = LibGLib.bit_nth_msf(UInt64.cast(mask), Int32.cast(nth_bit))
    __return_value
  end

  def self.bit_storage(number)
    __return_value = LibGLib.bit_storage(UInt64.cast(number))
    __return_value
  end

  def self.bit_trylock(address, lock_bit)
    __return_value = LibGLib.bit_trylock(address, Int32.cast(lock_bit))
    __return_value
  end

  def self.bit_unlock(address, lock_bit)
    __return_value = LibGLib.bit_unlock(address, Int32.cast(lock_bit))
    __return_value
  end

  def self.bookmark_file_error_quark
    __return_value = LibGLib.bookmark_file_error_quark
    __return_value
  end

  def self.build_filenamev(args)
    __return_value = LibGLib.build_filenamev(args)
    raise "Expected string but got null" unless __return_value; String.new(__return_value)
  end

  def self.build_pathv(separator, args)
    __return_value = LibGLib.build_pathv(separator, args)
    raise "Expected string but got null" unless __return_value; String.new(__return_value)
  end

  def self.byte_array_free(array, free_segment)
    __return_value = LibGLib.byte_array_free(array, Bool.cast(free_segment))
    __return_value
  end

  def self.byte_array_free_to_bytes(array)
    __return_value = LibGLib.byte_array_free_to_bytes(array)
    GLib::Bytes.new(__return_value)
  end

  def self.byte_array_new
    __return_value = LibGLib.byte_array_new
    __return_value
  end

  def self.byte_array_new_take(data, len)
    __return_value = LibGLib.byte_array_new_take(data, UInt64.cast(len))
    __return_value
  end

  def self.byte_array_unref(array)
    __return_value = LibGLib.byte_array_unref(array)
    __return_value
  end

  def self.chdir(path)
    __return_value = LibGLib.chdir(path)
    __return_value
  end

  def self.check_version(required_major, required_minor, required_micro)
    __return_value = LibGLib.check_version(UInt32.cast(required_major), UInt32.cast(required_minor), UInt32.cast(required_micro))
    raise "Expected string but got null" unless __return_value; String.new(__return_value)
  end

  def self.checksum_type_get_length(checksum_type)
    __return_value = LibGLib.checksum_type_get_length(checksum_type)
    __return_value
  end

  def self.child_watch_add(priority, pid, function : LibGLib::ChildWatchFunc, data, notify : LibGLib::DestroyNotify?)
    __return_value = LibGLib.child_watch_add(Int32.cast(priority), Int32.cast(pid), function, data, notify && notify)
    __return_value
  end

  def self.child_watch_source_new(pid)
    __return_value = LibGLib.child_watch_source_new(Int32.cast(pid))
    GLib::Source.new(__return_value)
  end

  def self.clear_error
    __error = Pointer(LibGLib::Error).null
    __return_value = LibGLib.clear_error(pointerof(__error))
    GLib::Error.assert __error
    __return_value
  end

  def self.close(fd)
    __error = Pointer(LibGLib::Error).null
    __return_value = LibGLib.close(Int32.cast(fd), pointerof(__error))
    GLib::Error.assert __error
    __return_value
  end

  def self.compute_checksum_for_bytes(checksum_type, data)
    __return_value = LibGLib.compute_checksum_for_bytes(checksum_type, (data.to_unsafe as LibGLib::Bytes*))
    raise "Expected string but got null" unless __return_value; String.new(__return_value)
  end

  def self.compute_checksum_for_data(checksum_type, data, length)
    __return_value = LibGLib.compute_checksum_for_data(checksum_type, data, UInt64.cast(length))
    raise "Expected string but got null" unless __return_value; String.new(__return_value)
  end

  def self.compute_checksum_for_string(checksum_type, str, length)
    __return_value = LibGLib.compute_checksum_for_string(checksum_type, str, Int64.cast(length))
    raise "Expected string but got null" unless __return_value; String.new(__return_value)
  end

  def self.compute_hmac_for_data(digest_type, key, key_len, data, length)
    __return_value = LibGLib.compute_hmac_for_data(digest_type, key, UInt64.cast(key_len), data, UInt64.cast(length))
    raise "Expected string but got null" unless __return_value; String.new(__return_value)
  end

  def self.compute_hmac_for_string(digest_type, key, key_len, str, length)
    __return_value = LibGLib.compute_hmac_for_string(digest_type, key, UInt64.cast(key_len), str, Int64.cast(length))
    raise "Expected string but got null" unless __return_value; String.new(__return_value)
  end

  def self.convert(str, len, to_codeset, from_codeset, bytes_read, bytes_written)
    __error = Pointer(LibGLib::Error).null
    __return_value = LibGLib.convert(str, Int64.cast(len), to_codeset, from_codeset, UInt64.cast(bytes_read), UInt64.cast(bytes_written), pointerof(__error))
    GLib::Error.assert __error
    raise "Expected string but got null" unless __return_value; String.new(__return_value)
  end

  def self.convert_error_quark
    __return_value = LibGLib.convert_error_quark
    __return_value
  end

  def self.convert_with_fallback(str, len, to_codeset, from_codeset, fallback, bytes_read, bytes_written)
    __error = Pointer(LibGLib::Error).null
    __return_value = LibGLib.convert_with_fallback(str, Int64.cast(len), to_codeset, from_codeset, fallback, bytes_read, bytes_written, pointerof(__error))
    GLib::Error.assert __error
    raise "Expected string but got null" unless __return_value; String.new(__return_value)
  end

  def self.convert_with_iconv(str, len, converter, bytes_read, bytes_written)
    __error = Pointer(LibGLib::Error).null
    __return_value = LibGLib.convert_with_iconv(str, Int64.cast(len), (converter.to_unsafe as LibGLib::IConv*), bytes_read, bytes_written, pointerof(__error))
    GLib::Error.assert __error
    raise "Expected string but got null" unless __return_value; String.new(__return_value)
  end

  def self.datalist_clear(datalist)
    __return_value = LibGLib.datalist_clear((datalist.to_unsafe as LibGLib::Data*))
    __return_value
  end

  def self.datalist_get_flags(datalist)
    __return_value = LibGLib.datalist_get_flags((datalist.to_unsafe as LibGLib::Data*))
    __return_value
  end

  def self.datalist_id_replace_data(datalist, key_id, oldval, newval, destroy : LibGLib::DestroyNotify?, old_destroy : LibGLib::DestroyNotify*?)
    __return_value = LibGLib.datalist_id_replace_data((datalist.to_unsafe as LibGLib::Data*), UInt32.cast(key_id), oldval && oldval, newval && newval, destroy && destroy, old_destroy && (old_destroy.to_unsafe as LibGLib::DestroyNotify*))
    __return_value
  end

  def self.datalist_id_set_data_full(datalist, key_id, data, destroy_func : LibGLib::DestroyNotify)
    __return_value = LibGLib.datalist_id_set_data_full((datalist.to_unsafe as LibGLib::Data*), UInt32.cast(key_id), data && data, destroy_func)
    __return_value
  end

  def self.datalist_init(datalist)
    __return_value = LibGLib.datalist_init((datalist.to_unsafe as LibGLib::Data*))
    __return_value
  end

  def self.datalist_set_flags(datalist, flags)
    __return_value = LibGLib.datalist_set_flags((datalist.to_unsafe as LibGLib::Data*), UInt32.cast(flags))
    __return_value
  end

  def self.datalist_unset_flags(datalist, flags)
    __return_value = LibGLib.datalist_unset_flags((datalist.to_unsafe as LibGLib::Data*), UInt32.cast(flags))
    __return_value
  end

  def self.dataset_destroy(dataset_location)
    __return_value = LibGLib.dataset_destroy(dataset_location)
    __return_value
  end

  def self.dataset_id_set_data_full(dataset_location, key_id, data, destroy_func : LibGLib::DestroyNotify)
    __return_value = LibGLib.dataset_id_set_data_full(dataset_location, UInt32.cast(key_id), data, destroy_func)
    __return_value
  end

  def self.date_get_days_in_month(month, year)
    __return_value = LibGLib.date_get_days_in_month(month, UInt16.cast(year))
    __return_value
  end

  def self.date_get_monday_weeks_in_year(year)
    __return_value = LibGLib.date_get_monday_weeks_in_year(UInt16.cast(year))
    __return_value
  end

  def self.date_get_sunday_weeks_in_year(year)
    __return_value = LibGLib.date_get_sunday_weeks_in_year(UInt16.cast(year))
    __return_value
  end

  def self.date_is_leap_year(year)
    __return_value = LibGLib.date_is_leap_year(UInt16.cast(year))
    __return_value
  end

  def self.date_strftime(s, slen, format, date)
    __return_value = LibGLib.date_strftime(s, UInt64.cast(slen), format, (date.to_unsafe as LibGLib::Date*))
    __return_value
  end

  def self.date_time_compare(dt1, dt2)
    __return_value = LibGLib.date_time_compare(dt1, dt2)
    __return_value
  end

  def self.date_time_equal(dt1, dt2)
    __return_value = LibGLib.date_time_equal(dt1, dt2)
    __return_value
  end

  def self.date_time_hash(datetime)
    __return_value = LibGLib.date_time_hash(datetime)
    __return_value
  end

  def self.date_valid_day(day)
    __return_value = LibGLib.date_valid_day(UInt8.cast(day))
    __return_value
  end

  def self.date_valid_dmy(day, month, year)
    __return_value = LibGLib.date_valid_dmy(UInt8.cast(day), month, UInt16.cast(year))
    __return_value
  end

  def self.date_valid_julian(julian_date)
    __return_value = LibGLib.date_valid_julian(UInt32.cast(julian_date))
    __return_value
  end

  def self.date_valid_month(month)
    __return_value = LibGLib.date_valid_month(month)
    __return_value
  end

  def self.date_valid_weekday(weekday)
    __return_value = LibGLib.date_valid_weekday(weekday)
    __return_value
  end

  def self.date_valid_year(year)
    __return_value = LibGLib.date_valid_year(UInt16.cast(year))
    __return_value
  end

  def self.dcgettext(domain, msgid, category)
    __return_value = LibGLib.dcgettext(domain && domain, msgid, Int32.cast(category))
    raise "Expected string but got null" unless __return_value; String.new(__return_value)
  end

  def self.dgettext(domain, msgid)
    __return_value = LibGLib.dgettext(domain && domain, msgid)
    raise "Expected string but got null" unless __return_value; String.new(__return_value)
  end

  def self.dir_make_tmp(tmpl)
    __error = Pointer(LibGLib::Error).null
    __return_value = LibGLib.dir_make_tmp(tmpl && tmpl, pointerof(__error))
    GLib::Error.assert __error
    raise "Expected string but got null" unless __return_value; String.new(__return_value)
  end

  def self.direct_equal(v1, v2)
    __return_value = LibGLib.direct_equal(v1 && v1, v2 && v2)
    __return_value
  end

  def self.direct_hash(v)
    __return_value = LibGLib.direct_hash(v && v)
    __return_value
  end

  def self.dngettext(domain, msgid, msgid_plural, n)
    __return_value = LibGLib.dngettext(domain && domain, msgid, msgid_plural, UInt64.cast(n))
    raise "Expected string but got null" unless __return_value; String.new(__return_value)
  end

  def self.double_equal(v1, v2)
    __return_value = LibGLib.double_equal(v1, v2)
    __return_value
  end

  def self.double_hash(v)
    __return_value = LibGLib.double_hash(v)
    __return_value
  end

  def self.dpgettext(domain, msgctxtid, msgidoffset)
    __return_value = LibGLib.dpgettext(domain && domain, msgctxtid, UInt64.cast(msgidoffset))
    raise "Expected string but got null" unless __return_value; String.new(__return_value)
  end

  def self.dpgettext2(domain, context, msgid)
    __return_value = LibGLib.dpgettext2(domain && domain, context, msgid)
    raise "Expected string but got null" unless __return_value; String.new(__return_value)
  end

  def self.environ_getenv(envp, variable)
    __return_value = LibGLib.environ_getenv(envp && envp, variable)
    raise "Expected string but got null" unless __return_value; String.new(__return_value)
  end

  def self.environ_setenv(envp, variable, value, overwrite)
    __return_value = LibGLib.environ_setenv(envp && envp, variable, value, Bool.cast(overwrite))
    PointerIterator.new(__return_value) {|__item_44| raise "Expected string but got null" unless __item_44; String.new(__item_44) }
  end

  def self.environ_unsetenv(envp, variable)
    __return_value = LibGLib.environ_unsetenv(envp && envp, variable)
    PointerIterator.new(__return_value) {|__item_26| raise "Expected string but got null" unless __item_26; String.new(__item_26) }
  end

  def self.file_error_from_errno(err_no)
    __return_value = LibGLib.file_error_from_errno(Int32.cast(err_no))
    __return_value
  end

  def self.file_error_quark
    __return_value = LibGLib.file_error_quark
    __return_value
  end

  def self.file_get_contents(filename, contents, length)
    __error = Pointer(LibGLib::Error).null
    __return_value = LibGLib.file_get_contents(filename, contents, UInt64.cast(length), pointerof(__error))
    GLib::Error.assert __error
    __return_value
  end

  def self.file_open_tmp(tmpl, name_used)
    __error = Pointer(LibGLib::Error).null
    __return_value = LibGLib.file_open_tmp(tmpl && tmpl, name_used, pointerof(__error))
    GLib::Error.assert __error
    __return_value
  end

  def self.file_read_link(filename)
    __error = Pointer(LibGLib::Error).null
    __return_value = LibGLib.file_read_link(filename, pointerof(__error))
    GLib::Error.assert __error
    raise "Expected string but got null" unless __return_value; String.new(__return_value)
  end

  def self.file_set_contents(filename, contents, length)
    __error = Pointer(LibGLib::Error).null
    __return_value = LibGLib.file_set_contents(filename, contents, Int64.cast(length), pointerof(__error))
    GLib::Error.assert __error
    __return_value
  end

  def self.file_test(filename, test)
    __return_value = LibGLib.file_test(filename, test)
    __return_value
  end

  def self.filename_display_basename(filename)
    __return_value = LibGLib.filename_display_basename(filename)
    raise "Expected string but got null" unless __return_value; String.new(__return_value)
  end

  def self.filename_display_name(filename)
    __return_value = LibGLib.filename_display_name(filename)
    raise "Expected string but got null" unless __return_value; String.new(__return_value)
  end

  def self.filename_from_uri(uri, hostname)
    __error = Pointer(LibGLib::Error).null
    __return_value = LibGLib.filename_from_uri(uri, hostname, pointerof(__error))
    GLib::Error.assert __error
    raise "Expected string but got null" unless __return_value; String.new(__return_value)
  end

  def self.filename_from_utf8(utf8string, len, bytes_read, bytes_written)
    __error = Pointer(LibGLib::Error).null
    __return_value = LibGLib.filename_from_utf8(utf8string, Int64.cast(len), UInt64.cast(bytes_read), UInt64.cast(bytes_written), pointerof(__error))
    GLib::Error.assert __error
    PointerIterator.new(__return_value) {|__item_63| __item_63 }
  end

  def self.filename_to_uri(filename, hostname)
    __error = Pointer(LibGLib::Error).null
    __return_value = LibGLib.filename_to_uri(filename, hostname && hostname, pointerof(__error))
    GLib::Error.assert __error
    raise "Expected string but got null" unless __return_value; String.new(__return_value)
  end

  def self.filename_to_utf8(opsysstring, len, bytes_read, bytes_written)
    __error = Pointer(LibGLib::Error).null
    __return_value = LibGLib.filename_to_utf8(opsysstring, Int64.cast(len), bytes_read, bytes_written, pointerof(__error))
    GLib::Error.assert __error
    raise "Expected string but got null" unless __return_value; String.new(__return_value)
  end

  def self.find_program_in_path(program)
    __return_value = LibGLib.find_program_in_path(program)
    raise "Expected string but got null" unless __return_value; String.new(__return_value)
  end

  def self.format_size(size)
    __return_value = LibGLib.format_size(UInt64.cast(size))
    raise "Expected string but got null" unless __return_value; String.new(__return_value)
  end

  def self.format_size_for_display(size)
    __return_value = LibGLib.format_size_for_display(Int64.cast(size))
    raise "Expected string but got null" unless __return_value; String.new(__return_value)
  end

  def self.format_size_full(size, flags)
    __return_value = LibGLib.format_size_full(UInt64.cast(size), flags)
    raise "Expected string but got null" unless __return_value; String.new(__return_value)
  end

  def self.free(mem)
    __return_value = LibGLib.free(mem && mem)
    __return_value
  end

  def self.application_name
    __return_value = LibGLib.get_application_name
    raise "Expected string but got null" unless __return_value; String.new(__return_value)
  end

  def self.charset(charset)
    __return_value = LibGLib.get_charset(charset)
    __return_value
  end

  def self.codeset
    __return_value = LibGLib.get_codeset
    raise "Expected string but got null" unless __return_value; String.new(__return_value)
  end

  def self.current_dir
    __return_value = LibGLib.get_current_dir
    raise "Expected string but got null" unless __return_value; String.new(__return_value)
  end

  def self.current_time(result)
    __return_value = LibGLib.get_current_time((result.to_unsafe as LibGLib::TimeVal*))
    __return_value
  end

  def self.environ
    __return_value = LibGLib.get_environ
    PointerIterator.new(__return_value) {|__item_3| raise "Expected string but got null" unless __item_3; String.new(__item_3) }
  end

  def self.filename_charsets(charsets)
    __return_value = LibGLib.get_filename_charsets(charsets)
    __return_value
  end

  def self.home_dir
    __return_value = LibGLib.get_home_dir
    raise "Expected string but got null" unless __return_value; String.new(__return_value)
  end

  def self.host_name
    __return_value = LibGLib.get_host_name
    raise "Expected string but got null" unless __return_value; String.new(__return_value)
  end

  def self.language_names
    __return_value = LibGLib.get_language_names
    PointerIterator.new(__return_value) {|__item_58| raise "Expected string but got null" unless __item_58; String.new(__item_58) }
  end

  def self.locale_variants(locale)
    __return_value = LibGLib.get_locale_variants(locale)
    PointerIterator.new(__return_value) {|__item_56| raise "Expected string but got null" unless __item_56; String.new(__item_56) }
  end

  def self.monotonic_time
    __return_value = LibGLib.get_monotonic_time
    __return_value
  end

  def self.num_processors
    __return_value = LibGLib.get_num_processors
    __return_value
  end

  def self.prgname
    __return_value = LibGLib.get_prgname
    raise "Expected string but got null" unless __return_value; String.new(__return_value)
  end

  def self.real_name
    __return_value = LibGLib.get_real_name
    raise "Expected string but got null" unless __return_value; String.new(__return_value)
  end

  def self.real_time
    __return_value = LibGLib.get_real_time
    __return_value
  end

  def self.system_config_dirs
    __return_value = LibGLib.get_system_config_dirs
    PointerIterator.new(__return_value) {|__item_19| raise "Expected string but got null" unless __item_19; String.new(__item_19) }
  end

  def self.system_data_dirs
    __return_value = LibGLib.get_system_data_dirs
    PointerIterator.new(__return_value) {|__item_16| raise "Expected string but got null" unless __item_16; String.new(__item_16) }
  end

  def self.tmp_dir
    __return_value = LibGLib.get_tmp_dir
    raise "Expected string but got null" unless __return_value; String.new(__return_value)
  end

  def self.user_cache_dir
    __return_value = LibGLib.get_user_cache_dir
    raise "Expected string but got null" unless __return_value; String.new(__return_value)
  end

  def self.user_config_dir
    __return_value = LibGLib.get_user_config_dir
    raise "Expected string but got null" unless __return_value; String.new(__return_value)
  end

  def self.user_data_dir
    __return_value = LibGLib.get_user_data_dir
    raise "Expected string but got null" unless __return_value; String.new(__return_value)
  end

  def self.user_name
    __return_value = LibGLib.get_user_name
    raise "Expected string but got null" unless __return_value; String.new(__return_value)
  end

  def self.user_runtime_dir
    __return_value = LibGLib.get_user_runtime_dir
    raise "Expected string but got null" unless __return_value; String.new(__return_value)
  end

  def self.user_special_dir(directory)
    __return_value = LibGLib.get_user_special_dir(directory)
    raise "Expected string but got null" unless __return_value; String.new(__return_value)
  end

  def self.getenv(variable)
    __return_value = LibGLib.getenv(variable)
    raise "Expected string but got null" unless __return_value; String.new(__return_value)
  end

  def self.hash_table_add(hash_table, key)
    __return_value = LibGLib.hash_table_add(hash_table, key)
    __return_value
  end

  def self.hash_table_contains(hash_table, key)
    __return_value = LibGLib.hash_table_contains(hash_table, key)
    __return_value
  end

  def self.hash_table_destroy(hash_table)
    __return_value = LibGLib.hash_table_destroy(hash_table)
    __return_value
  end

  def self.hash_table_insert(hash_table, key, value)
    __return_value = LibGLib.hash_table_insert(hash_table, key, value)
    __return_value
  end

  def self.hash_table_lookup_extended(hash_table, lookup_key, orig_key, value)
    __return_value = LibGLib.hash_table_lookup_extended(hash_table, lookup_key, orig_key && orig_key, value && value)
    __return_value
  end

  def self.hash_table_remove(hash_table, key)
    __return_value = LibGLib.hash_table_remove(hash_table, key)
    __return_value
  end

  def self.hash_table_remove_all(hash_table)
    __return_value = LibGLib.hash_table_remove_all(hash_table)
    __return_value
  end

  def self.hash_table_replace(hash_table, key, value)
    __return_value = LibGLib.hash_table_replace(hash_table, key, value)
    __return_value
  end

  def self.hash_table_size(hash_table)
    __return_value = LibGLib.hash_table_size(hash_table)
    __return_value
  end

  def self.hash_table_steal(hash_table, key)
    __return_value = LibGLib.hash_table_steal(hash_table, key)
    __return_value
  end

  def self.hash_table_steal_all(hash_table)
    __return_value = LibGLib.hash_table_steal_all(hash_table)
    __return_value
  end

  def self.hash_table_unref(hash_table)
    __return_value = LibGLib.hash_table_unref(hash_table)
    __return_value
  end

  def self.hook_destroy(hook_list, hook_id)
    __return_value = LibGLib.hook_destroy((hook_list.to_unsafe as LibGLib::HookList*), UInt64.cast(hook_id))
    __return_value
  end

  def self.hook_destroy_link(hook_list, hook)
    __return_value = LibGLib.hook_destroy_link((hook_list.to_unsafe as LibGLib::HookList*), (hook.to_unsafe as LibGLib::Hook*))
    __return_value
  end

  def self.hook_free(hook_list, hook)
    __return_value = LibGLib.hook_free((hook_list.to_unsafe as LibGLib::HookList*), (hook.to_unsafe as LibGLib::Hook*))
    __return_value
  end

  def self.hook_insert_before(hook_list, sibling, hook)
    __return_value = LibGLib.hook_insert_before((hook_list.to_unsafe as LibGLib::HookList*), (sibling.to_unsafe as LibGLib::Hook*), (hook.to_unsafe as LibGLib::Hook*))
    __return_value
  end

  def self.hook_prepend(hook_list, hook)
    __return_value = LibGLib.hook_prepend((hook_list.to_unsafe as LibGLib::HookList*), (hook.to_unsafe as LibGLib::Hook*))
    __return_value
  end

  def self.hook_unref(hook_list, hook)
    __return_value = LibGLib.hook_unref((hook_list.to_unsafe as LibGLib::HookList*), (hook.to_unsafe as LibGLib::Hook*))
    __return_value
  end

  def self.hostname_is_ascii_encoded(hostname)
    __return_value = LibGLib.hostname_is_ascii_encoded(hostname)
    __return_value
  end

  def self.hostname_is_ip_address(hostname)
    __return_value = LibGLib.hostname_is_ip_address(hostname)
    __return_value
  end

  def self.hostname_is_non_ascii(hostname)
    __return_value = LibGLib.hostname_is_non_ascii(hostname)
    __return_value
  end

  def self.hostname_to_ascii(hostname)
    __return_value = LibGLib.hostname_to_ascii(hostname)
    raise "Expected string but got null" unless __return_value; String.new(__return_value)
  end

  def self.hostname_to_unicode(hostname)
    __return_value = LibGLib.hostname_to_unicode(hostname)
    raise "Expected string but got null" unless __return_value; String.new(__return_value)
  end

  def self.iconv(converter, inbuf, inbytes_left, outbuf, outbytes_left)
    __return_value = LibGLib.iconv((converter.to_unsafe as LibGLib::IConv*), inbuf, inbytes_left, outbuf, outbytes_left)
    __return_value
  end

  def self.idle_add(priority, function : LibGLib::SourceFunc, data, notify : LibGLib::DestroyNotify?)
    __return_value = LibGLib.idle_add(Int32.cast(priority), function, data, notify && notify)
    __return_value
  end

  def self.idle_remove_by_data(data)
    __return_value = LibGLib.idle_remove_by_data(data)
    __return_value
  end

  def self.idle_source_new
    __return_value = LibGLib.idle_source_new
    GLib::Source.new(__return_value)
  end

  def self.int64_equal(v1, v2)
    __return_value = LibGLib.int64_equal(v1, v2)
    __return_value
  end

  def self.int64_hash(v)
    __return_value = LibGLib.int64_hash(v)
    __return_value
  end

  def self.int_equal(v1, v2)
    __return_value = LibGLib.int_equal(v1, v2)
    __return_value
  end

  def self.int_hash(v)
    __return_value = LibGLib.int_hash(v)
    __return_value
  end

  def self.intern_static_string(string)
    __return_value = LibGLib.intern_static_string(string && string)
    raise "Expected string but got null" unless __return_value; String.new(__return_value)
  end

  def self.intern_string(string)
    __return_value = LibGLib.intern_string(string && string)
    raise "Expected string but got null" unless __return_value; String.new(__return_value)
  end

  def self.io_add_watch(channel, priority, condition, func : LibGLib::IOFunc, user_data, notify : LibGLib::DestroyNotify)
    __return_value = LibGLib.io_add_watch((channel.to_unsafe as LibGLib::IOChannel*), Int32.cast(priority), condition, func, user_data, notify)
    __return_value
  end

  def self.io_channel_error_from_errno(en)
    __return_value = LibGLib.io_channel_error_from_errno(Int32.cast(en))
    __return_value
  end

  def self.io_channel_error_quark
    __return_value = LibGLib.io_channel_error_quark
    __return_value
  end

  def self.io_create_watch(channel, condition)
    __return_value = LibGLib.io_create_watch((channel.to_unsafe as LibGLib::IOChannel*), condition)
    GLib::Source.new(__return_value)
  end

  def self.key_file_error_quark
    __return_value = LibGLib.key_file_error_quark
    __return_value
  end

  def self.listenv
    __return_value = LibGLib.listenv
    PointerIterator.new(__return_value) {|__item_72| raise "Expected string but got null" unless __item_72; String.new(__item_72) }
  end

  def self.locale_from_utf8(utf8string, len, bytes_read, bytes_written)
    __error = Pointer(LibGLib::Error).null
    __return_value = LibGLib.locale_from_utf8(utf8string, Int64.cast(len), bytes_read, bytes_written, pointerof(__error))
    GLib::Error.assert __error
    raise "Expected string but got null" unless __return_value; String.new(__return_value)
  end

  def self.locale_to_utf8(opsysstring, len, bytes_read, bytes_written)
    __error = Pointer(LibGLib::Error).null
    __return_value = LibGLib.locale_to_utf8(opsysstring, Int64.cast(len), bytes_read, bytes_written, pointerof(__error))
    GLib::Error.assert __error
    raise "Expected string but got null" unless __return_value; String.new(__return_value)
  end

  def self.log_default_handler(log_domain, log_level, message, unused_data)
    __return_value = LibGLib.log_default_handler(log_domain, log_level, message, unused_data)
    __return_value
  end

  def self.log_remove_handler(log_domain, handler_id)
    __return_value = LibGLib.log_remove_handler(log_domain, UInt32.cast(handler_id))
    __return_value
  end

  def self.log_set_always_fatal(fatal_mask)
    __return_value = LibGLib.log_set_always_fatal(fatal_mask)
    __return_value
  end

  def self.log_set_fatal_mask(log_domain, fatal_mask)
    __return_value = LibGLib.log_set_fatal_mask(log_domain, fatal_mask)
    __return_value
  end

  def self.main_context_default
    __return_value = LibGLib.main_context_default
    GLib::MainContext.new(__return_value)
  end

  def self.main_context_get_thread_default
    __return_value = LibGLib.main_context_get_thread_default
    GLib::MainContext.new(__return_value)
  end

  def self.main_context_ref_thread_default
    __return_value = LibGLib.main_context_ref_thread_default
    GLib::MainContext.new(__return_value)
  end

  def self.main_current_source
    __return_value = LibGLib.main_current_source
    GLib::Source.new(__return_value)
  end

  def self.main_depth
    __return_value = LibGLib.main_depth
    __return_value
  end

  def self.markup_error_quark
    __return_value = LibGLib.markup_error_quark
    __return_value
  end

  def self.markup_escape_text(text, length)
    __return_value = LibGLib.markup_escape_text(text, Int64.cast(length))
    raise "Expected string but got null" unless __return_value; String.new(__return_value)
  end

  def self.mem_is_system_malloc
    __return_value = LibGLib.mem_is_system_malloc
    __return_value
  end

  def self.mem_profile
    __return_value = LibGLib.mem_profile
    __return_value
  end

  def self.mem_set_vtable(vtable)
    __return_value = LibGLib.mem_set_vtable((vtable.to_unsafe as LibGLib::MemVTable*))
    __return_value
  end

  def self.mkdir_with_parents(pathname, mode)
    __return_value = LibGLib.mkdir_with_parents(pathname, Int32.cast(mode))
    __return_value
  end

  def self.mkdtemp(tmpl)
    __return_value = LibGLib.mkdtemp(tmpl)
    raise "Expected string but got null" unless __return_value; String.new(__return_value)
  end

  def self.mkdtemp_full(tmpl, mode)
    __return_value = LibGLib.mkdtemp_full(tmpl, Int32.cast(mode))
    raise "Expected string but got null" unless __return_value; String.new(__return_value)
  end

  def self.mkstemp(tmpl)
    __return_value = LibGLib.mkstemp(tmpl)
    __return_value
  end

  def self.mkstemp_full(tmpl, flags, mode)
    __return_value = LibGLib.mkstemp_full(tmpl, Int32.cast(flags), Int32.cast(mode))
    __return_value
  end

  def self.nullify_pointer(nullify_location)
    __return_value = LibGLib.nullify_pointer(nullify_location)
    __return_value
  end

  def self.on_error_query(prg_name)
    __return_value = LibGLib.on_error_query(prg_name)
    __return_value
  end

  def self.on_error_stack_trace(prg_name)
    __return_value = LibGLib.on_error_stack_trace(prg_name)
    __return_value
  end

  def self.once_init_enter(location)
    __return_value = LibGLib.once_init_enter(location)
    __return_value
  end

  def self.once_init_leave(location, result)
    __return_value = LibGLib.once_init_leave(location, UInt64.cast(result))
    __return_value
  end

  def self.option_error_quark
    __return_value = LibGLib.option_error_quark
    __return_value
  end

  def self.parse_debug_string(string, keys, nkeys)
    __return_value = LibGLib.parse_debug_string(string && string, keys, UInt32.cast(nkeys))
    __return_value
  end

  def self.path_get_basename(file_name)
    __return_value = LibGLib.path_get_basename(file_name)
    raise "Expected string but got null" unless __return_value; String.new(__return_value)
  end

  def self.path_get_dirname(file_name)
    __return_value = LibGLib.path_get_dirname(file_name)
    raise "Expected string but got null" unless __return_value; String.new(__return_value)
  end

  def self.path_is_absolute(file_name)
    __return_value = LibGLib.path_is_absolute(file_name)
    __return_value
  end

  def self.path_skip_root(file_name)
    __return_value = LibGLib.path_skip_root(file_name)
    raise "Expected string but got null" unless __return_value; String.new(__return_value) if __return_value
  end

  def self.pattern_match(pspec, string_length, string, string_reversed)
    __return_value = LibGLib.pattern_match((pspec.to_unsafe as LibGLib::PatternSpec*), UInt32.cast(string_length), string, string_reversed && string_reversed)
    __return_value
  end

  def self.pattern_match_simple(pattern, string)
    __return_value = LibGLib.pattern_match_simple(pattern, string)
    __return_value
  end

  def self.pattern_match_string(pspec, string)
    __return_value = LibGLib.pattern_match_string((pspec.to_unsafe as LibGLib::PatternSpec*), string)
    __return_value
  end

  def self.pointer_bit_lock(address, lock_bit)
    __return_value = LibGLib.pointer_bit_lock(address, Int32.cast(lock_bit))
    __return_value
  end

  def self.pointer_bit_trylock(address, lock_bit)
    __return_value = LibGLib.pointer_bit_trylock(address, Int32.cast(lock_bit))
    __return_value
  end

  def self.pointer_bit_unlock(address, lock_bit)
    __return_value = LibGLib.pointer_bit_unlock(address, Int32.cast(lock_bit))
    __return_value
  end

  def self.poll(fds, nfds, timeout)
    __return_value = LibGLib.poll((fds.to_unsafe as LibGLib::PollFD*), UInt32.cast(nfds), Int32.cast(timeout))
    __return_value
  end

  def self.propagate_error(dest, src)
    __return_value = LibGLib.propagate_error(dest, src)
    __return_value
  end

  def self.quark_from_static_string(string)
    __return_value = LibGLib.quark_from_static_string(string && string)
    __return_value
  end

  def self.quark_from_string(string)
    __return_value = LibGLib.quark_from_string(string && string)
    __return_value
  end

  def self.quark_to_string(quark)
    __return_value = LibGLib.quark_to_string(UInt32.cast(quark))
    raise "Expected string but got null" unless __return_value; String.new(__return_value)
  end

  def self.quark_try_string(string)
    __return_value = LibGLib.quark_try_string(string && string)
    __return_value
  end

  def self.random_double
    __return_value = LibGLib.random_double
    __return_value
  end

  def self.random_double_range(_begin, end)
    __return_value = LibGLib.random_double_range(Float64.cast(_begin), Float64.cast(end))
    __return_value
  end

  def self.random_int
    __return_value = LibGLib.random_int
    __return_value
  end

  def self.random_int_range(_begin, end)
    __return_value = LibGLib.random_int_range(Int32.cast(_begin), Int32.cast(end))
    __return_value
  end

  def self.random_set_seed(seed)
    __return_value = LibGLib.random_set_seed(UInt32.cast(seed))
    __return_value
  end

  def self.regex_check_replacement(replacement, has_references)
    __error = Pointer(LibGLib::Error).null
    __return_value = LibGLib.regex_check_replacement(replacement, Bool.cast(has_references), pointerof(__error))
    GLib::Error.assert __error
    __return_value
  end

  def self.regex_error_quark
    __return_value = LibGLib.regex_error_quark
    __return_value
  end

  def self.regex_escape_nul(string, length)
    __return_value = LibGLib.regex_escape_nul(string, Int32.cast(length))
    raise "Expected string but got null" unless __return_value; String.new(__return_value)
  end

  def self.regex_escape_string(string, length)
    __return_value = LibGLib.regex_escape_string(string, Int32.cast(length))
    raise "Expected string but got null" unless __return_value; String.new(__return_value)
  end

  def self.regex_match_simple(pattern, string, compile_options, match_options)
    __return_value = LibGLib.regex_match_simple(pattern, string, compile_options, match_options)
    __return_value
  end

  def self.regex_split_simple(pattern, string, compile_options, match_options)
    __return_value = LibGLib.regex_split_simple(pattern, string, compile_options, match_options)
    PointerIterator.new(__return_value) {|__item_88| raise "Expected string but got null" unless __item_88; String.new(__item_88) }
  end

  def self.reload_user_special_dirs_cache
    __return_value = LibGLib.reload_user_special_dirs_cache
    __return_value
  end

  def self.return_if_fail_warning(log_domain, pretty_function, expression)
    __return_value = LibGLib.return_if_fail_warning(log_domain, pretty_function, expression)
    __return_value
  end

  def self.rmdir(filename)
    __return_value = LibGLib.rmdir(filename)
    __return_value
  end

  def self.sequence_move(src, dest)
    __return_value = LibGLib.sequence_move((src.to_unsafe as LibGLib::SequenceIter*), (dest.to_unsafe as LibGLib::SequenceIter*))
    __return_value
  end

  def self.sequence_move_range(dest, _begin, end)
    __return_value = LibGLib.sequence_move_range((dest.to_unsafe as LibGLib::SequenceIter*), (_begin.to_unsafe as LibGLib::SequenceIter*), (end.to_unsafe as LibGLib::SequenceIter*))
    __return_value
  end

  def self.sequence_remove(iter)
    __return_value = LibGLib.sequence_remove((iter.to_unsafe as LibGLib::SequenceIter*))
    __return_value
  end

  def self.sequence_remove_range(_begin, end)
    __return_value = LibGLib.sequence_remove_range((_begin.to_unsafe as LibGLib::SequenceIter*), (end.to_unsafe as LibGLib::SequenceIter*))
    __return_value
  end

  def self.sequence_set(iter, data)
    __return_value = LibGLib.sequence_set((iter.to_unsafe as LibGLib::SequenceIter*), data)
    __return_value
  end

  def self.sequence_swap(a, b)
    __return_value = LibGLib.sequence_swap((a.to_unsafe as LibGLib::SequenceIter*), (b.to_unsafe as LibGLib::SequenceIter*))
    __return_value
  end

  def self.set_application_name(application_name)
    __return_value = LibGLib.set_application_name(application_name)
    __return_value
  end

  def self.set_error_literal(err, domain, code, message)
    __return_value = LibGLib.set_error_literal(err && err, UInt32.cast(domain), Int32.cast(code), message)
    __return_value
  end

  def self.set_prgname(prgname)
    __return_value = LibGLib.set_prgname(prgname)
    __return_value
  end

  def self.setenv(variable, value, overwrite)
    __return_value = LibGLib.setenv(variable, value, Bool.cast(overwrite))
    __return_value
  end

  def self.shell_error_quark
    __return_value = LibGLib.shell_error_quark
    __return_value
  end

  def self.shell_parse_argv(command_line, argcp, argvp)
    __error = Pointer(LibGLib::Error).null
    __return_value = LibGLib.shell_parse_argv(command_line, Int32.cast(argcp), argvp, pointerof(__error))
    GLib::Error.assert __error
    __return_value
  end

  def self.shell_quote(unquoted_string)
    __return_value = LibGLib.shell_quote(unquoted_string)
    raise "Expected string but got null" unless __return_value; String.new(__return_value)
  end

  def self.shell_unquote(quoted_string)
    __error = Pointer(LibGLib::Error).null
    __return_value = LibGLib.shell_unquote(quoted_string, pointerof(__error))
    GLib::Error.assert __error
    raise "Expected string but got null" unless __return_value; String.new(__return_value)
  end

  def self.slice_free1(block_size, mem_block)
    __return_value = LibGLib.slice_free1(UInt64.cast(block_size), mem_block)
    __return_value
  end

  def self.slice_free_chain_with_offset(block_size, mem_chain, next_offset)
    __return_value = LibGLib.slice_free_chain_with_offset(UInt64.cast(block_size), mem_chain, UInt64.cast(next_offset))
    __return_value
  end

  def self.slice_get_config(ckey)
    __return_value = LibGLib.slice_get_config(ckey)
    __return_value
  end

  def self.slice_get_config_state(ckey, address, n_values)
    __return_value = LibGLib.slice_get_config_state(ckey, Int64.cast(address), n_values)
    __return_value
  end

  def self.slice_set_config(ckey, value)
    __return_value = LibGLib.slice_set_config(ckey, Int64.cast(value))
    __return_value
  end

  def self.source_remove(tag)
    __return_value = LibGLib.source_remove(UInt32.cast(tag))
    __return_value
  end

  def self.source_remove_by_funcs_user_data(funcs, user_data)
    __return_value = LibGLib.source_remove_by_funcs_user_data((funcs.to_unsafe as LibGLib::SourceFuncs*), user_data)
    __return_value
  end

  def self.source_remove_by_user_data(user_data)
    __return_value = LibGLib.source_remove_by_user_data(user_data)
    __return_value
  end

  def self.source_set_name_by_id(tag, name)
    __return_value = LibGLib.source_set_name_by_id(UInt32.cast(tag), name)
    __return_value
  end

  def self.spaced_primes_closest(num)
    __return_value = LibGLib.spaced_primes_closest(UInt32.cast(num))
    __return_value
  end

  def self.spawn_async(working_directory, argv, envp, flags, child_setup : LibGLib::SpawnChildSetupFunc?, user_data, child_pid)
    __error = Pointer(LibGLib::Error).null
    __return_value = LibGLib.spawn_async(working_directory && working_directory, argv, envp && envp, flags, child_setup && child_setup, user_data, Int32.cast(child_pid), pointerof(__error))
    GLib::Error.assert __error
    __return_value
  end

  def self.spawn_async_with_pipes(working_directory, argv, envp, flags, child_setup : LibGLib::SpawnChildSetupFunc?, user_data, child_pid, standard_input, standard_output, standard_error)
    __error = Pointer(LibGLib::Error).null
    __return_value = LibGLib.spawn_async_with_pipes(working_directory && working_directory, argv, envp && envp, flags, child_setup && child_setup, user_data, Int32.cast(child_pid), Int32.cast(standard_input), Int32.cast(standard_output), Int32.cast(standard_error), pointerof(__error))
    GLib::Error.assert __error
    __return_value
  end

  def self.spawn_check_exit_status(exit_status)
    __error = Pointer(LibGLib::Error).null
    __return_value = LibGLib.spawn_check_exit_status(Int32.cast(exit_status), pointerof(__error))
    GLib::Error.assert __error
    __return_value
  end

  def self.spawn_close_pid(pid)
    __return_value = LibGLib.spawn_close_pid(Int32.cast(pid))
    __return_value
  end

  def self.spawn_command_line_async(command_line)
    __error = Pointer(LibGLib::Error).null
    __return_value = LibGLib.spawn_command_line_async(command_line, pointerof(__error))
    GLib::Error.assert __error
    __return_value
  end

  def self.spawn_command_line_sync(command_line, standard_output, standard_error, exit_status)
    __error = Pointer(LibGLib::Error).null
    __return_value = LibGLib.spawn_command_line_sync(command_line, standard_output, standard_error, Int32.cast(exit_status), pointerof(__error))
    GLib::Error.assert __error
    __return_value
  end

  def self.spawn_error_quark
    __return_value = LibGLib.spawn_error_quark
    __return_value
  end

  def self.spawn_exit_error_quark
    __return_value = LibGLib.spawn_exit_error_quark
    __return_value
  end

  def self.spawn_sync(working_directory, argv, envp, flags, child_setup : LibGLib::SpawnChildSetupFunc?, user_data, standard_output, standard_error, exit_status)
    __error = Pointer(LibGLib::Error).null
    __return_value = LibGLib.spawn_sync(working_directory && working_directory, argv, envp && envp, flags, child_setup && child_setup, user_data, standard_output, standard_error, Int32.cast(exit_status), pointerof(__error))
    GLib::Error.assert __error
    __return_value
  end

  def self.stpcpy(dest, src)
    __return_value = LibGLib.stpcpy(dest, src)
    raise "Expected string but got null" unless __return_value; String.new(__return_value)
  end

  def self.str_equal(v1, v2)
    __return_value = LibGLib.str_equal(v1, v2)
    __return_value
  end

  def self.str_has_prefix(str, prefix)
    __return_value = LibGLib.str_has_prefix(str, prefix)
    __return_value
  end

  def self.str_has_suffix(str, suffix)
    __return_value = LibGLib.str_has_suffix(str, suffix)
    __return_value
  end

  def self.str_hash(v)
    __return_value = LibGLib.str_hash(v)
    __return_value
  end

  def self.str_is_ascii(str)
    __return_value = LibGLib.str_is_ascii(str)
    __return_value
  end

  def self.str_match_string(search_term, potential_hit, accept_alternates)
    __return_value = LibGLib.str_match_string(search_term, potential_hit, Bool.cast(accept_alternates))
    __return_value
  end

  def self.str_to_ascii(str, from_locale)
    __return_value = LibGLib.str_to_ascii(str, from_locale && from_locale)
    raise "Expected string but got null" unless __return_value; String.new(__return_value)
  end

  def self.str_tokenize_and_fold(string, translit_locale, ascii_alternates)
    __return_value = LibGLib.str_tokenize_and_fold(string, translit_locale && translit_locale, ascii_alternates)
    PointerIterator.new(__return_value) {|__item_44| raise "Expected string but got null" unless __item_44; String.new(__item_44) }
  end

  def self.strcanon(string, valid_chars, substitutor)
    __return_value = LibGLib.strcanon(string, valid_chars, Int8.cast(substitutor))
    raise "Expected string but got null" unless __return_value; String.new(__return_value)
  end

  def self.strcasecmp(s1, s2)
    __return_value = LibGLib.strcasecmp(s1, s2)
    __return_value
  end

  def self.strchomp(string)
    __return_value = LibGLib.strchomp(string)
    raise "Expected string but got null" unless __return_value; String.new(__return_value)
  end

  def self.strchug(string)
    __return_value = LibGLib.strchug(string)
    raise "Expected string but got null" unless __return_value; String.new(__return_value)
  end

  def self.strcmp0(str1, str2)
    __return_value = LibGLib.strcmp0(str1 && str1, str2 && str2)
    __return_value
  end

  def self.strcompress(source)
    __return_value = LibGLib.strcompress(source)
    raise "Expected string but got null" unless __return_value; String.new(__return_value)
  end

  def self.strdelimit(string, delimiters, new_delimiter)
    __return_value = LibGLib.strdelimit(string, delimiters && delimiters, Int8.cast(new_delimiter))
    raise "Expected string but got null" unless __return_value; String.new(__return_value)
  end

  def self.strdown(string)
    __return_value = LibGLib.strdown(string)
    raise "Expected string but got null" unless __return_value; String.new(__return_value)
  end

  def self.strdup(str)
    __return_value = LibGLib.strdup(str)
    raise "Expected string but got null" unless __return_value; String.new(__return_value)
  end

  def self.strerror(errnum)
    __return_value = LibGLib.strerror(Int32.cast(errnum))
    raise "Expected string but got null" unless __return_value; String.new(__return_value)
  end

  def self.strescape(source, exceptions)
    __return_value = LibGLib.strescape(source, exceptions)
    raise "Expected string but got null" unless __return_value; String.new(__return_value)
  end

  def self.strfreev(str_array)
    __return_value = LibGLib.strfreev(str_array)
    __return_value
  end

  def self.string_new(init)
    __return_value = LibGLib.string_new(init && init)
    GLib::String.new(__return_value)
  end

  def self.string_new_len(init, len)
    __return_value = LibGLib.string_new_len(init, Int64.cast(len))
    GLib::String.new(__return_value)
  end

  def self.string_sized_new(dfl_size)
    __return_value = LibGLib.string_sized_new(UInt64.cast(dfl_size))
    GLib::String.new(__return_value)
  end

  def self.strip_context(msgid, msgval)
    __return_value = LibGLib.strip_context(msgid, msgval)
    raise "Expected string but got null" unless __return_value; String.new(__return_value)
  end

  def self.strjoinv(separator, str_array)
    __return_value = LibGLib.strjoinv(separator && separator, str_array)
    raise "Expected string but got null" unless __return_value; String.new(__return_value)
  end

  def self.strlcat(dest, src, dest_size)
    __return_value = LibGLib.strlcat(dest, src, UInt64.cast(dest_size))
    __return_value
  end

  def self.strlcpy(dest, src, dest_size)
    __return_value = LibGLib.strlcpy(dest, src, UInt64.cast(dest_size))
    __return_value
  end

  def self.strncasecmp(s1, s2, n)
    __return_value = LibGLib.strncasecmp(s1, s2, UInt32.cast(n))
    __return_value
  end

  def self.strndup(str, n)
    __return_value = LibGLib.strndup(str, UInt64.cast(n))
    raise "Expected string but got null" unless __return_value; String.new(__return_value)
  end

  def self.strnfill(length, fill_char)
    __return_value = LibGLib.strnfill(UInt64.cast(length), Int8.cast(fill_char))
    raise "Expected string but got null" unless __return_value; String.new(__return_value)
  end

  def self.strreverse(string)
    __return_value = LibGLib.strreverse(string)
    raise "Expected string but got null" unless __return_value; String.new(__return_value)
  end

  def self.strrstr(haystack, needle)
    __return_value = LibGLib.strrstr(haystack, needle)
    raise "Expected string but got null" unless __return_value; String.new(__return_value)
  end

  def self.strrstr_len(haystack, haystack_len, needle)
    __return_value = LibGLib.strrstr_len(haystack, Int64.cast(haystack_len), needle)
    raise "Expected string but got null" unless __return_value; String.new(__return_value)
  end

  def self.strsignal(signum)
    __return_value = LibGLib.strsignal(Int32.cast(signum))
    raise "Expected string but got null" unless __return_value; String.new(__return_value)
  end

  def self.strstr_len(haystack, haystack_len, needle)
    __return_value = LibGLib.strstr_len(haystack, Int64.cast(haystack_len), needle)
    raise "Expected string but got null" unless __return_value; String.new(__return_value)
  end

  def self.strtod(nptr, endptr)
    __return_value = LibGLib.strtod(nptr, endptr)
    __return_value
  end

  def self.strup(string)
    __return_value = LibGLib.strup(string)
    raise "Expected string but got null" unless __return_value; String.new(__return_value)
  end

  def self.strv_contains(strv, str)
    __return_value = LibGLib.strv_contains(strv, str)
    __return_value
  end

  def self.strv_get_type
    __return_value = LibGLib.strv_get_type
    __return_value
  end

  def self.strv_length(str_array)
    __return_value = LibGLib.strv_length(str_array)
    __return_value
  end

  def self.test_add_data_func(testpath, test_data, test_func : LibGLib::TestDataFunc)
    __return_value = LibGLib.test_add_data_func(testpath, test_data, test_func)
    __return_value
  end

  def self.test_add_data_func_full(testpath, test_data, test_func : LibGLib::TestDataFunc, data_free_func : LibGLib::DestroyNotify)
    __return_value = LibGLib.test_add_data_func_full(testpath, test_data, test_func, data_free_func)
    __return_value
  end

  def self.test_add_func(testpath, test_func : LibGLib::TestFunc)
    __return_value = LibGLib.test_add_func(testpath, test_func)
    __return_value
  end

  def self.test_assert_expected_messages_internal(domain, file, line, func)
    __return_value = LibGLib.test_assert_expected_messages_internal(domain, file, Int32.cast(line), func)
    __return_value
  end

  def self.test_bug(bug_uri_snippet)
    __return_value = LibGLib.test_bug(bug_uri_snippet)
    __return_value
  end

  def self.test_bug_base(uri_pattern)
    __return_value = LibGLib.test_bug_base(uri_pattern)
    __return_value
  end

  def self.test_expect_message(log_domain, log_level, pattern)
    __return_value = LibGLib.test_expect_message(log_domain && log_domain, log_level, pattern)
    __return_value
  end

  def self.test_fail
    __return_value = LibGLib.test_fail
    __return_value
  end

  def self.test_failed
    __return_value = LibGLib.test_failed
    __return_value
  end

  def self.test_get_dir(file_type)
    __return_value = LibGLib.test_get_dir(file_type)
    raise "Expected string but got null" unless __return_value; String.new(__return_value)
  end

  def self.test_incomplete(msg)
    __return_value = LibGLib.test_incomplete(msg && msg)
    __return_value
  end

  def self.test_log_type_name(log_type)
    __return_value = LibGLib.test_log_type_name(log_type)
    raise "Expected string but got null" unless __return_value; String.new(__return_value)
  end

  def self.test_queue_destroy(destroy_func : LibGLib::DestroyNotify, destroy_data)
    __return_value = LibGLib.test_queue_destroy(destroy_func, destroy_data)
    __return_value
  end

  def self.test_queue_free(gfree_pointer)
    __return_value = LibGLib.test_queue_free(gfree_pointer)
    __return_value
  end

  def self.test_rand_double
    __return_value = LibGLib.test_rand_double
    __return_value
  end

  def self.test_rand_double_range(range_start, range_end)
    __return_value = LibGLib.test_rand_double_range(Float64.cast(range_start), Float64.cast(range_end))
    __return_value
  end

  def self.test_rand_int
    __return_value = LibGLib.test_rand_int
    __return_value
  end

  def self.test_rand_int_range(_begin, end)
    __return_value = LibGLib.test_rand_int_range(Int32.cast(_begin), Int32.cast(end))
    __return_value
  end

  def self.test_run
    __return_value = LibGLib.test_run
    __return_value
  end

  def self.test_run_suite(suite)
    __return_value = LibGLib.test_run_suite((suite.to_unsafe as LibGLib::TestSuite*))
    __return_value
  end

  def self.test_set_nonfatal_assertions
    __return_value = LibGLib.test_set_nonfatal_assertions
    __return_value
  end

  def self.test_skip(msg)
    __return_value = LibGLib.test_skip(msg && msg)
    __return_value
  end

  def self.test_subprocess
    __return_value = LibGLib.test_subprocess
    __return_value
  end

  def self.test_timer_elapsed
    __return_value = LibGLib.test_timer_elapsed
    __return_value
  end

  def self.test_timer_last
    __return_value = LibGLib.test_timer_last
    __return_value
  end

  def self.test_timer_start
    __return_value = LibGLib.test_timer_start
    __return_value
  end

  def self.test_trap_assertions(domain, file, line, func, assertion_flags, pattern)
    __return_value = LibGLib.test_trap_assertions(domain, file, Int32.cast(line), func, UInt64.cast(assertion_flags), pattern)
    __return_value
  end

  def self.test_trap_fork(usec_timeout, test_trap_flags)
    __return_value = LibGLib.test_trap_fork(UInt64.cast(usec_timeout), test_trap_flags)
    __return_value
  end

  def self.test_trap_has_passed
    __return_value = LibGLib.test_trap_has_passed
    __return_value
  end

  def self.test_trap_reached_timeout
    __return_value = LibGLib.test_trap_reached_timeout
    __return_value
  end

  def self.test_trap_subprocess(test_path, usec_timeout, test_flags)
    __return_value = LibGLib.test_trap_subprocess(test_path && test_path, UInt64.cast(usec_timeout), test_flags)
    __return_value
  end

  def self.thread_error_quark
    __return_value = LibGLib.thread_error_quark
    __return_value
  end

  def self.thread_exit(retval)
    __return_value = LibGLib.thread_exit(retval)
    __return_value
  end

  def self.thread_pool_get_max_idle_time
    __return_value = LibGLib.thread_pool_get_max_idle_time
    __return_value
  end

  def self.thread_pool_get_max_unused_threads
    __return_value = LibGLib.thread_pool_get_max_unused_threads
    __return_value
  end

  def self.thread_pool_get_num_unused_threads
    __return_value = LibGLib.thread_pool_get_num_unused_threads
    __return_value
  end

  def self.thread_pool_set_max_idle_time(interval)
    __return_value = LibGLib.thread_pool_set_max_idle_time(UInt32.cast(interval))
    __return_value
  end

  def self.thread_pool_set_max_unused_threads(max_threads)
    __return_value = LibGLib.thread_pool_set_max_unused_threads(Int32.cast(max_threads))
    __return_value
  end

  def self.thread_pool_stop_unused_threads
    __return_value = LibGLib.thread_pool_stop_unused_threads
    __return_value
  end

  def self.thread_self
    __return_value = LibGLib.thread_self
    GLib::Thread.new(__return_value)
  end

  def self.thread_yield
    __return_value = LibGLib.thread_yield
    __return_value
  end

  def self.time_val_from_iso8601(iso_date, time)
    __return_value = LibGLib.time_val_from_iso8601(iso_date, time)
    __return_value
  end

  def self.timeout_add(priority, interval, function : LibGLib::SourceFunc, data, notify : LibGLib::DestroyNotify?)
    __return_value = LibGLib.timeout_add(Int32.cast(priority), UInt32.cast(interval), function, data, notify && notify)
    __return_value
  end

  def self.timeout_add_seconds(priority, interval, function : LibGLib::SourceFunc, data, notify : LibGLib::DestroyNotify?)
    __return_value = LibGLib.timeout_add_seconds(Int32.cast(priority), UInt32.cast(interval), function, data, notify && notify)
    __return_value
  end

  def self.timeout_source_new(interval)
    __return_value = LibGLib.timeout_source_new(UInt32.cast(interval))
    GLib::Source.new(__return_value)
  end

  def self.timeout_source_new_seconds(interval)
    __return_value = LibGLib.timeout_source_new_seconds(UInt32.cast(interval))
    GLib::Source.new(__return_value)
  end

  def self.trash_stack_height(stack_p)
    __return_value = LibGLib.trash_stack_height((stack_p.to_unsafe as LibGLib::TrashStack*))
    __return_value
  end

  def self.trash_stack_push(stack_p, data_p)
    __return_value = LibGLib.trash_stack_push((stack_p.to_unsafe as LibGLib::TrashStack*), data_p)
    __return_value
  end

  def self.ucs4_to_utf16(str, len, items_read, items_written)
    __error = Pointer(LibGLib::Error).null
    __return_value = LibGLib.ucs4_to_utf16(str, Int64.cast(len), items_read && items_read, items_written && items_written, pointerof(__error))
    GLib::Error.assert __error
    __return_value
  end

  def self.ucs4_to_utf8(str, len, items_read, items_written)
    __error = Pointer(LibGLib::Error).null
    __return_value = LibGLib.ucs4_to_utf8(str, Int64.cast(len), items_read && items_read, items_written && items_written, pointerof(__error))
    GLib::Error.assert __error
    raise "Expected string but got null" unless __return_value; String.new(__return_value)
  end

  def self.unichar_break_type(c)
    __return_value = LibGLib.unichar_break_type(UInt8.cast(c))
    __return_value
  end

  def self.unichar_combining_class(uc)
    __return_value = LibGLib.unichar_combining_class(UInt8.cast(uc))
    __return_value
  end

  def self.unichar_compose(a, b, ch)
    __return_value = LibGLib.unichar_compose(UInt8.cast(a), UInt8.cast(b), ch)
    __return_value
  end

  def self.unichar_decompose(ch, a, b)
    __return_value = LibGLib.unichar_decompose(UInt8.cast(ch), a, b)
    __return_value
  end

  def self.unichar_digit_value(c)
    __return_value = LibGLib.unichar_digit_value(UInt8.cast(c))
    __return_value
  end

  def self.unichar_fully_decompose(ch, compat, result, result_len)
    __return_value = LibGLib.unichar_fully_decompose(UInt8.cast(ch), Bool.cast(compat), result && result, UInt64.cast(result_len))
    __return_value
  end

  def self.unichar_get_mirror_char(ch, mirrored_ch)
    __return_value = LibGLib.unichar_get_mirror_char(UInt8.cast(ch), mirrored_ch)
    __return_value
  end

  def self.unichar_get_script(ch)
    __return_value = LibGLib.unichar_get_script(UInt8.cast(ch))
    __return_value
  end

  def self.unichar_isalnum(c)
    __return_value = LibGLib.unichar_isalnum(UInt8.cast(c))
    __return_value
  end

  def self.unichar_isalpha(c)
    __return_value = LibGLib.unichar_isalpha(UInt8.cast(c))
    __return_value
  end

  def self.unichar_iscntrl(c)
    __return_value = LibGLib.unichar_iscntrl(UInt8.cast(c))
    __return_value
  end

  def self.unichar_isdefined(c)
    __return_value = LibGLib.unichar_isdefined(UInt8.cast(c))
    __return_value
  end

  def self.unichar_isdigit(c)
    __return_value = LibGLib.unichar_isdigit(UInt8.cast(c))
    __return_value
  end

  def self.unichar_isgraph(c)
    __return_value = LibGLib.unichar_isgraph(UInt8.cast(c))
    __return_value
  end

  def self.unichar_islower(c)
    __return_value = LibGLib.unichar_islower(UInt8.cast(c))
    __return_value
  end

  def self.unichar_ismark(c)
    __return_value = LibGLib.unichar_ismark(UInt8.cast(c))
    __return_value
  end

  def self.unichar_isprint(c)
    __return_value = LibGLib.unichar_isprint(UInt8.cast(c))
    __return_value
  end

  def self.unichar_ispunct(c)
    __return_value = LibGLib.unichar_ispunct(UInt8.cast(c))
    __return_value
  end

  def self.unichar_isspace(c)
    __return_value = LibGLib.unichar_isspace(UInt8.cast(c))
    __return_value
  end

  def self.unichar_istitle(c)
    __return_value = LibGLib.unichar_istitle(UInt8.cast(c))
    __return_value
  end

  def self.unichar_isupper(c)
    __return_value = LibGLib.unichar_isupper(UInt8.cast(c))
    __return_value
  end

  def self.unichar_iswide(c)
    __return_value = LibGLib.unichar_iswide(UInt8.cast(c))
    __return_value
  end

  def self.unichar_iswide_cjk(c)
    __return_value = LibGLib.unichar_iswide_cjk(UInt8.cast(c))
    __return_value
  end

  def self.unichar_isxdigit(c)
    __return_value = LibGLib.unichar_isxdigit(UInt8.cast(c))
    __return_value
  end

  def self.unichar_iszerowidth(c)
    __return_value = LibGLib.unichar_iszerowidth(UInt8.cast(c))
    __return_value
  end

  def self.unichar_to_utf8(c, outbuf)
    __return_value = LibGLib.unichar_to_utf8(UInt8.cast(c), outbuf)
    __return_value
  end

  def self.unichar_tolower(c)
    __return_value = LibGLib.unichar_tolower(UInt8.cast(c))
    __return_value
  end

  def self.unichar_totitle(c)
    __return_value = LibGLib.unichar_totitle(UInt8.cast(c))
    __return_value
  end

  def self.unichar_toupper(c)
    __return_value = LibGLib.unichar_toupper(UInt8.cast(c))
    __return_value
  end

  def self.unichar_type(c)
    __return_value = LibGLib.unichar_type(UInt8.cast(c))
    __return_value
  end

  def self.unichar_validate(ch)
    __return_value = LibGLib.unichar_validate(UInt8.cast(ch))
    __return_value
  end

  def self.unichar_xdigit_value(c)
    __return_value = LibGLib.unichar_xdigit_value(UInt8.cast(c))
    __return_value
  end

  def self.unicode_canonical_decomposition(ch, result_len)
    __return_value = LibGLib.unicode_canonical_decomposition(UInt8.cast(ch), result_len)
    __return_value
  end

  def self.unicode_canonical_ordering(string, len)
    __return_value = LibGLib.unicode_canonical_ordering(string, UInt64.cast(len))
    __return_value
  end

  def self.unicode_script_from_iso15924(iso15924)
    __return_value = LibGLib.unicode_script_from_iso15924(UInt32.cast(iso15924))
    __return_value
  end

  def self.unicode_script_to_iso15924(script)
    __return_value = LibGLib.unicode_script_to_iso15924(script)
    __return_value
  end

  def self.unix_error_quark
    __return_value = LibGLib.unix_error_quark
    __return_value
  end

  def self.unix_fd_add_full(priority, fd, condition, function : LibGLib::UnixFDSourceFunc, user_data, notify : LibGLib::DestroyNotify)
    __return_value = LibGLib.unix_fd_add_full(Int32.cast(priority), Int32.cast(fd), condition, function, user_data, notify)
    __return_value
  end

  def self.unix_fd_source_new(fd, condition)
    __return_value = LibGLib.unix_fd_source_new(Int32.cast(fd), condition)
    GLib::Source.new(__return_value)
  end

  def self.unix_open_pipe(fds, flags)
    __error = Pointer(LibGLib::Error).null
    __return_value = LibGLib.unix_open_pipe(fds, Int32.cast(flags), pointerof(__error))
    GLib::Error.assert __error
    __return_value
  end

  def self.unix_set_fd_nonblocking(fd, nonblock)
    __error = Pointer(LibGLib::Error).null
    __return_value = LibGLib.unix_set_fd_nonblocking(Int32.cast(fd), Bool.cast(nonblock), pointerof(__error))
    GLib::Error.assert __error
    __return_value
  end

  def self.unix_signal_add(priority, signum, handler : LibGLib::SourceFunc, user_data, notify : LibGLib::DestroyNotify)
    __return_value = LibGLib.unix_signal_add(Int32.cast(priority), Int32.cast(signum), handler, user_data, notify)
    __return_value
  end

  def self.unix_signal_source_new(signum)
    __return_value = LibGLib.unix_signal_source_new(Int32.cast(signum))
    GLib::Source.new(__return_value)
  end

  def self.unlink(filename)
    __return_value = LibGLib.unlink(filename)
    __return_value
  end

  def self.unsetenv(variable)
    __return_value = LibGLib.unsetenv(variable)
    __return_value
  end

  def self.uri_escape_string(unescaped, reserved_chars_allowed, allow_utf8)
    __return_value = LibGLib.uri_escape_string(unescaped, reserved_chars_allowed && reserved_chars_allowed, Bool.cast(allow_utf8))
    raise "Expected string but got null" unless __return_value; String.new(__return_value)
  end

  def self.uri_list_extract_uris(uri_list)
    __return_value = LibGLib.uri_list_extract_uris(uri_list)
    PointerIterator.new(__return_value) {|__item_72| raise "Expected string but got null" unless __item_72; String.new(__item_72) }
  end

  def self.uri_parse_scheme(uri)
    __return_value = LibGLib.uri_parse_scheme(uri)
    raise "Expected string but got null" unless __return_value; String.new(__return_value)
  end

  def self.uri_unescape_segment(escaped_string, escaped_string_end, illegal_characters)
    __return_value = LibGLib.uri_unescape_segment(escaped_string && escaped_string, escaped_string_end && escaped_string_end, illegal_characters && illegal_characters)
    raise "Expected string but got null" unless __return_value; String.new(__return_value)
  end

  def self.uri_unescape_string(escaped_string, illegal_characters)
    __return_value = LibGLib.uri_unescape_string(escaped_string, illegal_characters && illegal_characters)
    raise "Expected string but got null" unless __return_value; String.new(__return_value)
  end

  def self.usleep(microseconds)
    __return_value = LibGLib.usleep(UInt64.cast(microseconds))
    __return_value
  end

  def self.utf16_to_ucs4(str, len, items_read, items_written)
    __error = Pointer(LibGLib::Error).null
    __return_value = LibGLib.utf16_to_ucs4(str, Int64.cast(len), items_read && items_read, items_written && items_written, pointerof(__error))
    GLib::Error.assert __error
    __return_value
  end

  def self.utf16_to_utf8(str, len, items_read, items_written)
    __error = Pointer(LibGLib::Error).null
    __return_value = LibGLib.utf16_to_utf8(str, Int64.cast(len), items_read && items_read, items_written && items_written, pointerof(__error))
    GLib::Error.assert __error
    raise "Expected string but got null" unless __return_value; String.new(__return_value)
  end

  def self.utf8_casefold(str, len)
    __return_value = LibGLib.utf8_casefold(str, Int64.cast(len))
    raise "Expected string but got null" unless __return_value; String.new(__return_value)
  end

  def self.utf8_collate(str1, str2)
    __return_value = LibGLib.utf8_collate(str1, str2)
    __return_value
  end

  def self.utf8_collate_key(str, len)
    __return_value = LibGLib.utf8_collate_key(str, Int64.cast(len))
    raise "Expected string but got null" unless __return_value; String.new(__return_value)
  end

  def self.utf8_collate_key_for_filename(str, len)
    __return_value = LibGLib.utf8_collate_key_for_filename(str, Int64.cast(len))
    raise "Expected string but got null" unless __return_value; String.new(__return_value)
  end

  def self.utf8_find_next_char(p, end)
    __return_value = LibGLib.utf8_find_next_char(p, end)
    raise "Expected string but got null" unless __return_value; String.new(__return_value)
  end

  def self.utf8_find_prev_char(str, p)
    __return_value = LibGLib.utf8_find_prev_char(str, p)
    raise "Expected string but got null" unless __return_value; String.new(__return_value)
  end

  def self.utf8_get_char(p)
    __return_value = LibGLib.utf8_get_char(p)
    __return_value
  end

  def self.utf8_get_char_validated(p, max_len)
    __return_value = LibGLib.utf8_get_char_validated(p, Int64.cast(max_len))
    __return_value
  end

  def self.utf8_normalize(str, len, mode)
    __return_value = LibGLib.utf8_normalize(str, Int64.cast(len), mode)
    raise "Expected string but got null" unless __return_value; String.new(__return_value)
  end

  def self.utf8_offset_to_pointer(str, offset)
    __return_value = LibGLib.utf8_offset_to_pointer(str, Int64.cast(offset))
    raise "Expected string but got null" unless __return_value; String.new(__return_value)
  end

  def self.utf8_pointer_to_offset(str, pos)
    __return_value = LibGLib.utf8_pointer_to_offset(str, pos)
    __return_value
  end

  def self.utf8_prev_char(p)
    __return_value = LibGLib.utf8_prev_char(p)
    raise "Expected string but got null" unless __return_value; String.new(__return_value)
  end

  def self.utf8_strchr(p, len, c)
    __return_value = LibGLib.utf8_strchr(p, Int64.cast(len), UInt8.cast(c))
    raise "Expected string but got null" unless __return_value; String.new(__return_value)
  end

  def self.utf8_strdown(str, len)
    __return_value = LibGLib.utf8_strdown(str, Int64.cast(len))
    raise "Expected string but got null" unless __return_value; String.new(__return_value)
  end

  def self.utf8_strlen(p, max)
    __return_value = LibGLib.utf8_strlen(p, Int64.cast(max))
    __return_value
  end

  def self.utf8_strncpy(dest, src, n)
    __return_value = LibGLib.utf8_strncpy(dest, src, UInt64.cast(n))
    raise "Expected string but got null" unless __return_value; String.new(__return_value)
  end

  def self.utf8_strrchr(p, len, c)
    __return_value = LibGLib.utf8_strrchr(p, Int64.cast(len), UInt8.cast(c))
    raise "Expected string but got null" unless __return_value; String.new(__return_value)
  end

  def self.utf8_strreverse(str, len)
    __return_value = LibGLib.utf8_strreverse(str, Int64.cast(len))
    raise "Expected string but got null" unless __return_value; String.new(__return_value)
  end

  def self.utf8_strup(str, len)
    __return_value = LibGLib.utf8_strup(str, Int64.cast(len))
    raise "Expected string but got null" unless __return_value; String.new(__return_value)
  end

  def self.utf8_substring(str, start_pos, end_pos)
    __return_value = LibGLib.utf8_substring(str, Int64.cast(start_pos), Int64.cast(end_pos))
    raise "Expected string but got null" unless __return_value; String.new(__return_value)
  end

  def self.utf8_to_ucs4(str, len, items_read, items_written)
    __error = Pointer(LibGLib::Error).null
    __return_value = LibGLib.utf8_to_ucs4(str, Int64.cast(len), items_read && items_read, items_written && items_written, pointerof(__error))
    GLib::Error.assert __error
    __return_value
  end

  def self.utf8_to_ucs4_fast(str, len, items_written)
    __return_value = LibGLib.utf8_to_ucs4_fast(str, Int64.cast(len), items_written && items_written)
    __return_value
  end

  def self.utf8_to_utf16(str, len, items_read, items_written)
    __error = Pointer(LibGLib::Error).null
    __return_value = LibGLib.utf8_to_utf16(str, Int64.cast(len), items_read && items_read, items_written && items_written, pointerof(__error))
    GLib::Error.assert __error
    __return_value
  end

  def self.utf8_validate(str, max_len, end)
    __return_value = LibGLib.utf8_validate(str, Int64.cast(max_len), end)
    __return_value
  end

  def self.variant_get_gtype
    __return_value = LibGLib.variant_get_gtype
    __return_value
  end

  def self.variant_is_object_path(string)
    __return_value = LibGLib.variant_is_object_path(string)
    __return_value
  end

  def self.variant_is_signature(string)
    __return_value = LibGLib.variant_is_signature(string)
    __return_value
  end

  def self.variant_parse(type, text, limit, endptr)
    __error = Pointer(LibGLib::Error).null
    __return_value = LibGLib.variant_parse(type && (type.to_unsafe as LibGLib::VariantType*), text, limit && limit, endptr && endptr, pointerof(__error))
    GLib::Error.assert __error
    GLib::Variant.new(__return_value)
  end

  def self.variant_parse_error_print_context(error, source_str)
    __return_value = LibGLib.variant_parse_error_print_context(error, source_str)
    raise "Expected string but got null" unless __return_value; String.new(__return_value)
  end

  def self.variant_parse_error_quark
    __return_value = LibGLib.variant_parse_error_quark
    __return_value
  end

  def self.variant_parser_get_error_quark
    __return_value = LibGLib.variant_parser_get_error_quark
    __return_value
  end

  def self.variant_type_checked_(arg0)
    __return_value = LibGLib.variant_type_checked_(arg0)
    GLib::VariantType.new(__return_value)
  end

  def self.variant_type_string_is_valid(type_string)
    __return_value = LibGLib.variant_type_string_is_valid(type_string)
    __return_value
  end

  def self.variant_type_string_scan(string, limit, endptr)
    __return_value = LibGLib.variant_type_string_scan(string, limit && limit, endptr)
    __return_value
  end

  def self.warn_message(domain, file, line, func, warnexpr)
    __return_value = LibGLib.warn_message(domain, file, Int32.cast(line), func, warnexpr)
    __return_value
  end
end

