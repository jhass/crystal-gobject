require "./pixbuf_animation"

module GdkPixbuf
  class PixbufSimpleAnim < PixbufAnimation
    @pointer : Void*
    def initialize(pointer : LibGdkPixbuf::PixbufSimpleAnim*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGdkPixbuf::PixbufSimpleAnim*)
    end

    def loop
      __return_value = LibGdkPixbuf.pixbuf_simple_anim_get_loop(to_unsafe.as(LibGdkPixbuf::PixbufSimpleAnim*))
      __return_value
    end

    def self.new(width, height, rate) : self
      __return_value = LibGdkPixbuf.pixbuf_simple_anim_new(Int32.new(width), Int32.new(height), Float32.new(rate))
      cast GdkPixbuf::PixbufSimpleAnim.new(__return_value)
    end

    def add_frame(pixbuf)
      LibGdkPixbuf.pixbuf_simple_anim_add_frame(@pointer.as(LibGdkPixbuf::PixbufSimpleAnim*), pixbuf.to_unsafe.as(LibGdkPixbuf::Pixbuf*))
      nil
    end

    def loop
      __return_value = LibGdkPixbuf.pixbuf_simple_anim_get_loop(@pointer.as(LibGdkPixbuf::PixbufSimpleAnim*))
      __return_value
    end

    def loop=(loop)
      LibGdkPixbuf.pixbuf_simple_anim_set_loop(@pointer.as(LibGdkPixbuf::PixbufSimpleAnim*), loop)
      nil
    end

  end
end

