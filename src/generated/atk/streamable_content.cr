module Atk
  module StreamableContent
    def mime_type(i)
      __return_value = LibAtk.streamable_content_get_mime_type((to_unsafe as LibAtk::StreamableContent*), Int32.new(i))
      raise "Expected string but got null" unless __return_value; String.new(__return_value)
    end

    def n_mime_types
      __return_value = LibAtk.streamable_content_get_n_mime_types((to_unsafe as LibAtk::StreamableContent*))
      __return_value
    end

    def stream(mime_type)
      __return_value = LibAtk.streamable_content_get_stream((to_unsafe as LibAtk::StreamableContent*), mime_type)
      GLib::IOChannel.new(__return_value)
    end

    def uri(mime_type)
      __return_value = LibAtk.streamable_content_get_uri((to_unsafe as LibAtk::StreamableContent*), mime_type)
      raise "Expected string but got null" unless __return_value; String.new(__return_value) if __return_value
    end

  end
end

