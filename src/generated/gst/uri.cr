module Gst
  class Uri
    include GObject::WrappedType

    def initialize(@gst_uri)
    end

    def to_unsafe
      @gst_uri.not_nil!
    end

    def self.new_internal(scheme, userinfo, host, port, path, query, fragment)
      __return_value = LibGst.uri_new(scheme && scheme, userinfo && userinfo, host && host, UInt32.new(port), path && path, query && query, fragment && fragment)
      Gst::Uri.new(__return_value)
    end

    def append_path(relative_path)
      __return_value = LibGst.uri_append_path((to_unsafe as LibGst::Uri*), relative_path)
      __return_value
    end

    def append_path_segment(path_segment)
      __return_value = LibGst.uri_append_path_segment((to_unsafe as LibGst::Uri*), path_segment)
      __return_value
    end

    def equal(second)
      __return_value = LibGst.uri_equal((to_unsafe as LibGst::Uri*), (second.to_unsafe as LibGst::Uri*))
      __return_value
    end

    def from_string_with_base(uri)
      __return_value = LibGst.uri_from_string_with_base((to_unsafe as LibGst::Uri*), uri)
      Gst::Uri.new(__return_value)
    end

    def fragment
      __return_value = LibGst.uri_get_fragment((to_unsafe as LibGst::Uri*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def host
      __return_value = LibGst.uri_get_host((to_unsafe as LibGst::Uri*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def path
      __return_value = LibGst.uri_get_path((to_unsafe as LibGst::Uri*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def path_segments
      __return_value = LibGst.uri_get_path_segments((to_unsafe as LibGst::Uri*))
      __return_value
    end

    def path_string
      __return_value = LibGst.uri_get_path_string((to_unsafe as LibGst::Uri*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def port
      __return_value = LibGst.uri_get_port((to_unsafe as LibGst::Uri*))
      __return_value
    end

    def query_keys
      __return_value = LibGst.uri_get_query_keys((to_unsafe as LibGst::Uri*))
      __return_value
    end

    def query_string
      __return_value = LibGst.uri_get_query_string((to_unsafe as LibGst::Uri*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def query_table
      __return_value = LibGst.uri_get_query_table((to_unsafe as LibGst::Uri*))
      __return_value
    end

    def query_value(query_key)
      __return_value = LibGst.uri_get_query_value((to_unsafe as LibGst::Uri*), query_key)
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def scheme
      __return_value = LibGst.uri_get_scheme((to_unsafe as LibGst::Uri*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def userinfo
      __return_value = LibGst.uri_get_userinfo((to_unsafe as LibGst::Uri*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def normalized?
      __return_value = LibGst.uri_is_normalized((to_unsafe as LibGst::Uri*))
      __return_value
    end

    def writable?
      __return_value = LibGst.uri_is_writable((to_unsafe as LibGst::Uri*))
      __return_value
    end

    def join(ref_uri)
      __return_value = LibGst.uri_join((to_unsafe as LibGst::Uri*), ref_uri && (ref_uri.to_unsafe as LibGst::Uri*))
      Gst::Uri.new(__return_value)
    end

    def make_writable
      __return_value = LibGst.uri_make_writable((to_unsafe as LibGst::Uri*))
      Gst::Uri.new(__return_value)
    end

    def new_with_base(scheme, userinfo, host, port, path, query, fragment)
      __return_value = LibGst.uri_new_with_base((to_unsafe as LibGst::Uri*), scheme && scheme, userinfo && userinfo, host && host, UInt32.new(port), path && path, query && query, fragment && fragment)
      Gst::Uri.new(__return_value)
    end

    def normalize
      __return_value = LibGst.uri_normalize((to_unsafe as LibGst::Uri*))
      __return_value
    end

    def query_has_key(query_key)
      __return_value = LibGst.uri_query_has_key((to_unsafe as LibGst::Uri*), query_key)
      __return_value
    end

    def remove_query_key(query_key)
      __return_value = LibGst.uri_remove_query_key((to_unsafe as LibGst::Uri*), query_key)
      __return_value
    end

    def fragment=(fragment)
      __return_value = LibGst.uri_set_fragment((to_unsafe as LibGst::Uri*), fragment && fragment)
      __return_value
    end

    def host=(host)
      __return_value = LibGst.uri_set_host((to_unsafe as LibGst::Uri*), host)
      __return_value
    end

    def path=(path)
      __return_value = LibGst.uri_set_path((to_unsafe as LibGst::Uri*), path)
      __return_value
    end

    def path_segments=(path_segments)
      __return_value = LibGst.uri_set_path_segments((to_unsafe as LibGst::Uri*), path_segments && path_segments)
      __return_value
    end

    def path_string=(path)
      __return_value = LibGst.uri_set_path_string((to_unsafe as LibGst::Uri*), path)
      __return_value
    end

    def port=(port)
      __return_value = LibGst.uri_set_port((to_unsafe as LibGst::Uri*), UInt32.new(port))
      __return_value
    end

    def query_string=(query)
      __return_value = LibGst.uri_set_query_string((to_unsafe as LibGst::Uri*), query)
      __return_value
    end

    def query_table=(query_table)
      __return_value = LibGst.uri_set_query_table((to_unsafe as LibGst::Uri*), query_table && query_table)
      __return_value
    end

    def set_query_value(query_key, query_value)
      __return_value = LibGst.uri_set_query_value((to_unsafe as LibGst::Uri*), query_key, query_value && query_value)
      __return_value
    end

    def scheme=(scheme)
      __return_value = LibGst.uri_set_scheme((to_unsafe as LibGst::Uri*), scheme)
      __return_value
    end

    def userinfo=(userinfo)
      __return_value = LibGst.uri_set_userinfo((to_unsafe as LibGst::Uri*), userinfo)
      __return_value
    end

    def to_string
      __return_value = LibGst.uri_to_string((to_unsafe as LibGst::Uri*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def self.construct(protocol, location)
      __return_value = LibGst.uri_construct(protocol, location)
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def self.from_string(uri)
      __return_value = LibGst.uri_from_string(uri)
      Gst::Uri.new(__return_value) if __return_value
    end

    def self.location(uri)
      __return_value = LibGst.uri_get_location(uri)
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def self.protocol(uri)
      __return_value = LibGst.uri_get_protocol(uri)
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def self.has_protocol(uri, protocol)
      __return_value = LibGst.uri_has_protocol(uri, protocol)
      __return_value
    end

    def self.valid?(uri)
      __return_value = LibGst.uri_is_valid(uri)
      __return_value
    end

    def self.join_strings(base_uri, ref_uri)
      __return_value = LibGst.uri_join_strings(base_uri, ref_uri)
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def self.protocol_is_supported(type, protocol)
      __return_value = LibGst.uri_protocol_is_supported(type, protocol)
      __return_value
    end

    def self.protocol_is_valid(protocol)
      __return_value = LibGst.uri_protocol_is_valid(protocol)
      __return_value
    end

  end
end

