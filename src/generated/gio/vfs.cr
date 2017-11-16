module Gio
  class Vfs < GObject::Object
    @pointer : Void*
    def initialize(pointer : LibGio::Vfs*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::Vfs*)
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
      __return_value = LibGio.vfs_get_file_for_path(@pointer.as(LibGio::Vfs*), path.to_unsafe)
      __return_value
    end

    def file_for_uri(uri)
      __return_value = LibGio.vfs_get_file_for_uri(@pointer.as(LibGio::Vfs*), uri.to_unsafe)
      __return_value
    end

    def supported_uri_schemes
      __return_value = LibGio.vfs_get_supported_uri_schemes(@pointer.as(LibGio::Vfs*))
      PointerIterator.new(__return_value) {|__item| (raise "Expected string but got null" unless __item; ::String.new(__item)) }
    end

    def active?
      __return_value = LibGio.vfs_is_active(@pointer.as(LibGio::Vfs*))
      __return_value
    end

    def parse_name(parse_name)
      __return_value = LibGio.vfs_parse_name(@pointer.as(LibGio::Vfs*), parse_name.to_unsafe)
      __return_value
    end

    def register_uri_scheme(scheme, uri_func, uri_data, uri_destroy, parse_name_func, parse_name_data, parse_name_destroy)
      __return_value = LibGio.vfs_register_uri_scheme(@pointer.as(LibGio::Vfs*), scheme.to_unsafe, uri_func ? uri_func : nil, uri_data ? uri_data : nil, uri_destroy ? uri_destroy : nil, parse_name_func ? parse_name_func : nil, parse_name_data ? parse_name_data : nil, parse_name_destroy ? parse_name_destroy : nil)
      __return_value
    end

    def unregister_uri_scheme(scheme)
      __return_value = LibGio.vfs_unregister_uri_scheme(@pointer.as(LibGio::Vfs*), scheme.to_unsafe)
      __return_value
    end

  end
end

