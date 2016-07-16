module Atk
  module Image
    def image_description
      __return_value = LibAtk.image_get_image_description(to_unsafe.as(LibAtk::Image*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def image_locale
      __return_value = LibAtk.image_get_image_locale(to_unsafe.as(LibAtk::Image*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value)) if __return_value
    end

    def image_position(x, y, coord_type)
      __return_value = LibAtk.image_get_image_position(to_unsafe.as(LibAtk::Image*), x, y, coord_type)
      __return_value
    end

    def image_size(width, height)
      __return_value = LibAtk.image_get_image_size(to_unsafe.as(LibAtk::Image*), width, height)
      __return_value
    end

    def image_description=(description)
      __return_value = LibAtk.image_set_image_description(to_unsafe.as(LibAtk::Image*), description.to_unsafe)
      __return_value
    end

  end
end

