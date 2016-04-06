module GLib
  class Scanner
    include GObject::WrappedType

    def initialize(@g_lib_scanner)
    end

    def to_unsafe
      @g_lib_scanner.not_nil!
    end

    def cur_line
      __return_value = LibGLib.scanner_cur_line((to_unsafe as LibGLib::Scanner*))
      __return_value
    end

    def cur_position
      __return_value = LibGLib.scanner_cur_position((to_unsafe as LibGLib::Scanner*))
      __return_value
    end

    def cur_token
      __return_value = LibGLib.scanner_cur_token((to_unsafe as LibGLib::Scanner*))
      __return_value
    end

    def destroy
      __return_value = LibGLib.scanner_destroy((to_unsafe as LibGLib::Scanner*))
      __return_value
    end

    def eof
      __return_value = LibGLib.scanner_eof((to_unsafe as LibGLib::Scanner*))
      __return_value
    end

    def next_token
      __return_value = LibGLib.scanner_get_next_token((to_unsafe as LibGLib::Scanner*))
      __return_value
    end

    def input_file(input_fd)
      __return_value = LibGLib.scanner_input_file((to_unsafe as LibGLib::Scanner*), Int32.new(input_fd))
      __return_value
    end

    def input_text(text, text_len)
      __return_value = LibGLib.scanner_input_text((to_unsafe as LibGLib::Scanner*), text, UInt32.new(text_len))
      __return_value
    end

    def peek_next_token
      __return_value = LibGLib.scanner_peek_next_token((to_unsafe as LibGLib::Scanner*))
      __return_value
    end

    def scope_add_symbol(scope_id, symbol, value)
      __return_value = LibGLib.scanner_scope_add_symbol((to_unsafe as LibGLib::Scanner*), UInt32.new(scope_id), symbol, value)
      __return_value
    end

    def scope_remove_symbol(scope_id, symbol)
      __return_value = LibGLib.scanner_scope_remove_symbol((to_unsafe as LibGLib::Scanner*), UInt32.new(scope_id), symbol)
      __return_value
    end

    def scope=(scope_id)
      __return_value = LibGLib.scanner_set_scope((to_unsafe as LibGLib::Scanner*), UInt32.new(scope_id))
      __return_value
    end

    def sync_file_offset
      __return_value = LibGLib.scanner_sync_file_offset((to_unsafe as LibGLib::Scanner*))
      __return_value
    end

    def unexp_token(expected_token, identifier_spec, symbol_spec, symbol_name, message, is_error)
      __return_value = LibGLib.scanner_unexp_token((to_unsafe as LibGLib::Scanner*), expected_token, identifier_spec, symbol_spec, symbol_name, message, Int32.new(is_error))
      __return_value
    end

  end
end

