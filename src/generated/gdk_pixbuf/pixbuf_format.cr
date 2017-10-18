module GdkPixbuf
  class PixbufFormat
    include GObject::WrappedType

    @gdk_pixbuf_pixbuf_format : LibGdkPixbuf::PixbufFormat*?
    def initialize(@gdk_pixbuf_pixbuf_format : LibGdkPixbuf::PixbufFormat*)
    end

    def to_unsafe
      @gdk_pixbuf_pixbuf_format.not_nil!
    end

    def copy
      __return_value = LibGdkPixbuf.pixbuf_format_copy(to_unsafe.as(LibGdkPixbuf::PixbufFormat*))
      GdkPixbuf::PixbufFormat.new(__return_value)
    end

    def free
      LibGdkPixbuf.pixbuf_format_free(to_unsafe.as(LibGdkPixbuf::PixbufFormat*))
      nil
    end

    def description
      __return_value = LibGdkPixbuf.pixbuf_format_get_description(to_unsafe.as(LibGdkPixbuf::PixbufFormat*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def extensions
      __return_value = LibGdkPixbuf.pixbuf_format_get_extensions(to_unsafe.as(LibGdkPixbuf::PixbufFormat*))
      PointerIterator.new(__return_value) {|__item| (raise "Expected string but got null" unless __item; ::String.new(__item)) }
    end

    def license
      __return_value = LibGdkPixbuf.pixbuf_format_get_license(to_unsafe.as(LibGdkPixbuf::PixbufFormat*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def mime_types
      __return_value = LibGdkPixbuf.pixbuf_format_get_mime_types(to_unsafe.as(LibGdkPixbuf::PixbufFormat*))
      PointerIterator.new(__return_value) {|__item| (raise "Expected string but got null" unless __item; ::String.new(__item)) }
    end

    def name
      __return_value = LibGdkPixbuf.pixbuf_format_get_name(to_unsafe.as(LibGdkPixbuf::PixbufFormat*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def disabled?
      __return_value = LibGdkPixbuf.pixbuf_format_is_disabled(to_unsafe.as(LibGdkPixbuf::PixbufFormat*))
      __return_value
    end

    def save_option_supported?(option_key)
      __return_value = LibGdkPixbuf.pixbuf_format_is_save_option_supported(to_unsafe.as(LibGdkPixbuf::PixbufFormat*), option_key.to_unsafe)
      __return_value
    end

    def scalable?
      __return_value = LibGdkPixbuf.pixbuf_format_is_scalable(to_unsafe.as(LibGdkPixbuf::PixbufFormat*))
      __return_value
    end

    def writable?
      __return_value = LibGdkPixbuf.pixbuf_format_is_writable(to_unsafe.as(LibGdkPixbuf::PixbufFormat*))
      __return_value
    end

    def disabled=(disabled)
      LibGdkPixbuf.pixbuf_format_set_disabled(to_unsafe.as(LibGdkPixbuf::PixbufFormat*), disabled)
      nil
    end

  end
end

