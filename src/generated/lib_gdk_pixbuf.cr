require "./lib_g_lib"
require "./lib_gio"
require "./lib_g_object"
require "./lib_g_module"

@[Link("gdk_pixbuf-2.0")]
lib LibGdkPixbuf

  ###########################################
  ##    Enums
  ###########################################

  enum Colorspace : UInt32
    ZERO_NONE = 0
    RGB = 0
  end

  enum InterpType : UInt32
    ZERO_NONE = 0
    NEAREST = 0
    TILES = 1
    BILINEAR = 2
    HYPER = 3
  end

  enum PixbufAlphaMode : UInt32
    ZERO_NONE = 0
    BILEVEL = 0
    FULL = 1
  end

  enum PixbufError : UInt32
    ZERO_NONE = 0
    CORRUPT_IMAGE = 0
    INSUFFICIENT_MEMORY = 1
    BAD_OPTION = 2
    UNKNOWN_TYPE = 3
    UNSUPPORTED_OPERATION = 4
    FAILED = 5
    INCOMPLETE_ANIMATION = 6
  end
  fun pixbuf_error_quark = gdk_pixbuf_error_quark() : UInt32

  enum PixbufRotation : UInt32
    ZERO_NONE = 0
    NONE = 0
    COUNTERCLOCKWISE = 90
    UPSIDEDOWN = 180
    CLOCKWISE = 270
  end


  ###########################################
  ##    Constants
  ###########################################

  PIXBUF_FEATURES_H = 1 # : Int32
  PIXBUF_MAJOR = 2 # : Int32
  PIXBUF_MICRO = 0 # : Int32
  PIXBUF_MINOR = 38 # : Int32
  PIXBUF_VERSION = "2.38.0" # : UInt8*

  ###########################################
  ##    Objects
  ###########################################

  struct Pixbuf # object
    _data : UInt8[0]
    # Property bits_per_sample : Int32
    # Property colorspace : LibGdkPixbuf::Colorspace
    # Property has_alpha : Bool
    # Property height : Int32
    # Property n_channels : Int32
    # Property pixel_bytes : LibGLib::Bytes
    # Property pixels : Void*
    # Property rowstride : Int32
    # Property width : Int32
  end
  fun pixbuf_new = gdk_pixbuf_new(colorspace : LibGdkPixbuf::Colorspace, has_alpha : Bool, bits_per_sample : Int32, width : Int32, height : Int32) : LibGdkPixbuf::Pixbuf*
  fun pixbuf_new_from_bytes = gdk_pixbuf_new_from_bytes(data : LibGLib::Bytes*, colorspace : LibGdkPixbuf::Colorspace, has_alpha : Bool, bits_per_sample : Int32, width : Int32, height : Int32, rowstride : Int32) : LibGdkPixbuf::Pixbuf*
  fun pixbuf_new_from_data = gdk_pixbuf_new_from_data(data : UInt8*, colorspace : LibGdkPixbuf::Colorspace, has_alpha : Bool, bits_per_sample : Int32, width : Int32, height : Int32, rowstride : Int32, destroy_fn : LibGdkPixbuf::PixbufDestroyNotify, destroy_fn_data : Void*) : LibGdkPixbuf::Pixbuf*
  fun pixbuf_new_from_file = gdk_pixbuf_new_from_file(filename : UInt8*, error : LibGLib::Error**) : LibGdkPixbuf::Pixbuf*
  fun pixbuf_new_from_file_at_scale = gdk_pixbuf_new_from_file_at_scale(filename : UInt8*, width : Int32, height : Int32, preserve_aspect_ratio : Bool, error : LibGLib::Error**) : LibGdkPixbuf::Pixbuf*
  fun pixbuf_new_from_file_at_size = gdk_pixbuf_new_from_file_at_size(filename : UInt8*, width : Int32, height : Int32, error : LibGLib::Error**) : LibGdkPixbuf::Pixbuf*
  fun pixbuf_new_from_inline = gdk_pixbuf_new_from_inline(data_length : Int32, data : UInt8*, copy_pixels : Bool, error : LibGLib::Error**) : LibGdkPixbuf::Pixbuf*
  fun pixbuf_new_from_resource = gdk_pixbuf_new_from_resource(resource_path : UInt8*, error : LibGLib::Error**) : LibGdkPixbuf::Pixbuf*
  fun pixbuf_new_from_resource_at_scale = gdk_pixbuf_new_from_resource_at_scale(resource_path : UInt8*, width : Int32, height : Int32, preserve_aspect_ratio : Bool, error : LibGLib::Error**) : LibGdkPixbuf::Pixbuf*
  fun pixbuf_new_from_stream = gdk_pixbuf_new_from_stream(stream : LibGio::InputStream*, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : LibGdkPixbuf::Pixbuf*
  fun pixbuf_new_from_stream_at_scale = gdk_pixbuf_new_from_stream_at_scale(stream : LibGio::InputStream*, width : Int32, height : Int32, preserve_aspect_ratio : Bool, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : LibGdkPixbuf::Pixbuf*
  fun pixbuf_new_from_stream_finish = gdk_pixbuf_new_from_stream_finish(async_result : LibGio::AsyncResult*, error : LibGLib::Error**) : LibGdkPixbuf::Pixbuf*
  fun pixbuf_new_from_xpm_data = gdk_pixbuf_new_from_xpm_data(data : UInt8**) : LibGdkPixbuf::Pixbuf*
  fun pixbuf_calculate_rowstride = gdk_pixbuf_calculate_rowstride(colorspace : LibGdkPixbuf::Colorspace, has_alpha : Bool, bits_per_sample : Int32, width : Int32, height : Int32) : Int32
  fun pixbuf_get_file_info = gdk_pixbuf_get_file_info(filename : UInt8*, width : Int32*, height : Int32*) : LibGdkPixbuf::PixbufFormat*
  fun pixbuf_get_file_info_async = gdk_pixbuf_get_file_info_async(filename : UInt8*, cancellable : LibGio::Cancellable*, callback : LibGio::AsyncReadyCallback, user_data : Void*) : Void
  fun pixbuf_get_file_info_finish = gdk_pixbuf_get_file_info_finish(async_result : LibGio::AsyncResult*, width : Int32*, height : Int32*, error : LibGLib::Error**) : LibGdkPixbuf::PixbufFormat*
  fun pixbuf_get_formats = gdk_pixbuf_get_formats() : Void**
  fun pixbuf_new_from_stream_async = gdk_pixbuf_new_from_stream_async(stream : LibGio::InputStream*, cancellable : LibGio::Cancellable*, callback : LibGio::AsyncReadyCallback, user_data : Void*) : Void
  fun pixbuf_new_from_stream_at_scale_async = gdk_pixbuf_new_from_stream_at_scale_async(stream : LibGio::InputStream*, width : Int32, height : Int32, preserve_aspect_ratio : Bool, cancellable : LibGio::Cancellable*, callback : LibGio::AsyncReadyCallback, user_data : Void*) : Void
  fun pixbuf_save_to_stream_finish = gdk_pixbuf_save_to_stream_finish(async_result : LibGio::AsyncResult*, error : LibGLib::Error**) : Bool
  fun pixbuf_add_alpha = gdk_pixbuf_add_alpha(this : Pixbuf*, substitute_color : Bool, r : UInt8, g : UInt8, b : UInt8) : LibGdkPixbuf::Pixbuf*
  fun pixbuf_apply_embedded_orientation = gdk_pixbuf_apply_embedded_orientation(this : Pixbuf*) : LibGdkPixbuf::Pixbuf*
  fun pixbuf_composite = gdk_pixbuf_composite(this : Pixbuf*, dest : LibGdkPixbuf::Pixbuf*, dest_x : Int32, dest_y : Int32, dest_width : Int32, dest_height : Int32, offset_x : Float64, offset_y : Float64, scale_x : Float64, scale_y : Float64, interp_type : LibGdkPixbuf::InterpType, overall_alpha : Int32) : Void
  fun pixbuf_composite_color = gdk_pixbuf_composite_color(this : Pixbuf*, dest : LibGdkPixbuf::Pixbuf*, dest_x : Int32, dest_y : Int32, dest_width : Int32, dest_height : Int32, offset_x : Float64, offset_y : Float64, scale_x : Float64, scale_y : Float64, interp_type : LibGdkPixbuf::InterpType, overall_alpha : Int32, check_x : Int32, check_y : Int32, check_size : Int32, color1 : UInt32, color2 : UInt32) : Void
  fun pixbuf_composite_color_simple = gdk_pixbuf_composite_color_simple(this : Pixbuf*, dest_width : Int32, dest_height : Int32, interp_type : LibGdkPixbuf::InterpType, overall_alpha : Int32, check_size : Int32, color1 : UInt32, color2 : UInt32) : LibGdkPixbuf::Pixbuf*
  fun pixbuf_copy = gdk_pixbuf_copy(this : Pixbuf*) : LibGdkPixbuf::Pixbuf*
  fun pixbuf_copy_area = gdk_pixbuf_copy_area(this : Pixbuf*, src_x : Int32, src_y : Int32, width : Int32, height : Int32, dest_pixbuf : LibGdkPixbuf::Pixbuf*, dest_x : Int32, dest_y : Int32) : Void
  fun pixbuf_copy_options = gdk_pixbuf_copy_options(this : Pixbuf*, dest_pixbuf : LibGdkPixbuf::Pixbuf*) : Bool
  fun pixbuf_fill = gdk_pixbuf_fill(this : Pixbuf*, pixel : UInt32) : Void
  fun pixbuf_flip = gdk_pixbuf_flip(this : Pixbuf*, horizontal : Bool) : LibGdkPixbuf::Pixbuf*
  fun pixbuf_get_bits_per_sample = gdk_pixbuf_get_bits_per_sample(this : Pixbuf*) : Int32
  fun pixbuf_get_byte_length = gdk_pixbuf_get_byte_length(this : Pixbuf*) : UInt64
  fun pixbuf_get_colorspace = gdk_pixbuf_get_colorspace(this : Pixbuf*) : LibGdkPixbuf::Colorspace
  fun pixbuf_get_has_alpha = gdk_pixbuf_get_has_alpha(this : Pixbuf*) : Bool
  fun pixbuf_get_height = gdk_pixbuf_get_height(this : Pixbuf*) : Int32
  fun pixbuf_get_n_channels = gdk_pixbuf_get_n_channels(this : Pixbuf*) : Int32
  fun pixbuf_get_option = gdk_pixbuf_get_option(this : Pixbuf*, key : UInt8*) : UInt8*
  fun pixbuf_get_options = gdk_pixbuf_get_options(this : Pixbuf*) : Void**
  fun pixbuf_get_pixels = gdk_pixbuf_get_pixels_with_length(this : Pixbuf*, length : UInt32*) : UInt8*
  fun pixbuf_get_rowstride = gdk_pixbuf_get_rowstride(this : Pixbuf*) : Int32
  fun pixbuf_get_width = gdk_pixbuf_get_width(this : Pixbuf*) : Int32
  fun pixbuf_new_subpixbuf = gdk_pixbuf_new_subpixbuf(this : Pixbuf*, src_x : Int32, src_y : Int32, width : Int32, height : Int32) : LibGdkPixbuf::Pixbuf*
  fun pixbuf_read_pixel_bytes = gdk_pixbuf_read_pixel_bytes(this : Pixbuf*) : LibGLib::Bytes*
  fun pixbuf_read_pixels = gdk_pixbuf_read_pixels(this : Pixbuf*) : UInt8*
  fun pixbuf_remove_option = gdk_pixbuf_remove_option(this : Pixbuf*, key : UInt8*) : Bool
  fun pixbuf_rotate_simple = gdk_pixbuf_rotate_simple(this : Pixbuf*, angle : LibGdkPixbuf::PixbufRotation) : LibGdkPixbuf::Pixbuf*
  fun pixbuf_saturate_and_pixelate = gdk_pixbuf_saturate_and_pixelate(this : Pixbuf*, dest : LibGdkPixbuf::Pixbuf*, saturation : Float32, pixelate : Bool) : Void
  fun pixbuf_save_to_bufferv = gdk_pixbuf_save_to_bufferv(this : Pixbuf*, buffer : UInt8**, buffer_size : UInt64*, type : UInt8*, option_keys : UInt8**, option_values : UInt8**, error : LibGLib::Error**) : Bool
  fun pixbuf_save_to_callbackv = gdk_pixbuf_save_to_callbackv(this : Pixbuf*, save_func : LibGdkPixbuf::PixbufSaveFunc, user_data : Void*, type : UInt8*, option_keys : UInt8**, option_values : UInt8**, error : LibGLib::Error**) : Bool
  fun pixbuf_save_to_streamv = gdk_pixbuf_save_to_streamv(this : Pixbuf*, stream : LibGio::OutputStream*, type : UInt8*, option_keys : UInt8**, option_values : UInt8**, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : Bool
  fun pixbuf_save_to_streamv_async = gdk_pixbuf_save_to_streamv_async(this : Pixbuf*, stream : LibGio::OutputStream*, type : UInt8*, option_keys : UInt8**, option_values : UInt8**, cancellable : LibGio::Cancellable*, callback : LibGio::AsyncReadyCallback, user_data : Void*) : Void
  fun pixbuf_savev = gdk_pixbuf_savev(this : Pixbuf*, filename : UInt8*, type : UInt8*, option_keys : UInt8**, option_values : UInt8**, error : LibGLib::Error**) : Bool
  fun pixbuf_scale = gdk_pixbuf_scale(this : Pixbuf*, dest : LibGdkPixbuf::Pixbuf*, dest_x : Int32, dest_y : Int32, dest_width : Int32, dest_height : Int32, offset_x : Float64, offset_y : Float64, scale_x : Float64, scale_y : Float64, interp_type : LibGdkPixbuf::InterpType) : Void
  fun pixbuf_scale_simple = gdk_pixbuf_scale_simple(this : Pixbuf*, dest_width : Int32, dest_height : Int32, interp_type : LibGdkPixbuf::InterpType) : LibGdkPixbuf::Pixbuf*
  fun pixbuf_set_option = gdk_pixbuf_set_option(this : Pixbuf*, key : UInt8*, value : UInt8*) : Bool

  struct PixbufAnimation # object
    _data : UInt8[0]
  end
  fun pixbuf_animation_new_from_file = gdk_pixbuf_animation_new_from_file(filename : UInt8*, error : LibGLib::Error**) : LibGdkPixbuf::PixbufAnimation*
  fun pixbuf_animation_new_from_resource = gdk_pixbuf_animation_new_from_resource(resource_path : UInt8*, error : LibGLib::Error**) : LibGdkPixbuf::PixbufAnimation*
  fun pixbuf_animation_new_from_stream = gdk_pixbuf_animation_new_from_stream(stream : LibGio::InputStream*, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : LibGdkPixbuf::PixbufAnimation*
  fun pixbuf_animation_new_from_stream_finish = gdk_pixbuf_animation_new_from_stream_finish(async_result : LibGio::AsyncResult*, error : LibGLib::Error**) : LibGdkPixbuf::PixbufAnimation*
  fun pixbuf_animation_new_from_stream_async = gdk_pixbuf_animation_new_from_stream_async(stream : LibGio::InputStream*, cancellable : LibGio::Cancellable*, callback : LibGio::AsyncReadyCallback, user_data : Void*) : Void
  fun pixbuf_animation_get_height = gdk_pixbuf_animation_get_height(this : PixbufAnimation*) : Int32
  fun pixbuf_animation_get_iter = gdk_pixbuf_animation_get_iter(this : PixbufAnimation*, start_time : LibGLib::TimeVal*) : LibGdkPixbuf::PixbufAnimationIter*
  fun pixbuf_animation_get_static_image = gdk_pixbuf_animation_get_static_image(this : PixbufAnimation*) : LibGdkPixbuf::Pixbuf*
  fun pixbuf_animation_get_width = gdk_pixbuf_animation_get_width(this : PixbufAnimation*) : Int32
  fun pixbuf_animation_is_static_image = gdk_pixbuf_animation_is_static_image(this : PixbufAnimation*) : Bool

  struct PixbufAnimationIter # object
    _data : UInt8[0]
  end
  fun pixbuf_animation_iter_advance = gdk_pixbuf_animation_iter_advance(this : PixbufAnimationIter*, current_time : LibGLib::TimeVal*) : Bool
  fun pixbuf_animation_iter_get_delay_time = gdk_pixbuf_animation_iter_get_delay_time(this : PixbufAnimationIter*) : Int32
  fun pixbuf_animation_iter_get_pixbuf = gdk_pixbuf_animation_iter_get_pixbuf(this : PixbufAnimationIter*) : LibGdkPixbuf::Pixbuf*
  fun pixbuf_animation_iter_on_currently_loading_frame = gdk_pixbuf_animation_iter_on_currently_loading_frame(this : PixbufAnimationIter*) : Bool

  struct PixbufLoader # object
    parent_instance : LibGObject::Object*
    priv : Void*
    # Signal area-prepared
    # Signal area-updated
    # Signal closed
    # Signal size-prepared
    # Virtual function area_prepared
    # Virtual function area_updated
    # Virtual function closed
    # Virtual function size_prepared
  end
  fun pixbuf_loader_new = gdk_pixbuf_loader_new() : LibGdkPixbuf::PixbufLoader*
  fun pixbuf_loader_new_with_mime_type = gdk_pixbuf_loader_new_with_mime_type(mime_type : UInt8*, error : LibGLib::Error**) : LibGdkPixbuf::PixbufLoader*
  fun pixbuf_loader_new_with_type = gdk_pixbuf_loader_new_with_type(image_type : UInt8*, error : LibGLib::Error**) : LibGdkPixbuf::PixbufLoader*
  fun pixbuf_loader_close = gdk_pixbuf_loader_close(this : PixbufLoader*, error : LibGLib::Error**) : Bool
  fun pixbuf_loader_get_animation = gdk_pixbuf_loader_get_animation(this : PixbufLoader*) : LibGdkPixbuf::PixbufAnimation*
  fun pixbuf_loader_get_format = gdk_pixbuf_loader_get_format(this : PixbufLoader*) : LibGdkPixbuf::PixbufFormat*
  fun pixbuf_loader_get_pixbuf = gdk_pixbuf_loader_get_pixbuf(this : PixbufLoader*) : LibGdkPixbuf::Pixbuf*
  fun pixbuf_loader_set_size = gdk_pixbuf_loader_set_size(this : PixbufLoader*, width : Int32, height : Int32) : Void
  fun pixbuf_loader_write = gdk_pixbuf_loader_write(this : PixbufLoader*, buf : UInt8*, count : UInt64, error : LibGLib::Error**) : Bool
  fun pixbuf_loader_write_bytes = gdk_pixbuf_loader_write_bytes(this : PixbufLoader*, buffer : LibGLib::Bytes*, error : LibGLib::Error**) : Bool

  struct PixbufSimpleAnim # object
    _data : UInt8[0]
    # Property loop : Bool
  end
  fun pixbuf_simple_anim_new = gdk_pixbuf_simple_anim_new(width : Int32, height : Int32, rate : Float32) : LibGdkPixbuf::PixbufSimpleAnim*
  fun pixbuf_simple_anim_add_frame = gdk_pixbuf_simple_anim_add_frame(this : PixbufSimpleAnim*, pixbuf : LibGdkPixbuf::Pixbuf*) : Void
  fun pixbuf_simple_anim_get_loop = gdk_pixbuf_simple_anim_get_loop(this : PixbufSimpleAnim*) : Bool
  fun pixbuf_simple_anim_set_loop = gdk_pixbuf_simple_anim_set_loop(this : PixbufSimpleAnim*, loop : Bool) : Void

  struct PixbufSimpleAnimIter # object
    _data : UInt8[0]
  end


  ###########################################
  ##    Structs
  ###########################################

  struct PixbufFormat # struct
    _data : UInt8[0]
  end
  fun pixbuf_format_copy = gdk_pixbuf_format_copy(this : PixbufFormat*) : LibGdkPixbuf::PixbufFormat*
  fun pixbuf_format_free = gdk_pixbuf_format_free(this : PixbufFormat*) : Void
  fun pixbuf_format_get_description = gdk_pixbuf_format_get_description(this : PixbufFormat*) : UInt8*
  fun pixbuf_format_get_extensions = gdk_pixbuf_format_get_extensions(this : PixbufFormat*) : UInt8**
  fun pixbuf_format_get_license = gdk_pixbuf_format_get_license(this : PixbufFormat*) : UInt8*
  fun pixbuf_format_get_mime_types = gdk_pixbuf_format_get_mime_types(this : PixbufFormat*) : UInt8**
  fun pixbuf_format_get_name = gdk_pixbuf_format_get_name(this : PixbufFormat*) : UInt8*
  fun pixbuf_format_is_disabled = gdk_pixbuf_format_is_disabled(this : PixbufFormat*) : Bool
  fun pixbuf_format_is_save_option_supported = gdk_pixbuf_format_is_save_option_supported(this : PixbufFormat*, option_key : UInt8*) : Bool
  fun pixbuf_format_is_scalable = gdk_pixbuf_format_is_scalable(this : PixbufFormat*) : Bool
  fun pixbuf_format_is_writable = gdk_pixbuf_format_is_writable(this : PixbufFormat*) : Bool
  fun pixbuf_format_set_disabled = gdk_pixbuf_format_set_disabled(this : PixbufFormat*, disabled : Bool) : Void


  ###########################################
  ##    Functions
  ###########################################

  fun pixbuf_error_quark = gdk_pixbuf_error_quark() : UInt32

  ###########################################
  ##    Callbacks
  ###########################################

 alias PixbufDestroyNotify = UInt8*, Void* -> Void
 alias PixbufSaveFunc = UInt8*, UInt64, LibGLib::Error**, Void* -> Bool
end

