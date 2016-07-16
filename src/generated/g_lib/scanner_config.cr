module GLib
  class ScannerConfig
    include GObject::WrappedType

    def self.new(cset_skip_characters : String|Nil = nil, cset_identifier_first : String|Nil = nil, cset_identifier_nth : String|Nil = nil, cpair_comment_single : String|Nil = nil, case_sensitive : UInt32|Nil = nil, skip_comment_multi : UInt32|Nil = nil, skip_comment_single : UInt32|Nil = nil, scan_comment_multi : UInt32|Nil = nil, scan_identifier : UInt32|Nil = nil, scan_identifier_1char : UInt32|Nil = nil, scan_identifier_NULL : UInt32|Nil = nil, scan_symbols : UInt32|Nil = nil, scan_binary : UInt32|Nil = nil, scan_octal : UInt32|Nil = nil, scan_float : UInt32|Nil = nil, scan_hex : UInt32|Nil = nil, scan_hex_dollar : UInt32|Nil = nil, scan_string_sq : UInt32|Nil = nil, scan_string_dq : UInt32|Nil = nil, numbers_2_int : UInt32|Nil = nil, int_2_float : UInt32|Nil = nil, identifier_2_string : UInt32|Nil = nil, char_2_token : UInt32|Nil = nil, symbol_2_token : UInt32|Nil = nil, scope_0_fallback : UInt32|Nil = nil, store_int64 : UInt32|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(128, 0u8)
      new(ptr.as(LibGLib::ScannerConfig*)).tap do |object|
        object.cset_skip_characters = cset_skip_characters unless cset_skip_characters.nil?
        object.cset_identifier_first = cset_identifier_first unless cset_identifier_first.nil?
        object.cset_identifier_nth = cset_identifier_nth unless cset_identifier_nth.nil?
        object.cpair_comment_single = cpair_comment_single unless cpair_comment_single.nil?
        object.case_sensitive = case_sensitive unless case_sensitive.nil?
        object.skip_comment_multi = skip_comment_multi unless skip_comment_multi.nil?
        object.skip_comment_single = skip_comment_single unless skip_comment_single.nil?
        object.scan_comment_multi = scan_comment_multi unless scan_comment_multi.nil?
        object.scan_identifier = scan_identifier unless scan_identifier.nil?
        object.scan_identifier_1char = scan_identifier_1char unless scan_identifier_1char.nil?
        object.scan_identifier_NULL = scan_identifier_NULL unless scan_identifier_NULL.nil?
        object.scan_symbols = scan_symbols unless scan_symbols.nil?
        object.scan_binary = scan_binary unless scan_binary.nil?
        object.scan_octal = scan_octal unless scan_octal.nil?
        object.scan_float = scan_float unless scan_float.nil?
        object.scan_hex = scan_hex unless scan_hex.nil?
        object.scan_hex_dollar = scan_hex_dollar unless scan_hex_dollar.nil?
        object.scan_string_sq = scan_string_sq unless scan_string_sq.nil?
        object.scan_string_dq = scan_string_dq unless scan_string_dq.nil?
        object.numbers_2_int = numbers_2_int unless numbers_2_int.nil?
        object.int_2_float = int_2_float unless int_2_float.nil?
        object.identifier_2_string = identifier_2_string unless identifier_2_string.nil?
        object.char_2_token = char_2_token unless char_2_token.nil?
        object.symbol_2_token = symbol_2_token unless symbol_2_token.nil?
        object.scope_0_fallback = scope_0_fallback unless scope_0_fallback.nil?
        object.store_int64 = store_int64 unless store_int64.nil?
      end
    end

    @g_lib_scanner_config : LibGLib::ScannerConfig*?
    def initialize(@g_lib_scanner_config : LibGLib::ScannerConfig*)
    end

    def to_unsafe
      @g_lib_scanner_config.not_nil!
    end

    def cset_skip_characters
      (raise "Expected string but got null" unless (to_unsafe.value.cset_skip_characters); ::String.new((to_unsafe.value.cset_skip_characters)))
    end

    def cset_skip_characters=(value : String)
      to_unsafe.value.cset_skip_characters = value.to_unsafe
    end

    def cset_identifier_first
      (raise "Expected string but got null" unless (to_unsafe.value.cset_identifier_first); ::String.new((to_unsafe.value.cset_identifier_first)))
    end

    def cset_identifier_first=(value : String)
      to_unsafe.value.cset_identifier_first = value.to_unsafe
    end

    def cset_identifier_nth
      (raise "Expected string but got null" unless (to_unsafe.value.cset_identifier_nth); ::String.new((to_unsafe.value.cset_identifier_nth)))
    end

    def cset_identifier_nth=(value : String)
      to_unsafe.value.cset_identifier_nth = value.to_unsafe
    end

    def cpair_comment_single
      (raise "Expected string but got null" unless (to_unsafe.value.cpair_comment_single); ::String.new((to_unsafe.value.cpair_comment_single)))
    end

    def cpair_comment_single=(value : String)
      to_unsafe.value.cpair_comment_single = value.to_unsafe
    end

    def case_sensitive
      (to_unsafe.value.case_sensitive)
    end

    def case_sensitive=(value : UInt32)
      to_unsafe.value.case_sensitive = UInt32.new(value)
    end

    def skip_comment_multi
      (to_unsafe.value.skip_comment_multi)
    end

    def skip_comment_multi=(value : UInt32)
      to_unsafe.value.skip_comment_multi = UInt32.new(value)
    end

    def skip_comment_single
      (to_unsafe.value.skip_comment_single)
    end

    def skip_comment_single=(value : UInt32)
      to_unsafe.value.skip_comment_single = UInt32.new(value)
    end

    def scan_comment_multi
      (to_unsafe.value.scan_comment_multi)
    end

    def scan_comment_multi=(value : UInt32)
      to_unsafe.value.scan_comment_multi = UInt32.new(value)
    end

    def scan_identifier
      (to_unsafe.value.scan_identifier)
    end

    def scan_identifier=(value : UInt32)
      to_unsafe.value.scan_identifier = UInt32.new(value)
    end

    def scan_identifier_1char
      (to_unsafe.value.scan_identifier_1char)
    end

    def scan_identifier_1char=(value : UInt32)
      to_unsafe.value.scan_identifier_1char = UInt32.new(value)
    end

    def scan_identifier_NULL
      (to_unsafe.value.scan_identifier_NULL)
    end

    def scan_identifier_NULL=(value : UInt32)
      to_unsafe.value.scan_identifier_NULL = UInt32.new(value)
    end

    def scan_symbols
      (to_unsafe.value.scan_symbols)
    end

    def scan_symbols=(value : UInt32)
      to_unsafe.value.scan_symbols = UInt32.new(value)
    end

    def scan_binary
      (to_unsafe.value.scan_binary)
    end

    def scan_binary=(value : UInt32)
      to_unsafe.value.scan_binary = UInt32.new(value)
    end

    def scan_octal
      (to_unsafe.value.scan_octal)
    end

    def scan_octal=(value : UInt32)
      to_unsafe.value.scan_octal = UInt32.new(value)
    end

    def scan_float
      (to_unsafe.value.scan_float)
    end

    def scan_float=(value : UInt32)
      to_unsafe.value.scan_float = UInt32.new(value)
    end

    def scan_hex
      (to_unsafe.value.scan_hex)
    end

    def scan_hex=(value : UInt32)
      to_unsafe.value.scan_hex = UInt32.new(value)
    end

    def scan_hex_dollar
      (to_unsafe.value.scan_hex_dollar)
    end

    def scan_hex_dollar=(value : UInt32)
      to_unsafe.value.scan_hex_dollar = UInt32.new(value)
    end

    def scan_string_sq
      (to_unsafe.value.scan_string_sq)
    end

    def scan_string_sq=(value : UInt32)
      to_unsafe.value.scan_string_sq = UInt32.new(value)
    end

    def scan_string_dq
      (to_unsafe.value.scan_string_dq)
    end

    def scan_string_dq=(value : UInt32)
      to_unsafe.value.scan_string_dq = UInt32.new(value)
    end

    def numbers_2_int
      (to_unsafe.value.numbers_2_int)
    end

    def numbers_2_int=(value : UInt32)
      to_unsafe.value.numbers_2_int = UInt32.new(value)
    end

    def int_2_float
      (to_unsafe.value.int_2_float)
    end

    def int_2_float=(value : UInt32)
      to_unsafe.value.int_2_float = UInt32.new(value)
    end

    def identifier_2_string
      (to_unsafe.value.identifier_2_string)
    end

    def identifier_2_string=(value : UInt32)
      to_unsafe.value.identifier_2_string = UInt32.new(value)
    end

    def char_2_token
      (to_unsafe.value.char_2_token)
    end

    def char_2_token=(value : UInt32)
      to_unsafe.value.char_2_token = UInt32.new(value)
    end

    def symbol_2_token
      (to_unsafe.value.symbol_2_token)
    end

    def symbol_2_token=(value : UInt32)
      to_unsafe.value.symbol_2_token = UInt32.new(value)
    end

    def scope_0_fallback
      (to_unsafe.value.scope_0_fallback)
    end

    def scope_0_fallback=(value : UInt32)
      to_unsafe.value.scope_0_fallback = UInt32.new(value)
    end

    def store_int64
      (to_unsafe.value.store_int64)
    end

    def store_int64=(value : UInt32)
      to_unsafe.value.store_int64 = UInt32.new(value)
    end

    def padding_dummy
      (to_unsafe.value.padding_dummy)
    end

  end
end

