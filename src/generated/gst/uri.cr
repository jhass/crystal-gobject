module Gst
  class Uri
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGst::Uri*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGst::Uri*)
    end

    def self.new(scheme, userinfo, host, port, path, query, fragment) : self
      __return_value = LibGst.uri_new(scheme ? scheme.to_unsafe : nil, userinfo ? userinfo.to_unsafe : nil, host ? host.to_unsafe : nil, UInt32.new(port), path ? path.to_unsafe : nil, query ? query.to_unsafe : nil, fragment ? fragment.to_unsafe : nil)
      cast Gst::Uri.new(__return_value)
    end

    def append_path(relative_path)
      __return_value = LibGst.uri_append_path(@pointer.as(LibGst::Uri*), relative_path.to_unsafe)
      __return_value
    end

    def append_path_segment(path_segment)
      __return_value = LibGst.uri_append_path_segment(@pointer.as(LibGst::Uri*), path_segment.to_unsafe)
      __return_value
    end

    def equal(second)
      __return_value = LibGst.uri_equal(@pointer.as(LibGst::Uri*), second.to_unsafe.as(LibGst::Uri*))
      __return_value
    end

    def from_string_with_base(uri)
      __return_value = LibGst.uri_from_string_with_base(@pointer.as(LibGst::Uri*), uri.to_unsafe)
      Gst::Uri.new(__return_value)
    end

    def fragment
      __return_value = LibGst.uri_get_fragment(@pointer.as(LibGst::Uri*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value)) if __return_value
    end

    def host
      __return_value = LibGst.uri_get_host(@pointer.as(LibGst::Uri*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value)) if __return_value
    end

    def media_fragment_table
      __return_value = LibGst.uri_get_media_fragment_table(@pointer.as(LibGst::Uri*))
      __return_value if __return_value
    end

    def path
      __return_value = LibGst.uri_get_path(@pointer.as(LibGst::Uri*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def path_segments
      __return_value = LibGst.uri_get_path_segments(@pointer.as(LibGst::Uri*))
      GLib::ListIterator(String, UInt8**).new(GLib::SList.new(__return_value.as(LibGLib::List*)))
    end

    def path_string
      __return_value = LibGst.uri_get_path_string(@pointer.as(LibGst::Uri*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value)) if __return_value
    end

    def port
      __return_value = LibGst.uri_get_port(@pointer.as(LibGst::Uri*))
      __return_value
    end

    def query_keys
      __return_value = LibGst.uri_get_query_keys(@pointer.as(LibGst::Uri*))
      GLib::ListIterator(String, UInt8**).new(GLib::SList.new(__return_value.as(LibGLib::List*)))
    end

    def query_string
      __return_value = LibGst.uri_get_query_string(@pointer.as(LibGst::Uri*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value)) if __return_value
    end

    def query_table
      __return_value = LibGst.uri_get_query_table(@pointer.as(LibGst::Uri*))
      __return_value if __return_value
    end

    def query_value(query_key)
      __return_value = LibGst.uri_get_query_value(@pointer.as(LibGst::Uri*), query_key.to_unsafe)
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value)) if __return_value
    end

    def scheme
      __return_value = LibGst.uri_get_scheme(@pointer.as(LibGst::Uri*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value)) if __return_value
    end

    def userinfo
      __return_value = LibGst.uri_get_userinfo(@pointer.as(LibGst::Uri*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value)) if __return_value
    end

    def normalized?
      __return_value = LibGst.uri_is_normalized(@pointer.as(LibGst::Uri*))
      __return_value
    end

    def writable?
      __return_value = LibGst.uri_is_writable(@pointer.as(LibGst::Uri*))
      __return_value
    end

    def join(ref_uri)
      __return_value = LibGst.uri_join(@pointer.as(LibGst::Uri*), ref_uri ? ref_uri.to_unsafe.as(LibGst::Uri*) : nil)
      Gst::Uri.new(__return_value) if __return_value
    end

    def make_writable
      __return_value = LibGst.uri_make_writable(@pointer.as(LibGst::Uri*))
      Gst::Uri.new(__return_value)
    end

    def new_with_base(scheme, userinfo, host, port, path, query, fragment)
      __return_value = LibGst.uri_new_with_base(@pointer.as(LibGst::Uri*), scheme ? scheme.to_unsafe : nil, userinfo ? userinfo.to_unsafe : nil, host ? host.to_unsafe : nil, UInt32.new(port), path ? path.to_unsafe : nil, query ? query.to_unsafe : nil, fragment ? fragment.to_unsafe : nil)
      Gst::Uri.new(__return_value)
    end

    def normalize
      __return_value = LibGst.uri_normalize(@pointer.as(LibGst::Uri*))
      __return_value
    end

    def query_has_key(query_key)
      __return_value = LibGst.uri_query_has_key(@pointer.as(LibGst::Uri*), query_key.to_unsafe)
      __return_value
    end

    def remove_query_key(query_key)
      __return_value = LibGst.uri_remove_query_key(@pointer.as(LibGst::Uri*), query_key.to_unsafe)
      __return_value
    end

    def fragment=(fragment)
      __return_value = LibGst.uri_set_fragment(@pointer.as(LibGst::Uri*), fragment ? fragment.to_unsafe : nil)
      __return_value
    end

    def host=(host)
      __return_value = LibGst.uri_set_host(@pointer.as(LibGst::Uri*), host.to_unsafe)
      __return_value
    end

    def path=(path)
      __return_value = LibGst.uri_set_path(@pointer.as(LibGst::Uri*), path.to_unsafe)
      __return_value
    end

    def path_segments=(path_segments)
      __return_value = LibGst.uri_set_path_segments(@pointer.as(LibGst::Uri*), path_segments ? path_segments : nil)
      __return_value
    end

    def path_string=(path)
      __return_value = LibGst.uri_set_path_string(@pointer.as(LibGst::Uri*), path.to_unsafe)
      __return_value
    end

    def port=(port)
      __return_value = LibGst.uri_set_port(@pointer.as(LibGst::Uri*), UInt32.new(port))
      __return_value
    end

    def query_string=(query)
      __return_value = LibGst.uri_set_query_string(@pointer.as(LibGst::Uri*), query.to_unsafe)
      __return_value
    end

    def query_table=(query_table)
      __return_value = LibGst.uri_set_query_table(@pointer.as(LibGst::Uri*), query_table ? query_table : nil)
      __return_value
    end

    def set_query_value(query_key, query_value)
      __return_value = LibGst.uri_set_query_value(@pointer.as(LibGst::Uri*), query_key.to_unsafe, query_value ? query_value.to_unsafe : nil)
      __return_value
    end

    def scheme=(scheme)
      __return_value = LibGst.uri_set_scheme(@pointer.as(LibGst::Uri*), scheme.to_unsafe)
      __return_value
    end

    def userinfo=(userinfo)
      __return_value = LibGst.uri_set_userinfo(@pointer.as(LibGst::Uri*), userinfo.to_unsafe)
      __return_value
    end

    def to_string
      __return_value = LibGst.uri_to_string(@pointer.as(LibGst::Uri*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def self.construct(protocol, location)
      __return_value = LibGst.uri_construct(protocol.to_unsafe, location.to_unsafe)
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def self.from_string(uri)
      __return_value = LibGst.uri_from_string(uri.to_unsafe)
      Gst::Uri.new(__return_value) if __return_value
    end

    def self.location(uri)
      __return_value = LibGst.uri_get_location(uri.to_unsafe)
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value)) if __return_value
    end

    def self.protocol(uri)
      __return_value = LibGst.uri_get_protocol(uri.to_unsafe)
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value)) if __return_value
    end

    def self.has_protocol(uri, protocol)
      __return_value = LibGst.uri_has_protocol(uri.to_unsafe, protocol.to_unsafe)
      __return_value
    end

    def self.valid?(uri)
      __return_value = LibGst.uri_is_valid(uri.to_unsafe)
      __return_value
    end

    def self.join_strings(base_uri, ref_uri)
      __return_value = LibGst.uri_join_strings(base_uri.to_unsafe, ref_uri.to_unsafe)
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def self.protocol_is_supported(type : Gst::URIType, protocol)
      __return_value = LibGst.uri_protocol_is_supported(type, protocol.to_unsafe)
      __return_value
    end

    def self.protocol_is_valid(protocol)
      __return_value = LibGst.uri_protocol_is_valid(protocol.to_unsafe)
      __return_value
    end

  end
end

