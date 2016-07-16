module GLib
  class Scanner
    include GObject::WrappedType

    def self.new(user_data : Void*|Nil = nil, max_parse_errors : UInt32|Nil = nil, parse_errors : UInt32|Nil = nil, input_name : String|Nil = nil, qdata : GLib::Data|Nil = nil, config : GLib::ScannerConfig|Nil = nil, token : GLib::TokenType|Nil = nil, value : GLib::TokenValue|Nil = nil, line : UInt32|Nil = nil, position : UInt32|Nil = nil, next_token : GLib::TokenType|Nil = nil, next_value : GLib::TokenValue|Nil = nil, next_line : UInt32|Nil = nil, next_position : UInt32|Nil = nil, msg_handler : GLib::ScannerMsgFunc|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(144, 0u8)
      new(ptr.as(LibGLib::Scanner*)).tap do |object|
        object.user_data = user_data unless user_data.nil?
        object.max_parse_errors = max_parse_errors unless max_parse_errors.nil?
        object.parse_errors = parse_errors unless parse_errors.nil?
        object.input_name = input_name unless input_name.nil?
        object.qdata = qdata unless qdata.nil?
        object.config = config unless config.nil?
        object.token = token unless token.nil?
        object.value = value unless value.nil?
        object.line = line unless line.nil?
        object.position = position unless position.nil?
        object.next_token = next_token unless next_token.nil?
        object.next_value = next_value unless next_value.nil?
        object.next_line = next_line unless next_line.nil?
        object.next_position = next_position unless next_position.nil?
        object.msg_handler = msg_handler unless msg_handler.nil?
      end
    end

    @g_lib_scanner : LibGLib::Scanner*?
    def initialize(@g_lib_scanner : LibGLib::Scanner*)
    end

    def to_unsafe
      @g_lib_scanner.not_nil!.as(Void*)
    end

    def cur_line
      __return_value = LibGLib.scanner_cur_line(to_unsafe.as(LibGLib::Scanner*))
      __return_value
    end

    def cur_position
      __return_value = LibGLib.scanner_cur_position(to_unsafe.as(LibGLib::Scanner*))
      __return_value
    end

    def cur_token
      __return_value = LibGLib.scanner_cur_token(to_unsafe.as(LibGLib::Scanner*))
      __return_value
    end

    def destroy
      __return_value = LibGLib.scanner_destroy(to_unsafe.as(LibGLib::Scanner*))
      __return_value
    end

    def eof
      __return_value = LibGLib.scanner_eof(to_unsafe.as(LibGLib::Scanner*))
      __return_value
    end

    def next_token
      __return_value = LibGLib.scanner_get_next_token(to_unsafe.as(LibGLib::Scanner*))
      __return_value
    end

    def input_file(input_fd)
      __return_value = LibGLib.scanner_input_file(to_unsafe.as(LibGLib::Scanner*), Int32.new(input_fd))
      __return_value
    end

    def input_text(text, text_len)
      __return_value = LibGLib.scanner_input_text(to_unsafe.as(LibGLib::Scanner*), text.to_unsafe, UInt32.new(text_len))
      __return_value
    end

    def lookup_symbol(symbol)
      __return_value = LibGLib.scanner_lookup_symbol(to_unsafe.as(LibGLib::Scanner*), symbol.to_unsafe)
      __return_value if __return_value
    end

    def peek_next_token
      __return_value = LibGLib.scanner_peek_next_token(to_unsafe.as(LibGLib::Scanner*))
      __return_value
    end

    def scope_add_symbol(scope_id, symbol, value)
      __return_value = LibGLib.scanner_scope_add_symbol(to_unsafe.as(LibGLib::Scanner*), UInt32.new(scope_id), symbol.to_unsafe, value && value)
      __return_value
    end

    def scope_lookup_symbol(scope_id, symbol)
      __return_value = LibGLib.scanner_scope_lookup_symbol(to_unsafe.as(LibGLib::Scanner*), UInt32.new(scope_id), symbol.to_unsafe)
      __return_value if __return_value
    end

    def scope_remove_symbol(scope_id, symbol)
      __return_value = LibGLib.scanner_scope_remove_symbol(to_unsafe.as(LibGLib::Scanner*), UInt32.new(scope_id), symbol.to_unsafe)
      __return_value
    end

    def scope=(scope_id)
      __return_value = LibGLib.scanner_set_scope(to_unsafe.as(LibGLib::Scanner*), UInt32.new(scope_id))
      __return_value
    end

    def sync_file_offset
      __return_value = LibGLib.scanner_sync_file_offset(to_unsafe.as(LibGLib::Scanner*))
      __return_value
    end

    def unexp_token(expected_token, identifier_spec, symbol_spec, symbol_name, message, is_error)
      __return_value = LibGLib.scanner_unexp_token(to_unsafe.as(LibGLib::Scanner*), expected_token, identifier_spec.to_unsafe, symbol_spec.to_unsafe, symbol_name.to_unsafe, message.to_unsafe, Int32.new(is_error))
      __return_value
    end

    def user_data
      (to_unsafe.as(LibGLib::Scanner*).value.user_data)
    end

    def user_data=(value : Void*)
      to_unsafe.as(LibGLib::Scanner*).value.user_data = value
    end

    def max_parse_errors
      (to_unsafe.as(LibGLib::Scanner*).value.max_parse_errors)
    end

    def max_parse_errors=(value : UInt32)
      to_unsafe.as(LibGLib::Scanner*).value.max_parse_errors = UInt32.new(value)
    end

    def parse_errors
      (to_unsafe.as(LibGLib::Scanner*).value.parse_errors)
    end

    def parse_errors=(value : UInt32)
      to_unsafe.as(LibGLib::Scanner*).value.parse_errors = UInt32.new(value)
    end

    def input_name
      (raise "Expected string but got null" unless (to_unsafe.as(LibGLib::Scanner*).value.input_name); ::String.new((to_unsafe.as(LibGLib::Scanner*).value.input_name)))
    end

    def input_name=(value : String)
      to_unsafe.as(LibGLib::Scanner*).value.input_name = value.to_unsafe
    end

    def qdata
      GLib::Data.new((to_unsafe.as(LibGLib::Scanner*).value.qdata))
    end

    def qdata=(value : GLib::Data)
      to_unsafe.as(LibGLib::Scanner*).value.qdata = value.to_unsafe.as(LibGLib::Data*)
    end

    def config
      GLib::ScannerConfig.new((to_unsafe.as(LibGLib::Scanner*).value.config))
    end

    def config=(value : GLib::ScannerConfig)
      to_unsafe.as(LibGLib::Scanner*).value.config = value.to_unsafe.as(LibGLib::ScannerConfig*)
    end

    def token
      (to_unsafe.as(LibGLib::Scanner*).value.token)
    end

    def token=(value : GLib::TokenType)
      to_unsafe.as(LibGLib::Scanner*).value.token = value
    end

    def value
      (to_unsafe.as(LibGLib::Scanner*).value.value)
    end

    def value=(value : GLib::TokenValue)
      to_unsafe.as(LibGLib::Scanner*).value.value = value
    end

    def line
      (to_unsafe.as(LibGLib::Scanner*).value.line)
    end

    def line=(value : UInt32)
      to_unsafe.as(LibGLib::Scanner*).value.line = UInt32.new(value)
    end

    def position
      (to_unsafe.as(LibGLib::Scanner*).value.position)
    end

    def position=(value : UInt32)
      to_unsafe.as(LibGLib::Scanner*).value.position = UInt32.new(value)
    end

    def next_token
      (to_unsafe.as(LibGLib::Scanner*).value.next_token)
    end

    def next_token=(value : GLib::TokenType)
      to_unsafe.as(LibGLib::Scanner*).value.next_token = value
    end

    def next_value
      (to_unsafe.as(LibGLib::Scanner*).value.next_value)
    end

    def next_value=(value : GLib::TokenValue)
      to_unsafe.as(LibGLib::Scanner*).value.next_value = value
    end

    def next_line
      (to_unsafe.as(LibGLib::Scanner*).value.next_line)
    end

    def next_line=(value : UInt32)
      to_unsafe.as(LibGLib::Scanner*).value.next_line = UInt32.new(value)
    end

    def next_position
      (to_unsafe.as(LibGLib::Scanner*).value.next_position)
    end

    def next_position=(value : UInt32)
      to_unsafe.as(LibGLib::Scanner*).value.next_position = UInt32.new(value)
    end

    def symbol_table
      (to_unsafe.as(LibGLib::Scanner*).value.symbol_table)
    end

    def input_fd
      (to_unsafe.as(LibGLib::Scanner*).value.input_fd)
    end

    def text
      (raise "Expected string but got null" unless (to_unsafe.as(LibGLib::Scanner*).value.text); ::String.new((to_unsafe.as(LibGLib::Scanner*).value.text)))
    end

    def text_end
      (raise "Expected string but got null" unless (to_unsafe.as(LibGLib::Scanner*).value.text_end); ::String.new((to_unsafe.as(LibGLib::Scanner*).value.text_end)))
    end

    def buffer
      (raise "Expected string but got null" unless (to_unsafe.as(LibGLib::Scanner*).value.buffer); ::String.new((to_unsafe.as(LibGLib::Scanner*).value.buffer)))
    end

    def scope_id
      (to_unsafe.as(LibGLib::Scanner*).value.scope_id)
    end

    def msg_handler
      (to_unsafe.as(LibGLib::Scanner*).value.msg_handler)
    end

    def msg_handler=(value : GLib::ScannerMsgFunc)
      to_unsafe.as(LibGLib::Scanner*).value.msg_handler = value
    end

  end
end

