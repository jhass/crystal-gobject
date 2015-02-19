module Atk
  module Document
    def attribute_value(attribute_name)
      __return_value = LibAtk.document_get_attribute_value((to_unsafe as LibAtk::Document*), attribute_name)
      raise "Expected string but got null" unless __return_value; String.new(__return_value) if __return_value
    end

    def attributes
      __return_value = LibAtk.document_get_attributes((to_unsafe as LibAtk::Document*))
      __return_value
    end

    def current_page_number
      __return_value = LibAtk.document_get_current_page_number((to_unsafe as LibAtk::Document*))
      __return_value
    end

    def document
      __return_value = LibAtk.document_get_document((to_unsafe as LibAtk::Document*))
      __return_value
    end

    def document_type
      __return_value = LibAtk.document_get_document_type((to_unsafe as LibAtk::Document*))
      raise "Expected string but got null" unless __return_value; String.new(__return_value)
    end

    def locale
      __return_value = LibAtk.document_get_locale((to_unsafe as LibAtk::Document*))
      raise "Expected string but got null" unless __return_value; String.new(__return_value)
    end

    def page_count
      __return_value = LibAtk.document_get_page_count((to_unsafe as LibAtk::Document*))
      __return_value
    end

    def attribute_value=(attribute_name, attribute_value)
      __return_value = LibAtk.document_set_attribute_value((to_unsafe as LibAtk::Document*), attribute_name, attribute_value)
      __return_value
    end

  end
end

