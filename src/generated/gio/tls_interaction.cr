module Gio
  class TlsInteraction < GObject::Object
    def initialize(@gio_tls_interaction)
    end

    def to_unsafe
      @gio_tls_interaction.not_nil!
    end

    def ask_password(password, cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.tls_interaction_ask_password((to_unsafe as LibGio::TlsInteraction*), (password.to_unsafe as LibGio::TlsPassword*), cancellable && (cancellable.to_unsafe as LibGio::Cancellable*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def ask_password_async(password, cancellable, callback : LibGio::AsyncReadyCallback?, user_data)
      __return_value = LibGio.tls_interaction_ask_password_async((to_unsafe as LibGio::TlsInteraction*), (password.to_unsafe as LibGio::TlsPassword*), cancellable && (cancellable.to_unsafe as LibGio::Cancellable*), callback && callback, user_data && user_data)
      __return_value
    end

    def ask_password_finish(result)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.tls_interaction_ask_password_finish((to_unsafe as LibGio::TlsInteraction*), (result.to_unsafe as LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def invoke_ask_password(password, cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.tls_interaction_invoke_ask_password((to_unsafe as LibGio::TlsInteraction*), (password.to_unsafe as LibGio::TlsPassword*), cancellable && (cancellable.to_unsafe as LibGio::Cancellable*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def invoke_request_certificate(connection, flags, cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.tls_interaction_invoke_request_certificate((to_unsafe as LibGio::TlsInteraction*), (connection.to_unsafe as LibGio::TlsConnection*), flags, cancellable && (cancellable.to_unsafe as LibGio::Cancellable*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def request_certificate(connection, flags, cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.tls_interaction_request_certificate((to_unsafe as LibGio::TlsInteraction*), (connection.to_unsafe as LibGio::TlsConnection*), flags, cancellable && (cancellable.to_unsafe as LibGio::Cancellable*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def request_certificate_async(connection, flags, cancellable, callback : LibGio::AsyncReadyCallback?, user_data)
      __return_value = LibGio.tls_interaction_request_certificate_async((to_unsafe as LibGio::TlsInteraction*), (connection.to_unsafe as LibGio::TlsConnection*), flags, cancellable && (cancellable.to_unsafe as LibGio::Cancellable*), callback && callback, user_data && user_data)
      __return_value
    end

    def request_certificate_finish(result)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.tls_interaction_request_certificate_finish((to_unsafe as LibGio::TlsInteraction*), (result.to_unsafe as LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

  end
end

