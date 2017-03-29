module GLib
  class TokenValue
    include GObject::WrappedType

    def v_symbol
      (to_unsafe.as(LibGLib::TokenValue*).value.v_symbol)
    end

    def v_identifier
      (raise "Expected string but got null" unless (to_unsafe.as(LibGLib::TokenValue*).value.v_identifier); ::String.new((to_unsafe.as(LibGLib::TokenValue*).value.v_identifier)))
    end

    def v_binary
      (to_unsafe.as(LibGLib::TokenValue*).value.v_binary)
    end

    def v_octal
      (to_unsafe.as(LibGLib::TokenValue*).value.v_octal)
    end

    def v_int
      (to_unsafe.as(LibGLib::TokenValue*).value.v_int)
    end

    def v_int64
      (to_unsafe.as(LibGLib::TokenValue*).value.v_int64)
    end

    def v_float
      (to_unsafe.as(LibGLib::TokenValue*).value.v_float)
    end

    def v_hex
      (to_unsafe.as(LibGLib::TokenValue*).value.v_hex)
    end

    def v_string
      (raise "Expected string but got null" unless (to_unsafe.as(LibGLib::TokenValue*).value.v_string); ::String.new((to_unsafe.as(LibGLib::TokenValue*).value.v_string)))
    end

    def v_comment
      (raise "Expected string but got null" unless (to_unsafe.as(LibGLib::TokenValue*).value.v_comment); ::String.new((to_unsafe.as(LibGLib::TokenValue*).value.v_comment)))
    end

    def v_char
      (to_unsafe.as(LibGLib::TokenValue*).value.v_char)
    end

    def v_error
      (to_unsafe.as(LibGLib::TokenValue*).value.v_error)
    end

    @g_lib_token_value : LibGLib::TokenValue*?
    def initialize(@g_lib_token_value : LibGLib::TokenValue*)
    end

    def to_unsafe
      @g_lib_token_value.not_nil!
    end

  end
end

