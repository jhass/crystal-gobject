require "./misc"

module Gtk
  class Image < Misc
    def initialize @gtk_image
    end

    def to_unsafe
      @gtk_image.not_nil!
    end

    # Implements ImplementorIface
    # Implements Buildable
    def file=(__value)
      LibGtk.image_set_file((to_unsafe as LibGtk::Image*), __value)
    end

    def gicon=(__value)
      LibGtk.image_set_gicon((to_unsafe as LibGtk::Image*), __value)
    end

    def icon_name=(__value)
      LibGtk.image_set_icon_name((to_unsafe as LibGtk::Image*), __value)
    end

    def icon_set=(__value)
      LibGtk.image_set_icon_set((to_unsafe as LibGtk::Image*), __value)
    end

    def icon_size=(__value)
      LibGtk.image_set_icon_size((to_unsafe as LibGtk::Image*), Int32.cast(__value))
    end

    def pixbuf=(__value)
      LibGtk.image_set_pixbuf((to_unsafe as LibGtk::Image*), __value)
    end

    def pixbuf_animation=(__value)
      LibGtk.image_set_pixbuf_animation((to_unsafe as LibGtk::Image*), __value)
    end

    def pixel_size=(__value)
      LibGtk.image_set_pixel_size((to_unsafe as LibGtk::Image*), Int32.cast(__value))
    end

    def resource=(__value)
      LibGtk.image_set_resource((to_unsafe as LibGtk::Image*), __value)
    end

    def stock=(__value)
      LibGtk.image_set_stock((to_unsafe as LibGtk::Image*), __value)
    end


    def surface=(__value)
      LibGtk.image_set_surface((to_unsafe as LibGtk::Image*), __value)
    end

    def use_fallback=(__value)
      LibGtk.image_set_use_fallback((to_unsafe as LibGtk::Image*), Bool.cast(__value))
    end

    def self.new_internal
      __return_value = LibGtk.image_new
      Gtk::Widget.new(__return_value)
    end

    def self.new_from_animation(animation)
      __return_value = LibGtk.image_new_from_animation((animation.to_unsafe as LibGdkPixbuf::PixbufAnimation*))
      Gtk::Widget.new(__return_value)
    end

    def self.new_from_file(filename)
      __return_value = LibGtk.image_new_from_file(filename)
      Gtk::Widget.new(__return_value)
    end

    def self.new_from_gicon(icon, size)
      __return_value = LibGtk.image_new_from_gicon((icon.to_unsafe as LibGio::Icon*), Int32.cast(size))
      Gtk::Widget.new(__return_value)
    end

    def self.new_from_icon_name(icon_name, size)
      __return_value = LibGtk.image_new_from_icon_name(icon_name, Int32.cast(size))
      Gtk::Widget.new(__return_value)
    end

    def self.new_from_icon_set(icon_set, size)
      __return_value = LibGtk.image_new_from_icon_set((icon_set.to_unsafe as LibGtk::IconSet*), Int32.cast(size))
      Gtk::Widget.new(__return_value)
    end

    def self.new_from_pixbuf(pixbuf)
      __return_value = LibGtk.image_new_from_pixbuf((pixbuf.to_unsafe as LibGdkPixbuf::Pixbuf*))
      Gtk::Widget.new(__return_value)
    end

    def self.new_from_resource(resource_path)
      __return_value = LibGtk.image_new_from_resource(resource_path)
      Gtk::Widget.new(__return_value)
    end

    def self.new_from_stock(stock_id, size)
      __return_value = LibGtk.image_new_from_stock(stock_id, Int32.cast(size))
      Gtk::Widget.new(__return_value)
    end

    def self.new_from_surface(surface)
      __return_value = LibGtk.image_new_from_surface((surface.to_unsafe as LibCairo::Surface*))
      Gtk::Widget.new(__return_value)
    end

    def clear
      __return_value = LibGtk.image_clear((to_unsafe as LibGtk::Image*))
      __return_value
    end

    def animation
      __return_value = LibGtk.image_get_animation((to_unsafe as LibGtk::Image*))
      GdkPixbuf::PixbufAnimation.new(__return_value)
    end

    def gicon(gicon, size)
      __return_value = LibGtk.image_get_gicon((to_unsafe as LibGtk::Image*), (gicon.to_unsafe as LibGio::Icon*), Int32.cast(size))
      __return_value
    end

    def icon_name(icon_name, size)
      __return_value = LibGtk.image_get_icon_name((to_unsafe as LibGtk::Image*), icon_name, Int32.cast(size))
      __return_value
    end

    def icon_set(icon_set, size)
      __return_value = LibGtk.image_get_icon_set((to_unsafe as LibGtk::Image*), (icon_set.to_unsafe as LibGtk::IconSet*), Int32.cast(size))
      __return_value
    end

    def pixbuf
      __return_value = LibGtk.image_get_pixbuf((to_unsafe as LibGtk::Image*))
      GdkPixbuf::Pixbuf.new(__return_value)
    end

    def pixel_size
      __return_value = LibGtk.image_get_pixel_size((to_unsafe as LibGtk::Image*))
      __return_value
    end

    def stock(stock_id, size)
      __return_value = LibGtk.image_get_stock((to_unsafe as LibGtk::Image*), stock_id, Int32.cast(size))
      __return_value
    end

    def storage_type
      __return_value = LibGtk.image_get_storage_type((to_unsafe as LibGtk::Image*))
      __return_value
    end

    def from_animation=(animation)
      __return_value = LibGtk.image_set_from_animation((to_unsafe as LibGtk::Image*), (animation.to_unsafe as LibGdkPixbuf::PixbufAnimation*))
      __return_value
    end

    def from_file=(filename)
      __return_value = LibGtk.image_set_from_file((to_unsafe as LibGtk::Image*), filename)
      __return_value
    end

    def from_gicon=(icon, size)
      __return_value = LibGtk.image_set_from_gicon((to_unsafe as LibGtk::Image*), (icon.to_unsafe as LibGio::Icon*), Int32.cast(size))
      __return_value
    end

    def from_icon_name=(icon_name, size)
      __return_value = LibGtk.image_set_from_icon_name((to_unsafe as LibGtk::Image*), icon_name, Int32.cast(size))
      __return_value
    end

    def from_icon_set=(icon_set, size)
      __return_value = LibGtk.image_set_from_icon_set((to_unsafe as LibGtk::Image*), (icon_set.to_unsafe as LibGtk::IconSet*), Int32.cast(size))
      __return_value
    end

    def from_pixbuf=(pixbuf)
      __return_value = LibGtk.image_set_from_pixbuf((to_unsafe as LibGtk::Image*), (pixbuf.to_unsafe as LibGdkPixbuf::Pixbuf*))
      __return_value
    end

    def from_resource=(resource_path)
      __return_value = LibGtk.image_set_from_resource((to_unsafe as LibGtk::Image*), resource_path)
      __return_value
    end

    def from_stock=(stock_id, size)
      __return_value = LibGtk.image_set_from_stock((to_unsafe as LibGtk::Image*), stock_id, Int32.cast(size))
      __return_value
    end

    def from_surface=(surface)
      __return_value = LibGtk.image_set_from_surface((to_unsafe as LibGtk::Image*), (surface.to_unsafe as LibCairo::Surface*))
      __return_value
    end

    def pixel_size=(pixel_size)
      __return_value = LibGtk.image_set_pixel_size((to_unsafe as LibGtk::Image*), Int32.cast(pixel_size))
      __return_value
    end

  end
end

