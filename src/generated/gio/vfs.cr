module Gio
  class Vfs < GObject::Object
    @gio_vfs : LibGio::Vfs*?
    def initialize(@gio_vfs : LibGio::Vfs*)
    end

    def to_unsafe
      @gio_vfs.not_nil!
    end

    def self.default
      __return_value = LibGio.vfs_get_default
      Gio::Vfs.new(__return_value)
    end

    def self.local
      __return_value = LibGio.vfs_get_local
      Gio::Vfs.new(__return_value)
    end

    def file_for_path(path)
      __return_value = LibGio.vfs_get_file_for_path(to_unsafe.as(LibGio::Vfs*), path.to_unsafe)
      __return_value
    end

    def file_for_uri(uri)
      __return_value = LibGio.vfs_get_file_for_uri(to_unsafe.as(LibGio::Vfs*), uri.to_unsafe)
      __return_value
    end

    def supported_uri_schemes
      __return_value = LibGio.vfs_get_supported_uri_schemes(to_unsafe.as(LibGio::Vfs*))
      PointerIterator.new(__return_value) {|__item| (raise "Expected string but got null" unless __item; ::String.new(__item)) }
    end

    def active?
      __return_value = LibGio.vfs_is_active(to_unsafe.as(LibGio::Vfs*))
      __return_value
    end

    def parse_name(parse_name)
      __return_value = LibGio.vfs_parse_name(to_unsafe.as(LibGio::Vfs*), parse_name.to_unsafe)
      __return_value
    end

    def register_uri_scheme(scheme, uri_func, uri_data, uri_destroy, parse_name_func, parse_name_data, parse_name_destroy)
      __return_value = LibGio.vfs_register_uri_scheme(to_unsafe.as(LibGio::Vfs*), scheme.to_unsafe, uri_func ? uri_func : nil, uri_data ? uri_data : nil, uri_destroy ? uri_destroy : nil, parse_name_func ? parse_name_func : nil, parse_name_data ? parse_name_data : nil, parse_name_destroy ? parse_name_destroy : nil)
      __return_value
    end

    def unregister_uri_scheme(scheme)
      __return_value = LibGio.vfs_unregister_uri_scheme(to_unsafe.as(LibGio::Vfs*), scheme.to_unsafe)
      __return_value
    end

  end
end

