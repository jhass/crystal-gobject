module GdkPixbuf
  class PixbufFormat
    include GObject::WrappedType

    def initialize @gdk_pixbuf_pixbuf_format
    end

    def to_unsafe
      @gdk_pixbuf_pixbuf_format.not_nil!
    end

    def copy
      __return_value = LibGdkPixbuf.pixbuf_format_copy((to_unsafe as LibGdkPixbuf::PixbufFormat*))
      GdkPixbuf::PixbufFormat.new(__return_value)
    end

    def free
      __return_value = LibGdkPixbuf.pixbuf_format_free((to_unsafe as LibGdkPixbuf::PixbufFormat*))
      __return_value
    end

    def description
      __return_value = LibGdkPixbuf.pixbuf_format_get_description((to_unsafe as LibGdkPixbuf::PixbufFormat*))
      raise "Expected string but got null" unless __return_value; String.new(__return_value)
    end

    def extensions
      __return_value = LibGdkPixbuf.pixbuf_format_get_extensions((to_unsafe as LibGdkPixbuf::PixbufFormat*))
      PointerIterator.new(__return_value) {|__item_56| raise "Expected string but got null" unless __item_56; String.new(__item_56) }
    end

    def license
      __return_value = LibGdkPixbuf.pixbuf_format_get_license((to_unsafe as LibGdkPixbuf::PixbufFormat*))
      raise "Expected string but got null" unless __return_value; String.new(__return_value)
    end

    def mime_types
      __return_value = LibGdkPixbuf.pixbuf_format_get_mime_types((to_unsafe as LibGdkPixbuf::PixbufFormat*))
      PointerIterator.new(__return_value) {|__item_14| raise "Expected string but got null" unless __item_14; String.new(__item_14) }
    end

    def name
      __return_value = LibGdkPixbuf.pixbuf_format_get_name((to_unsafe as LibGdkPixbuf::PixbufFormat*))
      raise "Expected string but got null" unless __return_value; String.new(__return_value)
    end

    def is_disabled
      __return_value = LibGdkPixbuf.pixbuf_format_is_disabled((to_unsafe as LibGdkPixbuf::PixbufFormat*))
      __return_value
    end

    def is_scalable
      __return_value = LibGdkPixbuf.pixbuf_format_is_scalable((to_unsafe as LibGdkPixbuf::PixbufFormat*))
      __return_value
    end

    def is_writable
      __return_value = LibGdkPixbuf.pixbuf_format_is_writable((to_unsafe as LibGdkPixbuf::PixbufFormat*))
      __return_value
    end

    def disabled=(disabled)
      __return_value = LibGdkPixbuf.pixbuf_format_set_disabled((to_unsafe as LibGdkPixbuf::PixbufFormat*), Bool.new(disabled))
      __return_value
    end

  end
end

