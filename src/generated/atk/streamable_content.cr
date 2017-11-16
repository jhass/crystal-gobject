module Atk
  module StreamableContent
    def mime_type(i)
      __return_value = LibAtk.streamable_content_get_mime_type(@pointer.as(LibAtk::StreamableContent*), Int32.new(i))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def n_mime_types
      __return_value = LibAtk.streamable_content_get_n_mime_types(@pointer.as(LibAtk::StreamableContent*))
      __return_value
    end

    def stream(mime_type)
      __return_value = LibAtk.streamable_content_get_stream(@pointer.as(LibAtk::StreamableContent*), mime_type.to_unsafe)
      GLib::IOChannel.new(__return_value)
    end

    def uri(mime_type)
      __return_value = LibAtk.streamable_content_get_uri(@pointer.as(LibAtk::StreamableContent*), mime_type.to_unsafe)
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value)) if __return_value
    end

  end
end

