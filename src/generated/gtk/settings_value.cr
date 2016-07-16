module Gtk
  class SettingsValue
    include GObject::WrappedType

    def self.new(origin : String|Nil = nil, value : GObject::Value|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(32, 0u8)
      new(ptr.as(LibGtk::SettingsValue*)).tap do |object|
        object.origin = origin unless origin.nil?
        object.value = value unless value.nil?
      end
    end

    @gtk_settings_value : LibGtk::SettingsValue*?
    def initialize(@gtk_settings_value : LibGtk::SettingsValue*)
    end

    def to_unsafe
      @gtk_settings_value.not_nil!.as(Void*)
    end

    def origin
      (raise "Expected string but got null" unless (to_unsafe.value.origin); ::String.new((to_unsafe.value.origin)))
    end

    def origin=(value : String)
      to_unsafe.value.origin = value.to_unsafe
    end

    def value
      GObject::Value.new((to_unsafe.value.value))
    end

    def value=(value : GObject::Value)
      to_unsafe.value.value = value
    end

  end
end

