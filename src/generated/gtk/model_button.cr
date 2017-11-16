require "./button"

module Gtk
  class ModelButton < Button
    @pointer : Void*
    def initialize(pointer : LibGtk::ModelButton*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::ModelButton*)
    end

    # Implements ImplementorIface
    # Implements Actionable
    # Implements Activatable
    # Implements Buildable
    def active
      __return_value = LibGtk.model_button_get_active(to_unsafe.as(LibGtk::ModelButton*))
      __return_value
    end

    def centered
      __return_value = LibGtk.model_button_get_centered(to_unsafe.as(LibGtk::ModelButton*))
      __return_value
    end

    def icon
      __return_value = LibGtk.model_button_get_icon(to_unsafe.as(LibGtk::ModelButton*))
      __return_value
    end

    def iconic
      __return_value = LibGtk.model_button_get_iconic(to_unsafe.as(LibGtk::ModelButton*))
      __return_value
    end

    def inverted
      __return_value = LibGtk.model_button_get_inverted(to_unsafe.as(LibGtk::ModelButton*))
      __return_value
    end

    def menu_name
      __return_value = LibGtk.model_button_get_menu_name(to_unsafe.as(LibGtk::ModelButton*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def role
      __return_value = LibGtk.model_button_get_role(to_unsafe.as(LibGtk::ModelButton*))
      __return_value
    end

    def text
      __return_value = LibGtk.model_button_get_text(to_unsafe.as(LibGtk::ModelButton*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def self.new : self
      __return_value = LibGtk.model_button_new
      cast Gtk::Widget.new(__return_value)
    end

  end
end

