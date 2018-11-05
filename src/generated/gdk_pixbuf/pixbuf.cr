module GdkPixbuf
  class Pixbuf < GObject::Object
    @pointer : Void*
    def initialize(pointer : LibGdkPixbuf::Pixbuf*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGdkPixbuf::Pixbuf*)
    end

    # Implements Icon
    # Implements LoadableIcon
    def bits_per_sample
      gvalue = GObject::Value.new(GObject::Type::INT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "bits_per_sample", gvalue)
      gvalue
    end

    def colorspace
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "colorspace", gvalue)
      gvalue.enum
    end

    def has_alpha
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "has_alpha", gvalue)
      gvalue.boolean
    end

    def height
      gvalue = GObject::Value.new(GObject::Type::INT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "height", gvalue)
      gvalue
    end

    def n_channels
      gvalue = GObject::Value.new(GObject::Type::INT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "n_channels", gvalue)
      gvalue
    end

    def pixel_bytes
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "pixel_bytes", gvalue)
      GLib::Bytes.cast(gvalue.object)
    end

    def pixels
      gvalue = GObject::Value.new(GObject::Type::ZERO_NONE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "pixels", gvalue)
      gvalue
    end

    def rowstride
      gvalue = GObject::Value.new(GObject::Type::INT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "rowstride", gvalue)
      gvalue
    end

    def width
      gvalue = GObject::Value.new(GObject::Type::INT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "width", gvalue)
      gvalue
    end

    def self.new(colorspace : GdkPixbuf::Colorspace, has_alpha, bits_per_sample, width, height) : self
      __return_value = LibGdkPixbuf.pixbuf_new(colorspace, has_alpha, Int32.new(bits_per_sample), Int32.new(width), Int32.new(height))
      cast GdkPixbuf::Pixbuf.new(__return_value) if __return_value
    end

    def self.new_from_bytes(data, colorspace : GdkPixbuf::Colorspace, has_alpha, bits_per_sample, width, height, rowstride) : self
      __return_value = LibGdkPixbuf.pixbuf_new_from_bytes(data.to_unsafe.as(LibGLib::Bytes*), colorspace, has_alpha, Int32.new(bits_per_sample), Int32.new(width), Int32.new(height), Int32.new(rowstride))
      cast GdkPixbuf::Pixbuf.new(__return_value)
    end

    def self.new_from_data(data, colorspace : GdkPixbuf::Colorspace, has_alpha, bits_per_sample, width, height, rowstride, destroy_fn, destroy_fn_data) : self
      __return_value = LibGdkPixbuf.pixbuf_new_from_data(data, colorspace, has_alpha, Int32.new(bits_per_sample), Int32.new(width), Int32.new(height), Int32.new(rowstride), destroy_fn ? destroy_fn : nil, destroy_fn_data ? destroy_fn_data : nil)
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
      __return_value = LibGdkPixbuf.pixbuf_new_from_stream(stream.to_unsafe.as(LibGio::InputStream*), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      cast GdkPixbuf::Pixbuf.new(__return_value)
    end

    def self.new_from_stream_at_scale(stream, width, height, preserve_aspect_ratio, cancellable) : self
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGdkPixbuf.pixbuf_new_from_stream_at_scale(stream.to_unsafe.as(LibGio::InputStream*), Int32.new(width), Int32.new(height), preserve_aspect_ratio, cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
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

    def self.calculate_rowstride(colorspace : GdkPixbuf::Colorspace, has_alpha, bits_per_sample, width, height)
      __return_value = LibGdkPixbuf.pixbuf_calculate_rowstride(colorspace, has_alpha, Int32.new(bits_per_sample), Int32.new(width), Int32.new(height))
      __return_value
    end

    def self.file_info(filename, width, height)
      __return_value = LibGdkPixbuf.pixbuf_get_file_info(filename.to_unsafe, width, height)
      GdkPixbuf::PixbufFormat.new(__return_value) if __return_value
    end

    def self.file_info_async(filename, cancellable, callback, user_data)
      LibGdkPixbuf.pixbuf_get_file_info_async(filename.to_unsafe, cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, callback ? callback : nil, user_data ? user_data : nil)
      nil
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
      LibGdkPixbuf.pixbuf_new_from_stream_async(stream.to_unsafe.as(LibGio::InputStream*), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, callback ? callback : nil, user_data ? user_data : nil)
      nil
    end

    def self.new_from_stream_at_scale_async(stream, width, height, preserve_aspect_ratio, cancellable, callback, user_data)
      LibGdkPixbuf.pixbuf_new_from_stream_at_scale_async(stream.to_unsafe.as(LibGio::InputStream*), Int32.new(width), Int32.new(height), preserve_aspect_ratio, cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, callback ? callback : nil, user_data ? user_data : nil)
      nil
    end

    def self.save_to_stream_finish(async_result)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGdkPixbuf.pixbuf_save_to_stream_finish(async_result.to_unsafe.as(LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def add_alpha(substitute_color, r, g, b)
      __return_value = LibGdkPixbuf.pixbuf_add_alpha(@pointer.as(LibGdkPixbuf::Pixbuf*), substitute_color, UInt8.new(r), UInt8.new(g), UInt8.new(b))
      GdkPixbuf::Pixbuf.new(__return_value)
    end

    def apply_embedded_orientation
      __return_value = LibGdkPixbuf.pixbuf_apply_embedded_orientation(@pointer.as(LibGdkPixbuf::Pixbuf*))
      GdkPixbuf::Pixbuf.new(__return_value)
    end

    def composite(dest, dest_x, dest_y, dest_width, dest_height, offset_x, offset_y, scale_x, scale_y, interp_type : GdkPixbuf::InterpType, overall_alpha)
      LibGdkPixbuf.pixbuf_composite(@pointer.as(LibGdkPixbuf::Pixbuf*), dest.to_unsafe.as(LibGdkPixbuf::Pixbuf*), Int32.new(dest_x), Int32.new(dest_y), Int32.new(dest_width), Int32.new(dest_height), Float64.new(offset_x), Float64.new(offset_y), Float64.new(scale_x), Float64.new(scale_y), interp_type, Int32.new(overall_alpha))
      nil
    end

    def composite_color(dest, dest_x, dest_y, dest_width, dest_height, offset_x, offset_y, scale_x, scale_y, interp_type : GdkPixbuf::InterpType, overall_alpha, check_x, check_y, check_size, color1, color2)
      LibGdkPixbuf.pixbuf_composite_color(@pointer.as(LibGdkPixbuf::Pixbuf*), dest.to_unsafe.as(LibGdkPixbuf::Pixbuf*), Int32.new(dest_x), Int32.new(dest_y), Int32.new(dest_width), Int32.new(dest_height), Float64.new(offset_x), Float64.new(offset_y), Float64.new(scale_x), Float64.new(scale_y), interp_type, Int32.new(overall_alpha), Int32.new(check_x), Int32.new(check_y), Int32.new(check_size), UInt32.new(color1), UInt32.new(color2))
      nil
    end

    def composite_color_simple(dest_width, dest_height, interp_type : GdkPixbuf::InterpType, overall_alpha, check_size, color1, color2)
      __return_value = LibGdkPixbuf.pixbuf_composite_color_simple(@pointer.as(LibGdkPixbuf::Pixbuf*), Int32.new(dest_width), Int32.new(dest_height), interp_type, Int32.new(overall_alpha), Int32.new(check_size), UInt32.new(color1), UInt32.new(color2))
      GdkPixbuf::Pixbuf.new(__return_value) if __return_value
    end

    def copy
      __return_value = LibGdkPixbuf.pixbuf_copy(@pointer.as(LibGdkPixbuf::Pixbuf*))
      GdkPixbuf::Pixbuf.new(__return_value) if __return_value
    end

    def copy_area(src_x, src_y, width, height, dest_pixbuf, dest_x, dest_y)
      LibGdkPixbuf.pixbuf_copy_area(@pointer.as(LibGdkPixbuf::Pixbuf*), Int32.new(src_x), Int32.new(src_y), Int32.new(width), Int32.new(height), dest_pixbuf.to_unsafe.as(LibGdkPixbuf::Pixbuf*), Int32.new(dest_x), Int32.new(dest_y))
      nil
    end

    def copy_options(dest_pixbuf)
      __return_value = LibGdkPixbuf.pixbuf_copy_options(@pointer.as(LibGdkPixbuf::Pixbuf*), dest_pixbuf.to_unsafe.as(LibGdkPixbuf::Pixbuf*))
      __return_value
    end

    def fill(pixel)
      LibGdkPixbuf.pixbuf_fill(@pointer.as(LibGdkPixbuf::Pixbuf*), UInt32.new(pixel))
      nil
    end

    def flip(horizontal)
      __return_value = LibGdkPixbuf.pixbuf_flip(@pointer.as(LibGdkPixbuf::Pixbuf*), horizontal)
      GdkPixbuf::Pixbuf.new(__return_value) if __return_value
    end

    def bits_per_sample
      __return_value = LibGdkPixbuf.pixbuf_get_bits_per_sample(@pointer.as(LibGdkPixbuf::Pixbuf*))
      __return_value
    end

    def byte_length
      __return_value = LibGdkPixbuf.pixbuf_get_byte_length(@pointer.as(LibGdkPixbuf::Pixbuf*))
      __return_value
    end

    def colorspace
      __return_value = LibGdkPixbuf.pixbuf_get_colorspace(@pointer.as(LibGdkPixbuf::Pixbuf*))
      __return_value
    end

    def has_alpha
      __return_value = LibGdkPixbuf.pixbuf_get_has_alpha(@pointer.as(LibGdkPixbuf::Pixbuf*))
      __return_value
    end

    def height
      __return_value = LibGdkPixbuf.pixbuf_get_height(@pointer.as(LibGdkPixbuf::Pixbuf*))
      __return_value
    end

    def n_channels
      __return_value = LibGdkPixbuf.pixbuf_get_n_channels(@pointer.as(LibGdkPixbuf::Pixbuf*))
      __return_value
    end

    def option(key)
      __return_value = LibGdkPixbuf.pixbuf_get_option(@pointer.as(LibGdkPixbuf::Pixbuf*), key.to_unsafe)
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def options
      __return_value = LibGdkPixbuf.pixbuf_get_options(@pointer.as(LibGdkPixbuf::Pixbuf*))
      __return_value
    end

    def pixels(length)
      __return_value = LibGdkPixbuf.pixbuf_get_pixels(@pointer.as(LibGdkPixbuf::Pixbuf*), length)
      PointerIterator.new(__return_value) {|__item| __item }
    end

    def rowstride
      __return_value = LibGdkPixbuf.pixbuf_get_rowstride(@pointer.as(LibGdkPixbuf::Pixbuf*))
      __return_value
    end

    def width
      __return_value = LibGdkPixbuf.pixbuf_get_width(@pointer.as(LibGdkPixbuf::Pixbuf*))
      __return_value
    end

    def new_subpixbuf(src_x, src_y, width, height)
      __return_value = LibGdkPixbuf.pixbuf_new_subpixbuf(@pointer.as(LibGdkPixbuf::Pixbuf*), Int32.new(src_x), Int32.new(src_y), Int32.new(width), Int32.new(height))
      GdkPixbuf::Pixbuf.new(__return_value)
    end

    def read_pixel_bytes
      __return_value = LibGdkPixbuf.pixbuf_read_pixel_bytes(@pointer.as(LibGdkPixbuf::Pixbuf*))
      GLib::Bytes.new(__return_value)
    end

    def read_pixels
      __return_value = LibGdkPixbuf.pixbuf_read_pixels(@pointer.as(LibGdkPixbuf::Pixbuf*))
      __return_value
    end

    def remove_option(key)
      __return_value = LibGdkPixbuf.pixbuf_remove_option(@pointer.as(LibGdkPixbuf::Pixbuf*), key.to_unsafe)
      __return_value
    end

    def rotate_simple(angle : GdkPixbuf::PixbufRotation)
      __return_value = LibGdkPixbuf.pixbuf_rotate_simple(@pointer.as(LibGdkPixbuf::Pixbuf*), angle)
      GdkPixbuf::Pixbuf.new(__return_value) if __return_value
    end

    def saturate_and_pixelate(dest, saturation, pixelate)
      LibGdkPixbuf.pixbuf_saturate_and_pixelate(@pointer.as(LibGdkPixbuf::Pixbuf*), dest.to_unsafe.as(LibGdkPixbuf::Pixbuf*), Float32.new(saturation), pixelate)
      nil
    end

    def save_to_bufferv(buffer, buffer_size, type, option_keys, option_values)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGdkPixbuf.pixbuf_save_to_bufferv(@pointer.as(LibGdkPixbuf::Pixbuf*), buffer, buffer_size, type.to_unsafe, option_keys, option_values, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def save_to_callbackv(save_func, user_data, type, option_keys, option_values)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGdkPixbuf.pixbuf_save_to_callbackv(@pointer.as(LibGdkPixbuf::Pixbuf*), save_func, user_data ? user_data : nil, type.to_unsafe, option_keys, option_values, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def save_to_streamv(stream, type, option_keys, option_values, cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGdkPixbuf.pixbuf_save_to_streamv(@pointer.as(LibGdkPixbuf::Pixbuf*), stream.to_unsafe.as(LibGio::OutputStream*), type.to_unsafe, option_keys, option_values, cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def save_to_streamv_async(stream, type, option_keys, option_values, cancellable, callback, user_data)
      LibGdkPixbuf.pixbuf_save_to_streamv_async(@pointer.as(LibGdkPixbuf::Pixbuf*), stream.to_unsafe.as(LibGio::OutputStream*), type.to_unsafe, option_keys, option_values, cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, callback ? callback : nil, user_data ? user_data : nil)
      nil
    end

    def savev(filename, type, option_keys, option_values)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGdkPixbuf.pixbuf_savev(@pointer.as(LibGdkPixbuf::Pixbuf*), filename.to_unsafe, type.to_unsafe, option_keys, option_values, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def scale(dest, dest_x, dest_y, dest_width, dest_height, offset_x, offset_y, scale_x, scale_y, interp_type : GdkPixbuf::InterpType)
      LibGdkPixbuf.pixbuf_scale(@pointer.as(LibGdkPixbuf::Pixbuf*), dest.to_unsafe.as(LibGdkPixbuf::Pixbuf*), Int32.new(dest_x), Int32.new(dest_y), Int32.new(dest_width), Int32.new(dest_height), Float64.new(offset_x), Float64.new(offset_y), Float64.new(scale_x), Float64.new(scale_y), interp_type)
      nil
    end

    def scale_simple(dest_width, dest_height, interp_type : GdkPixbuf::InterpType)
      __return_value = LibGdkPixbuf.pixbuf_scale_simple(@pointer.as(LibGdkPixbuf::Pixbuf*), Int32.new(dest_width), Int32.new(dest_height), interp_type)
      GdkPixbuf::Pixbuf.new(__return_value) if __return_value
    end

    def set_option(key, value)
      __return_value = LibGdkPixbuf.pixbuf_set_option(@pointer.as(LibGdkPixbuf::Pixbuf*), key.to_unsafe, value.to_unsafe)
      __return_value
    end

  end
end

