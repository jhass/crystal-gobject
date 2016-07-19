module GdkPixbuf
  class Pixbuf < GObject::Object
    @gdk_pixbuf_pixbuf : LibGdkPixbuf::Pixbuf*?
    def initialize(@gdk_pixbuf_pixbuf : LibGdkPixbuf::Pixbuf*)
    end

    def to_unsafe
      @gdk_pixbuf_pixbuf.not_nil!.as(Void*)
    end

    # Implements Icon
    # Implements LoadableIcon









    def self.new(colorspace : GdkPixbuf::Colorspace, has_alpha, bits_per_sample, width, height) : self
      __return_value = LibGdkPixbuf.pixbuf_new(colorspace, has_alpha, Int32.new(bits_per_sample), Int32.new(width), Int32.new(height))
      cast GdkPixbuf::Pixbuf.new(__return_value)
    end

    def self.new_from_bytes(data, colorspace : GdkPixbuf::Colorspace, has_alpha, bits_per_sample, width, height, rowstride) : self
      __return_value = LibGdkPixbuf.pixbuf_new_from_bytes(data.to_unsafe.as(LibGLib::Bytes*), colorspace, has_alpha, Int32.new(bits_per_sample), Int32.new(width), Int32.new(height), Int32.new(rowstride))
      cast GdkPixbuf::Pixbuf.new(__return_value)
    end

    def self.new_from_data(data, colorspace : GdkPixbuf::Colorspace, has_alpha, bits_per_sample, width, height, rowstride, destroy_fn, destroy_fn_data) : self
      __return_value = LibGdkPixbuf.pixbuf_new_from_data(data, colorspace, has_alpha, Int32.new(bits_per_sample), Int32.new(width), Int32.new(height), Int32.new(rowstride), destroy_fn && destroy_fn, destroy_fn_data && destroy_fn_data)
      cast GdkPixbuf::Pixbuf.new(__return_value)
    end

    def self.new_from_file(filename) : self
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGdkPixbuf.pixbuf_new_from_file(filename.to_unsafe, pointerof(__error))
      GLib::Error.assert __error
      cast GdkPixbuf::Pixbuf.new(__return_value)
    end

    def self.new_from_file_at_scale(filename, width, height, preserve_aspect_ratio) : self
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGdkPixbuf.pixbuf_new_from_file_at_scale(filename.to_unsafe, Int32.new(width), Int32.new(height), preserve_aspect_ratio, pointerof(__error))
      GLib::Error.assert __error
      cast GdkPixbuf::Pixbuf.new(__return_value)
    end

    def self.new_from_file_at_size(filename, width, height) : self
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGdkPixbuf.pixbuf_new_from_file_at_size(filename.to_unsafe, Int32.new(width), Int32.new(height), pointerof(__error))
      GLib::Error.assert __error
      cast GdkPixbuf::Pixbuf.new(__return_value)
    end

    def self.new_from_inline(data_length, data, copy_pixels) : self
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGdkPixbuf.pixbuf_new_from_inline(Int32.new(data_length), data, copy_pixels, pointerof(__error))
      GLib::Error.assert __error
      cast GdkPixbuf::Pixbuf.new(__return_value)
    end

    def self.new_from_resource(resource_path) : self
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGdkPixbuf.pixbuf_new_from_resource(resource_path.to_unsafe, pointerof(__error))
      GLib::Error.assert __error
      cast GdkPixbuf::Pixbuf.new(__return_value)
    end

    def self.new_from_resource_at_scale(resource_path, width, height, preserve_aspect_ratio) : self
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGdkPixbuf.pixbuf_new_from_resource_at_scale(resource_path.to_unsafe, Int32.new(width), Int32.new(height), preserve_aspect_ratio, pointerof(__error))
      GLib::Error.assert __error
      cast GdkPixbuf::Pixbuf.new(__return_value)
    end

    def self.new_from_stream(stream, cancellable) : self
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGdkPixbuf.pixbuf_new_from_stream(stream.to_unsafe.as(LibGio::InputStream*), cancellable && cancellable.to_unsafe.as(LibGio::Cancellable*), pointerof(__error))
      GLib::Error.assert __error
      cast GdkPixbuf::Pixbuf.new(__return_value)
    end

    def self.new_from_stream_at_scale(stream, width, height, preserve_aspect_ratio, cancellable) : self
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGdkPixbuf.pixbuf_new_from_stream_at_scale(stream.to_unsafe.as(LibGio::InputStream*), Int32.new(width), Int32.new(height), preserve_aspect_ratio, cancellable && cancellable.to_unsafe.as(LibGio::Cancellable*), pointerof(__error))
      GLib::Error.assert __error
      cast GdkPixbuf::Pixbuf.new(__return_value)
    end

    def self.new_from_stream_finish(async_result) : self
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGdkPixbuf.pixbuf_new_from_stream_finish(async_result.to_unsafe.as(LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      cast GdkPixbuf::Pixbuf.new(__return_value)
    end

    def self.new_from_xpm_data(data) : self
      __return_value = LibGdkPixbuf.pixbuf_new_from_xpm_data(data)
      cast GdkPixbuf::Pixbuf.new(__return_value)
    end

    def self.from_pixdata(pixdata, copy_pixels)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGdkPixbuf.pixbuf_from_pixdata(pixdata.to_unsafe.as(LibGdkPixbuf::Pixdata*), copy_pixels, pointerof(__error))
      GLib::Error.assert __error
      GdkPixbuf::Pixbuf.new(__return_value)
    end

    def self.file_info(filename, width, height)
      __return_value = LibGdkPixbuf.pixbuf_get_file_info(filename.to_unsafe, width, height)
      GdkPixbuf::PixbufFormat.new(__return_value) if __return_value
    end

    def self.file_info_async(filename, cancellable, callback, user_data)
      __return_value = LibGdkPixbuf.pixbuf_get_file_info_async(filename.to_unsafe, cancellable && cancellable.to_unsafe.as(LibGio::Cancellable*), callback && callback, user_data && user_data)
      __return_value
    end

    def self.file_info_finish(async_result, width, height)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGdkPixbuf.pixbuf_get_file_info_finish(async_result.to_unsafe.as(LibGio::AsyncResult*), width, height, pointerof(__error))
      GLib::Error.assert __error
      GdkPixbuf::PixbufFormat.new(__return_value)
    end

    def self.formats
      __return_value = LibGdkPixbuf.pixbuf_get_formats
      GLib::SListIterator(GdkPixbuf::PixbufFormat, LibGdkPixbuf::PixbufFormat*).new(GLib::SList.new(__return_value.as(LibGLib::SList*)))
    end

    def self.new_from_stream_async(stream, cancellable, callback, user_data)
      __return_value = LibGdkPixbuf.pixbuf_new_from_stream_async(stream.to_unsafe.as(LibGio::InputStream*), cancellable && cancellable.to_unsafe.as(LibGio::Cancellable*), callback && callback, user_data && user_data)
      __return_value
    end

    def self.new_from_stream_at_scale_async(stream, width, height, preserve_aspect_ratio, cancellable, callback, user_data)
      __return_value = LibGdkPixbuf.pixbuf_new_from_stream_at_scale_async(stream.to_unsafe.as(LibGio::InputStream*), Int32.new(width), Int32.new(height), preserve_aspect_ratio, cancellable && cancellable.to_unsafe.as(LibGio::Cancellable*), callback && callback, user_data && user_data)
      __return_value
    end

    def self.save_to_stream_finish(async_result)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGdkPixbuf.pixbuf_save_to_stream_finish(async_result.to_unsafe.as(LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def add_alpha(substitute_color, r, g, b)
      __return_value = LibGdkPixbuf.pixbuf_add_alpha(to_unsafe.as(LibGdkPixbuf::Pixbuf*), substitute_color, UInt8.new(r), UInt8.new(g), UInt8.new(b))
      GdkPixbuf::Pixbuf.new(__return_value)
    end

    def apply_embedded_orientation
      __return_value = LibGdkPixbuf.pixbuf_apply_embedded_orientation(to_unsafe.as(LibGdkPixbuf::Pixbuf*))
      GdkPixbuf::Pixbuf.new(__return_value)
    end

    def composite(dest, dest_x, dest_y, dest_width, dest_height, offset_x, offset_y, scale_x, scale_y, interp_type : GdkPixbuf::InterpType, overall_alpha)
      __return_value = LibGdkPixbuf.pixbuf_composite(to_unsafe.as(LibGdkPixbuf::Pixbuf*), dest.to_unsafe.as(LibGdkPixbuf::Pixbuf*), Int32.new(dest_x), Int32.new(dest_y), Int32.new(dest_width), Int32.new(dest_height), Float64.new(offset_x), Float64.new(offset_y), Float64.new(scale_x), Float64.new(scale_y), interp_type, Int32.new(overall_alpha))
      __return_value
    end

    def composite_color(dest, dest_x, dest_y, dest_width, dest_height, offset_x, offset_y, scale_x, scale_y, interp_type : GdkPixbuf::InterpType, overall_alpha, check_x, check_y, check_size, color1, color2)
      __return_value = LibGdkPixbuf.pixbuf_composite_color(to_unsafe.as(LibGdkPixbuf::Pixbuf*), dest.to_unsafe.as(LibGdkPixbuf::Pixbuf*), Int32.new(dest_x), Int32.new(dest_y), Int32.new(dest_width), Int32.new(dest_height), Float64.new(offset_x), Float64.new(offset_y), Float64.new(scale_x), Float64.new(scale_y), interp_type, Int32.new(overall_alpha), Int32.new(check_x), Int32.new(check_y), Int32.new(check_size), UInt32.new(color1), UInt32.new(color2))
      __return_value
    end

    def composite_color_simple(dest_width, dest_height, interp_type : GdkPixbuf::InterpType, overall_alpha, check_size, color1, color2)
      __return_value = LibGdkPixbuf.pixbuf_composite_color_simple(to_unsafe.as(LibGdkPixbuf::Pixbuf*), Int32.new(dest_width), Int32.new(dest_height), interp_type, Int32.new(overall_alpha), Int32.new(check_size), UInt32.new(color1), UInt32.new(color2))
      GdkPixbuf::Pixbuf.new(__return_value)
    end

    def copy
      __return_value = LibGdkPixbuf.pixbuf_copy(to_unsafe.as(LibGdkPixbuf::Pixbuf*))
      GdkPixbuf::Pixbuf.new(__return_value)
    end

    def copy_area(src_x, src_y, width, height, dest_pixbuf, dest_x, dest_y)
      __return_value = LibGdkPixbuf.pixbuf_copy_area(to_unsafe.as(LibGdkPixbuf::Pixbuf*), Int32.new(src_x), Int32.new(src_y), Int32.new(width), Int32.new(height), dest_pixbuf.to_unsafe.as(LibGdkPixbuf::Pixbuf*), Int32.new(dest_x), Int32.new(dest_y))
      __return_value
    end

    def fill(pixel)
      __return_value = LibGdkPixbuf.pixbuf_fill(to_unsafe.as(LibGdkPixbuf::Pixbuf*), UInt32.new(pixel))
      __return_value
    end

    def flip(horizontal)
      __return_value = LibGdkPixbuf.pixbuf_flip(to_unsafe.as(LibGdkPixbuf::Pixbuf*), horizontal)
      GdkPixbuf::Pixbuf.new(__return_value) if __return_value
    end

    def bits_per_sample
      __return_value = LibGdkPixbuf.pixbuf_get_bits_per_sample(to_unsafe.as(LibGdkPixbuf::Pixbuf*))
      __return_value
    end

    def byte_length
      __return_value = LibGdkPixbuf.pixbuf_get_byte_length(to_unsafe.as(LibGdkPixbuf::Pixbuf*))
      __return_value
    end

    def colorspace
      __return_value = LibGdkPixbuf.pixbuf_get_colorspace(to_unsafe.as(LibGdkPixbuf::Pixbuf*))
      __return_value
    end

    def has_alpha
      __return_value = LibGdkPixbuf.pixbuf_get_has_alpha(to_unsafe.as(LibGdkPixbuf::Pixbuf*))
      __return_value
    end

    def height
      __return_value = LibGdkPixbuf.pixbuf_get_height(to_unsafe.as(LibGdkPixbuf::Pixbuf*))
      __return_value
    end

    def n_channels
      __return_value = LibGdkPixbuf.pixbuf_get_n_channels(to_unsafe.as(LibGdkPixbuf::Pixbuf*))
      __return_value
    end

    def option(key)
      __return_value = LibGdkPixbuf.pixbuf_get_option(to_unsafe.as(LibGdkPixbuf::Pixbuf*), key.to_unsafe)
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def options
      __return_value = LibGdkPixbuf.pixbuf_get_options(to_unsafe.as(LibGdkPixbuf::Pixbuf*))
      __return_value
    end

    def pixels(length)
      __return_value = LibGdkPixbuf.pixbuf_get_pixels(to_unsafe.as(LibGdkPixbuf::Pixbuf*), length)
      PointerIterator.new(__return_value) {|__item| __item }
    end

    def rowstride
      __return_value = LibGdkPixbuf.pixbuf_get_rowstride(to_unsafe.as(LibGdkPixbuf::Pixbuf*))
      __return_value
    end

    def width
      __return_value = LibGdkPixbuf.pixbuf_get_width(to_unsafe.as(LibGdkPixbuf::Pixbuf*))
      __return_value
    end

    def new_subpixbuf(src_x, src_y, width, height)
      __return_value = LibGdkPixbuf.pixbuf_new_subpixbuf(to_unsafe.as(LibGdkPixbuf::Pixbuf*), Int32.new(src_x), Int32.new(src_y), Int32.new(width), Int32.new(height))
      GdkPixbuf::Pixbuf.new(__return_value)
    end

    def read_pixel_bytes
      __return_value = LibGdkPixbuf.pixbuf_read_pixel_bytes(to_unsafe.as(LibGdkPixbuf::Pixbuf*))
      GLib::Bytes.new(__return_value)
    end

    def read_pixels
      __return_value = LibGdkPixbuf.pixbuf_read_pixels(to_unsafe.as(LibGdkPixbuf::Pixbuf*))
      __return_value
    end

    def rotate_simple(angle : GdkPixbuf::PixbufRotation)
      __return_value = LibGdkPixbuf.pixbuf_rotate_simple(to_unsafe.as(LibGdkPixbuf::Pixbuf*), angle)
      GdkPixbuf::Pixbuf.new(__return_value) if __return_value
    end

    def saturate_and_pixelate(dest, saturation, pixelate)
      __return_value = LibGdkPixbuf.pixbuf_saturate_and_pixelate(to_unsafe.as(LibGdkPixbuf::Pixbuf*), dest.to_unsafe.as(LibGdkPixbuf::Pixbuf*), Float32.new(saturation), pixelate)
      __return_value
    end

    def save_to_bufferv(buffer, buffer_size, type, option_keys, option_values)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGdkPixbuf.pixbuf_save_to_bufferv(to_unsafe.as(LibGdkPixbuf::Pixbuf*), buffer, buffer_size, type.to_unsafe, option_keys, option_values, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def save_to_callbackv(save_func, user_data, type, option_keys, option_values)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGdkPixbuf.pixbuf_save_to_callbackv(to_unsafe.as(LibGdkPixbuf::Pixbuf*), save_func, user_data && user_data, type.to_unsafe, option_keys, option_values, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def savev(filename, type, option_keys, option_values)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGdkPixbuf.pixbuf_savev(to_unsafe.as(LibGdkPixbuf::Pixbuf*), filename.to_unsafe, type.to_unsafe, option_keys, option_values, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def scale(dest, dest_x, dest_y, dest_width, dest_height, offset_x, offset_y, scale_x, scale_y, interp_type : GdkPixbuf::InterpType)
      __return_value = LibGdkPixbuf.pixbuf_scale(to_unsafe.as(LibGdkPixbuf::Pixbuf*), dest.to_unsafe.as(LibGdkPixbuf::Pixbuf*), Int32.new(dest_x), Int32.new(dest_y), Int32.new(dest_width), Int32.new(dest_height), Float64.new(offset_x), Float64.new(offset_y), Float64.new(scale_x), Float64.new(scale_y), interp_type)
      __return_value
    end

    def scale_simple(dest_width, dest_height, interp_type : GdkPixbuf::InterpType)
      __return_value = LibGdkPixbuf.pixbuf_scale_simple(to_unsafe.as(LibGdkPixbuf::Pixbuf*), Int32.new(dest_width), Int32.new(dest_height), interp_type)
      GdkPixbuf::Pixbuf.new(__return_value)
    end

  end
end

