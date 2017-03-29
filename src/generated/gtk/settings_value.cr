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
      @gtk_settings_value.not_nil!
    end

    def origin
      (raise "Expected string but got null" unless (to_unsafe.as(LibGtk::SettingsValue*).value.origin); ::String.new((to_unsafe.as(LibGtk::SettingsValue*).value.origin)))
    end

    def origin=(value : String)
      to_unsafe.as(LibGtk::SettingsValue*).value.origin = value
    end

    def value
      GObject::Value.new((to_unsafe.as(LibGtk::SettingsValue*).value.value))
    end

    def value=(value : GObject::Value)
      to_unsafe.as(LibGtk::SettingsValue*).value.value = value
    end

  end
end

