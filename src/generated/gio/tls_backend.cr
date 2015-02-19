module Gio
  module TlsBackend
    def self.default
      __return_value = LibGio.tls_backend_get_default
      __return_value
    end

    def certificate_type
      __return_value = LibGio.tls_backend_get_certificate_type((to_unsafe as LibGio::TlsBackend*))
      __return_value
    end

    def client_connection_type
      __return_value = LibGio.tls_backend_get_client_connection_type((to_unsafe as LibGio::TlsBackend*))
      __return_value
    end

    def default_database
      __return_value = LibGio.tls_backend_get_default_database((to_unsafe as LibGio::TlsBackend*))
      Gio::TlsDatabase.new(__return_value)
    end

    def file_database_type
      __return_value = LibGio.tls_backend_get_file_database_type((to_unsafe as LibGio::TlsBackend*))
      __return_value
    end

    def server_connection_type
      __return_value = LibGio.tls_backend_get_server_connection_type((to_unsafe as LibGio::TlsBackend*))
      __return_value
    end

    def supports_tls
      __return_value = LibGio.tls_backend_supports_tls((to_unsafe as LibGio::TlsBackend*))
      __return_value
    end

  end
end

