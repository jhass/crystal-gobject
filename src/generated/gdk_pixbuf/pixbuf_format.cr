module GdkPixbuf
  class PixbufFormat
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGdkPixbuf::PixbufFormat*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGdkPixbuf::PixbufFormat*)
    end

    def copy
      __return_value = LibGdkPixbuf.pixbuf_format_copy(@pointer.as(LibGdkPixbuf::PixbufFormat*))
      GdkPixbuf::PixbufFormat.new(__return_value)
    end

    def free
      LibGdkPixbuf.pixbuf_format_free(@pointer.as(LibGdkPixbuf::PixbufFormat*))
      nil
    end

    def description
      __return_value = LibGdkPixbuf.pixbuf_format_get_description(@pointer.as(LibGdkPixbuf::PixbufFormat*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def extensions
      __return_value = LibGdkPixbuf.pixbuf_format_get_extensions(@pointer.as(LibGdkPixbuf::PixbufFormat*))
      PointerIterator.new(__return_value) {|__item| (raise "Expected string but got null" unless __item; ::String.new(__item)) }
    end

    def license
      __return_value = LibGdkPixbuf.pixbuf_format_get_license(@pointer.as(LibGdkPixbuf::PixbufFormat*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def mime_types
      __return_value = LibGdkPixbuf.pixbuf_format_get_mime_types(@pointer.as(LibGdkPixbuf::PixbufFormat*))
      PointerIterator.new(__return_value) {|__item| (raise "Expected string but got null" unless __item; ::String.new(__item)) }
    end

    def name
      __return_value = LibGdkPixbuf.pixbuf_format_get_name(@pointer.as(LibGdkPixbuf::PixbufFormat*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def disabled?
      __return_value = LibGdkPixbuf.pixbuf_format_is_disabled(@pointer.as(LibGdkPixbuf::PixbufFormat*))
      __return_value
    end

    def save_option_supported?(option_key)
      __return_value = LibGdkPixbuf.pixbuf_format_is_save_option_supported(@pointer.as(LibGdkPixbuf::PixbufFormat*), option_key.to_unsafe)
      __return_value
    end

    def scalable?
      __return_value = LibGdkPixbuf.pixbuf_format_is_scalable(@pointer.as(LibGdkPixbuf::PixbufFormat*))
      __return_value
    end

    def writable?
      __return_value = LibGdkPixbuf.pixbuf_format_is_writable(@pointer.as(LibGdkPixbuf::PixbufFormat*))
      __return_value
    end

    def disabled=(disabled)
      LibGdkPixbuf.pixbuf_format_set_disabled(@pointer.as(LibGdkPixbuf::PixbufFormat*), disabled)
      nil
    end

  end
end

