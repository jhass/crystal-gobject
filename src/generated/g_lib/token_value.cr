module GLib
  class TokenValue
    include GObject::WrappedType

    @g_lib_token_value : LibGLib::TokenValue*?
    def initialize(@g_lib_token_value : LibGLib::TokenValue*)
    end

    def to_unsafe
      @g_lib_token_value.not_nil!.as(Void*)
    end

  end
end

