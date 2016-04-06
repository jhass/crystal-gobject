require "./pixbuf_animation"

module GdkPixbuf
  class PixbufSimpleAnim < PixbufAnimation
    def initialize(@gdk_pixbuf_pixbuf_simple_anim)
    end

    def to_unsafe
      @gdk_pixbuf_pixbuf_simple_anim.not_nil!
    end


    def self.new_internal(width, height, rate)
      __return_value = LibGdkPixbuf.pixbuf_simple_anim_new(Int32.new(width), Int32.new(height), Float32.new(rate))
      GdkPixbuf::PixbufSimpleAnim.new(__return_value)
    end

    def add_frame(pixbuf)
      __return_value = LibGdkPixbuf.pixbuf_simple_anim_add_frame((to_unsafe as LibGdkPixbuf::PixbufSimpleAnim*), (pixbuf.to_unsafe as LibGdkPixbuf::Pixbuf*))
      __return_value
    end

    def loop
      __return_value = LibGdkPixbuf.pixbuf_simple_anim_get_loop((to_unsafe as LibGdkPixbuf::PixbufSimpleAnim*))
      __return_value
    end

    def loop=(loop)
      __return_value = LibGdkPixbuf.pixbuf_simple_anim_set_loop((to_unsafe as LibGdkPixbuf::PixbufSimpleAnim*), loop)
      __return_value
    end

  end
end

