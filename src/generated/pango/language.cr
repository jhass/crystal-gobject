module Pango
  class Language
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibPango::Language*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibPango::Language*)
    end

    def sample_string
      __return_value = LibPango.language_get_sample_string(@pointer.as(LibPango::Language*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def scripts(num_scripts)
      __return_value = LibPango.language_get_scripts(@pointer.as(LibPango::Language*), num_scripts)
      PointerIterator.new(__return_value) {|__item| __item } if __return_value
    end

    def includes_script(script : Pango::Script)
      __return_value = LibPango.language_includes_script(@pointer.as(LibPango::Language*), script)
      __return_value
    end

    def matches(range_list)
      __return_value = LibPango.language_matches(@pointer.as(LibPango::Language*), range_list.to_unsafe)
      __return_value
    end

    def to_string
      __return_value = LibPango.language_to_string(@pointer.as(LibPango::Language*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def self.from_string(language)
      __return_value = LibPango.language_from_string(language ? language.to_unsafe : nil)
      Pango::Language.new(__return_value) if __return_value
    end

    def self.default
      __return_value = LibPango.language_get_default
      Pango::Language.new(__return_value)
    end

  end
end

