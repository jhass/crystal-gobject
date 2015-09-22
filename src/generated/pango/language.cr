module Pango
  class Language
    include GObject::WrappedType

    def initialize @pango_language
    end

    def to_unsafe
      @pango_language.not_nil!
    end

    def sample_string
      __return_value = LibPango.language_get_sample_string((to_unsafe as LibPango::Language*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def scripts(num_scripts)
      __return_value = LibPango.language_get_scripts((to_unsafe as LibPango::Language*), Int32.new(num_scripts))
      PointerIterator.new(__return_value) {|__item_41| __item_41 }
    end

    def includes_script(script)
      __return_value = LibPango.language_includes_script((to_unsafe as LibPango::Language*), script)
      __return_value
    end

    def matches(range_list)
      __return_value = LibPango.language_matches((to_unsafe as LibPango::Language*), range_list)
      __return_value
    end

    def to_string
      __return_value = LibPango.language_to_string((to_unsafe as LibPango::Language*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def self.from_string(language)
      __return_value = LibPango.language_from_string(language && language)
      Pango::Language.new(__return_value)
    end

    def self.default
      __return_value = LibPango.language_get_default
      Pango::Language.new(__return_value)
    end

  end
end

