module Gst
  module URIHandler
    def protocols
      __return_value = LibGst.u_r_i_handler_get_protocols(to_unsafe.as(LibGst::URIHandler*))
      PointerIterator.new(__return_value) {|__item| (raise "Expected string but got null" unless __item; ::String.new(__item)) } if __return_value
    end

    def uri
      __return_value = LibGst.u_r_i_handler_get_uri(to_unsafe.as(LibGst::URIHandler*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value)) if __return_value
    end

    def uri_type
      __return_value = LibGst.u_r_i_handler_get_uri_type(to_unsafe.as(LibGst::URIHandler*))
      __return_value
    end

    def set_uri(uri)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGst.u_r_i_handler_set_uri(to_unsafe.as(LibGst::URIHandler*), uri, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

  end
end

