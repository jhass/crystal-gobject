module GdkPixbuf
  class Pixbuf < GObject::Object
    def initialize @gdk_pixbuf_pixbuf
    end

    def to_unsafe
      @gdk_pixbuf_pixbuf.not_nil!
    end

    # Implements Icon
    # Implements LoadableIcon









    def self.new_internal(colorspace, has_alpha, bits_per_sample, width, height)
      __return_value = LibGdkPixbuf.pixbuf_new(colorspace, Bool.cast(has_alpha), Int32.cast(bits_per_sample), Int32.cast(width), Int32.cast(height))
      GdkPixbuf::Pixbuf.new(__return_value)
    end

    def self.new_from_bytes(data, colorspace, has_alpha, bits_per_sample, width, height, rowstride)
      __return_value = LibGdkPixbuf.pixbuf_new_from_bytes((data.to_unsafe as LibGLib::Bytes*), colorspace, Bool.cast(has_alpha), Int32.cast(bits_per_sample), Int32.cast(width), Int32.cast(height), Int32.cast(rowstride))
      GdkPixbuf::Pixbuf.new(__return_value)
    end

    def self.new_from_data(data, colorspace, has_alpha, bits_per_sample, width, height, rowstride, destroy_fn, destroy_fn_data)
      __return_value = LibGdkPixbuf.pixbuf_new_from_data(data, colorspace, Bool.cast(has_alpha), Int32.cast(bits_per_sample), Int32.cast(width), Int32.cast(height), Int32.cast(rowstride), destroy_fn, destroy_fn_data)
      GdkPixbuf::Pixbuf.new(__return_value)
    end

    def self.new_from_file(filename)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGdkPixbuf.pixbuf_new_from_file(filename, pointerof(__error))
      GLib::Error.assert __error
      GdkPixbuf::Pixbuf.new(__return_value)
    end

    def self.new_from_file_at_scale(filename, width, height, preserve_aspect_ratio)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGdkPixbuf.pixbuf_new_from_file_at_scale(filename, Int32.cast(width), Int32.cast(height), Bool.cast(preserve_aspect_ratio), pointerof(__error))
      GLib::Error.assert __error
      GdkPixbuf::Pixbuf.new(__return_value)
    end

    def self.new_from_file_at_size(filename, width, height)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGdkPixbuf.pixbuf_new_from_file_at_size(filename, Int32.cast(width), Int32.cast(height), pointerof(__error))
      GLib::Error.assert __error
      GdkPixbuf::Pixbuf.new(__return_value)
    end

    def self.new_from_inline(data_length, data, copy_pixels)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGdkPixbuf.pixbuf_new_from_inline(Int32.cast(data_length), data, Bool.cast(copy_pixels), pointerof(__error))
      GLib::Error.assert __error
      GdkPixbuf::Pixbuf.new(__return_value)
    end

    def self.new_from_resource(resource_path)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGdkPixbuf.pixbuf_new_from_resource(resource_path, pointerof(__error))
      GLib::Error.assert __error
      GdkPixbuf::Pixbuf.new(__return_value)
    end

    def self.new_from_resource_at_scale(resource_path, width, height, preserve_aspect_ratio)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGdkPixbuf.pixbuf_new_from_resource_at_scale(resource_path, Int32.cast(width), Int32.cast(height), Bool.cast(preserve_aspect_ratio), pointerof(__error))
      GLib::Error.assert __error
      GdkPixbuf::Pixbuf.new(__return_value)
    end

    def self.new_from_stream(stream, cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGdkPixbuf.pixbuf_new_from_stream((stream.to_unsafe as LibGio::InputStream*), (cancellable.to_unsafe as LibGio::Cancellable*), pointerof(__error))
      GLib::Error.assert __error
      GdkPixbuf::Pixbuf.new(__return_value)
    end

    def self.new_from_stream_at_scale(stream, width, height, preserve_aspect_ratio, cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGdkPixbuf.pixbuf_new_from_stream_at_scale((stream.to_unsafe as LibGio::InputStream*), Int32.cast(width), Int32.cast(height), Bool.cast(preserve_aspect_ratio), (cancellable.to_unsafe as LibGio::Cancellable*), pointerof(__error))
      GLib::Error.assert __error
      GdkPixbuf::Pixbuf.new(__return_value)
    end

    def self.new_from_stream_finish(async_result)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGdkPixbuf.pixbuf_new_from_stream_finish((async_result.to_unsafe as LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      GdkPixbuf::Pixbuf.new(__return_value)
    end

    def self.new_from_xpm_data(data)
      __return_value = LibGdkPixbuf.pixbuf_new_from_xpm_data(data)
      GdkPixbuf::Pixbuf.new(__return_value)
    end

    def self.from_pixdata(pixdata, copy_pixels)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGdkPixbuf.pixbuf_from_pixdata((pixdata.to_unsafe as LibGdkPixbuf::Pixdata*), Bool.cast(copy_pixels), pointerof(__error))
      GLib::Error.assert __error
      GdkPixbuf::Pixbuf.new(__return_value)
    end

    def self.file_info(filename, width, height)
      __return_value = LibGdkPixbuf.pixbuf_get_file_info(filename, Int32.cast(width), Int32.cast(height))
      GdkPixbuf::PixbufFormat.new(__return_value) if __return_value
    end

    def self.file_info_async(filename, cancellable, callback, user_data)
      __return_value = LibGdkPixbuf.pixbuf_get_file_info_async(filename, (cancellable.to_unsafe as LibGio::Cancellable*), callback, user_data)
      __return_value
    end

    def self.file_info_finish(async_result, width, height)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGdkPixbuf.pixbuf_get_file_info_finish((async_result.to_unsafe as LibGio::AsyncResult*), Int32.cast(width), Int32.cast(height), pointerof(__error))
      GLib::Error.assert __error
      GdkPixbuf::PixbufFormat.new(__return_value)
    end

    def self.formats
      __return_value = LibGdkPixbuf.pixbuf_get_formats
      __return_value
    end

    def self.gettext(msgid)
      __return_value = LibGdkPixbuf.pixbuf_gettext(msgid)
      raise "Expected string but got null" unless __return_value; String.new(__return_value)
    end

    def self.new_from_stream_async(stream, cancellable, callback, user_data)
      __return_value = LibGdkPixbuf.pixbuf_new_from_stream_async((stream.to_unsafe as LibGio::InputStream*), (cancellable.to_unsafe as LibGio::Cancellable*), callback, user_data)
      __return_value
    end

    def self.new_from_stream_at_scale_async(stream, width, height, preserve_aspect_ratio, cancellable, callback, user_data)
      __return_value = LibGdkPixbuf.pixbuf_new_from_stream_at_scale_async((stream.to_unsafe as LibGio::InputStream*), Int32.cast(width), Int32.cast(height), Bool.cast(preserve_aspect_ratio), (cancellable.to_unsafe as LibGio::Cancellable*), callback, user_data)
      __return_value
    end

    def self.save_to_stream_finish(async_result)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGdkPixbuf.pixbuf_save_to_stream_finish((async_result.to_unsafe as LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def add_alpha(substitute_color, r, g, b)
      __return_value = LibGdkPixbuf.pixbuf_add_alpha((to_unsafe as LibGdkPixbuf::Pixbuf*), Bool.cast(substitute_color), UInt8.cast(r), UInt8.cast(g), UInt8.cast(b))
      GdkPixbuf::Pixbuf.new(__return_value)
    end

    def apply_embedded_orientation
      __return_value = LibGdkPixbuf.pixbuf_apply_embedded_orientation((to_unsafe as LibGdkPixbuf::Pixbuf*))
      GdkPixbuf::Pixbuf.new(__return_value)
    end

    def composite(dest, dest_x, dest_y, dest_width, dest_height, offset_x, offset_y, scale_x, scale_y, interp_type, overall_alpha)
      __return_value = LibGdkPixbuf.pixbuf_composite((to_unsafe as LibGdkPixbuf::Pixbuf*), (dest.to_unsafe as LibGdkPixbuf::Pixbuf*), Int32.cast(dest_x), Int32.cast(dest_y), Int32.cast(dest_width), Int32.cast(dest_height), Float64.cast(offset_x), Float64.cast(offset_y), Float64.cast(scale_x), Float64.cast(scale_y), interp_type, Int32.cast(overall_alpha))
      __return_value
    end

    def composite_color(dest, dest_x, dest_y, dest_width, dest_height, offset_x, offset_y, scale_x, scale_y, interp_type, overall_alpha, check_x, check_y, check_size, color1, color2)
      __return_value = LibGdkPixbuf.pixbuf_composite_color((to_unsafe as LibGdkPixbuf::Pixbuf*), (dest.to_unsafe as LibGdkPixbuf::Pixbuf*), Int32.cast(dest_x), Int32.cast(dest_y), Int32.cast(dest_width), Int32.cast(dest_height), Float64.cast(offset_x), Float64.cast(offset_y), Float64.cast(scale_x), Float64.cast(scale_y), interp_type, Int32.cast(overall_alpha), Int32.cast(check_x), Int32.cast(check_y), Int32.cast(check_size), UInt32.cast(color1), UInt32.cast(color2))
      __return_value
    end

    def composite_color_simple(dest_width, dest_height, interp_type, overall_alpha, check_size, color1, color2)
      __return_value = LibGdkPixbuf.pixbuf_composite_color_simple((to_unsafe as LibGdkPixbuf::Pixbuf*), Int32.cast(dest_width), Int32.cast(dest_height), interp_type, Int32.cast(overall_alpha), Int32.cast(check_size), UInt32.cast(color1), UInt32.cast(color2))
      GdkPixbuf::Pixbuf.new(__return_value)
    end

    def copy
      __return_value = LibGdkPixbuf.pixbuf_copy((to_unsafe as LibGdkPixbuf::Pixbuf*))
      GdkPixbuf::Pixbuf.new(__return_value)
    end

    def copy_area(src_x, src_y, width, height, dest_pixbuf, dest_x, dest_y)
      __return_value = LibGdkPixbuf.pixbuf_copy_area((to_unsafe as LibGdkPixbuf::Pixbuf*), Int32.cast(src_x), Int32.cast(src_y), Int32.cast(width), Int32.cast(height), (dest_pixbuf.to_unsafe as LibGdkPixbuf::Pixbuf*), Int32.cast(dest_x), Int32.cast(dest_y))
      __return_value
    end

    def fill(pixel)
      __return_value = LibGdkPixbuf.pixbuf_fill((to_unsafe as LibGdkPixbuf::Pixbuf*), UInt32.cast(pixel))
      __return_value
    end

    def flip(horizontal)
      __return_value = LibGdkPixbuf.pixbuf_flip((to_unsafe as LibGdkPixbuf::Pixbuf*), Bool.cast(horizontal))
      GdkPixbuf::Pixbuf.new(__return_value) if __return_value
    end

    def bits_per_sample
      __return_value = LibGdkPixbuf.pixbuf_get_bits_per_sample((to_unsafe as LibGdkPixbuf::Pixbuf*))
      __return_value
    end

    def byte_length
      __return_value = LibGdkPixbuf.pixbuf_get_byte_length((to_unsafe as LibGdkPixbuf::Pixbuf*))
      __return_value
    end

    def colorspace
      __return_value = LibGdkPixbuf.pixbuf_get_colorspace((to_unsafe as LibGdkPixbuf::Pixbuf*))
      __return_value
    end

    def has_alpha
      __return_value = LibGdkPixbuf.pixbuf_get_has_alpha((to_unsafe as LibGdkPixbuf::Pixbuf*))
      __return_value
    end

    def height
      __return_value = LibGdkPixbuf.pixbuf_get_height((to_unsafe as LibGdkPixbuf::Pixbuf*))
      __return_value
    end

    def n_channels
      __return_value = LibGdkPixbuf.pixbuf_get_n_channels((to_unsafe as LibGdkPixbuf::Pixbuf*))
      __return_value
    end

    def option(key)
      __return_value = LibGdkPixbuf.pixbuf_get_option((to_unsafe as LibGdkPixbuf::Pixbuf*), key)
      raise "Expected string but got null" unless __return_value; String.new(__return_value)
    end

    def pixels(length)
      __return_value = LibGdkPixbuf.pixbuf_get_pixels((to_unsafe as LibGdkPixbuf::Pixbuf*), UInt32.cast(length))
      PointerIterator.new(__return_value) {|__item_61| __item_61 }
    end

    def rowstride
      __return_value = LibGdkPixbuf.pixbuf_get_rowstride((to_unsafe as LibGdkPixbuf::Pixbuf*))
      __return_value
    end

    def width
      __return_value = LibGdkPixbuf.pixbuf_get_width((to_unsafe as LibGdkPixbuf::Pixbuf*))
      __return_value
    end

    def new_subpixbuf(src_x, src_y, width, height)
      __return_value = LibGdkPixbuf.pixbuf_new_subpixbuf((to_unsafe as LibGdkPixbuf::Pixbuf*), Int32.cast(src_x), Int32.cast(src_y), Int32.cast(width), Int32.cast(height))
      GdkPixbuf::Pixbuf.new(__return_value)
    end

    def read_pixel_bytes
      __return_value = LibGdkPixbuf.pixbuf_read_pixel_bytes((to_unsafe as LibGdkPixbuf::Pixbuf*))
      GLib::Bytes.new(__return_value)
    end

    def read_pixels
      __return_value = LibGdkPixbuf.pixbuf_read_pixels((to_unsafe as LibGdkPixbuf::Pixbuf*))
      __return_value
    end

    def rotate_simple(angle)
      __return_value = LibGdkPixbuf.pixbuf_rotate_simple((to_unsafe as LibGdkPixbuf::Pixbuf*), angle)
      GdkPixbuf::Pixbuf.new(__return_value) if __return_value
    end

    def saturate_and_pixelate(dest, saturation, pixelate)
      __return_value = LibGdkPixbuf.pixbuf_saturate_and_pixelate((to_unsafe as LibGdkPixbuf::Pixbuf*), (dest.to_unsafe as LibGdkPixbuf::Pixbuf*), Float32.cast(saturation), Bool.cast(pixelate))
      __return_value
    end

    def save_to_bufferv(buffer, buffer_size, type, option_keys, option_values)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGdkPixbuf.pixbuf_save_to_bufferv((to_unsafe as LibGdkPixbuf::Pixbuf*), buffer, UInt64.cast(buffer_size), type, option_keys, option_values, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def save_to_callbackv(save_func, user_data, type, option_keys, option_values)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGdkPixbuf.pixbuf_save_to_callbackv((to_unsafe as LibGdkPixbuf::Pixbuf*), save_func, user_data, type, option_keys, option_values, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def savev(filename, type, option_keys, option_values)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGdkPixbuf.pixbuf_savev((to_unsafe as LibGdkPixbuf::Pixbuf*), filename, type, option_keys, option_values, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def scale(dest, dest_x, dest_y, dest_width, dest_height, offset_x, offset_y, scale_x, scale_y, interp_type)
      __return_value = LibGdkPixbuf.pixbuf_scale((to_unsafe as LibGdkPixbuf::Pixbuf*), (dest.to_unsafe as LibGdkPixbuf::Pixbuf*), Int32.cast(dest_x), Int32.cast(dest_y), Int32.cast(dest_width), Int32.cast(dest_height), Float64.cast(offset_x), Float64.cast(offset_y), Float64.cast(scale_x), Float64.cast(scale_y), interp_type)
      __return_value
    end

    def scale_simple(dest_width, dest_height, interp_type)
      __return_value = LibGdkPixbuf.pixbuf_scale_simple((to_unsafe as LibGdkPixbuf::Pixbuf*), Int32.cast(dest_width), Int32.cast(dest_height), interp_type)
      GdkPixbuf::Pixbuf.new(__return_value)
    end

  end
end

