module Gtk
  class IMContextInfo
    include GObject::WrappedType

    def self.new(context_id : String|Nil = nil, context_name : String|Nil = nil, domain : String|Nil = nil, domain_dirname : String|Nil = nil, default_locales : String|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(40, 0u8)
      new(ptr.as(LibGtk::IMContextInfo*)).tap do |object|
        object.context_id = context_id unless context_id.nil?
        object.context_name = context_name unless context_name.nil?
        object.domain = domain unless domain.nil?
        object.domain_dirname = domain_dirname unless domain_dirname.nil?
        object.default_locales = default_locales unless default_locales.nil?
      end
    end

    @gtk_i_m_context_info : LibGtk::IMContextInfo*?
    def initialize(@gtk_i_m_context_info : LibGtk::IMContextInfo*)
    end

    def to_unsafe
      @gtk_i_m_context_info.not_nil!
    end

    def context_id
      (raise "Expected string but got null" unless (to_unsafe.value.context_id); ::String.new((to_unsafe.value.context_id)))
    end

    def context_id=(value : String)
      to_unsafe.value.context_id = value.to_unsafe
    end

    def context_name
      (raise "Expected string but got null" unless (to_unsafe.value.context_name); ::String.new((to_unsafe.value.context_name)))
    end

    def context_name=(value : String)
      to_unsafe.value.context_name = value.to_unsafe
    end

    def domain
      (raise "Expected string but got null" unless (to_unsafe.value.domain); ::String.new((to_unsafe.value.domain)))
    end

    def domain=(value : String)
      to_unsafe.value.domain = value.to_unsafe
    end

    def domain_dirname
      (raise "Expected string but got null" unless (to_unsafe.value.domain_dirname); ::String.new((to_unsafe.value.domain_dirname)))
    end

    def domain_dirname=(value : String)
      to_unsafe.value.domain_dirname = value.to_unsafe
    end

    def default_locales
      (raise "Expected string but got null" unless (to_unsafe.value.default_locales); ::String.new((to_unsafe.value.default_locales)))
    end

    def default_locales=(value : String)
      to_unsafe.value.default_locales = value.to_unsafe
    end

  end
end

