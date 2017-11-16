module Atk
  module Image
    def image_description
      __return_value = LibAtk.image_get_image_description(@pointer.as(LibAtk::Image*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def image_locale
      __return_value = LibAtk.image_get_image_locale(@pointer.as(LibAtk::Image*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value)) if __return_value
    end

    def image_position(x, y, coord_type : Atk::CoordType)
      LibAtk.image_get_image_position(@pointer.as(LibAtk::Image*), x, y, coord_type)
      nil
    end

    def image_size(width, height)
      LibAtk.image_get_image_size(@pointer.as(LibAtk::Image*), width, height)
      nil
    end

    def image_description=(description)
      __return_value = LibAtk.image_set_image_description(@pointer.as(LibAtk::Image*), description.to_unsafe)
      __return_value
    end

  end
end

