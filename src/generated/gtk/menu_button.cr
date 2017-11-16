require "./toggle_button"

module Gtk
  class MenuButton < ToggleButton
    @pointer : Void*
    def initialize(pointer : LibGtk::MenuButton*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::MenuButton*)
    end

    # Implements ImplementorIface
    # Implements Actionable
    # Implements Activatable
    # Implements Buildable
    def align_widget
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "align_widget", gvalue)
      Gtk::Container.cast(gvalue.object)
    end

    def direction
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "direction", gvalue)
      gvalue.enum
    end

    def menu_model
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "menu_model", gvalue)
      Gio::MenuModel.cast(gvalue.object)
    end

    def popover
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "popover", gvalue)
      Gtk::Popover.cast(gvalue.object)
    end

    def popup
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "popup", gvalue)
      Gtk::Menu.cast(gvalue.object)
    end

    def use_popover
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "use_popover", gvalue)
      gvalue.boolean
    end

    def self.new : self
      __return_value = LibGtk.menu_button_new
      cast Gtk::Widget.new(__return_value)
    end

    def align_widget
      __return_value = LibGtk.menu_button_get_align_widget(@pointer.as(LibGtk::MenuButton*))
      Gtk::Widget.new(__return_value) if __return_value
    end

    def direction
      __return_value = LibGtk.menu_button_get_direction(@pointer.as(LibGtk::MenuButton*))
      __return_value
    end

    def menu_model
      __return_value = LibGtk.menu_button_get_menu_model(@pointer.as(LibGtk::MenuButton*))
      Gio::MenuModel.new(__return_value) if __return_value
    end

    def popover
      __return_value = LibGtk.menu_button_get_popover(@pointer.as(LibGtk::MenuButton*))
      Gtk::Popover.new(__return_value) if __return_value
    end

    def popup
      __return_value = LibGtk.menu_button_get_popup(@pointer.as(LibGtk::MenuButton*))
      Gtk::Menu.new(__return_value) if __return_value
    end

    def use_popover
      __return_value = LibGtk.menu_button_get_use_popover(@pointer.as(LibGtk::MenuButton*))
      __return_value
    end

    def align_widget=(align_widget)
      LibGtk.menu_button_set_align_widget(@pointer.as(LibGtk::MenuButton*), align_widget ? align_widget.to_unsafe.as(LibGtk::Widget*) : nil)
      nil
    end

    def direction=(direction : Gtk::ArrowType)
      LibGtk.menu_button_set_direction(@pointer.as(LibGtk::MenuButton*), direction)
      nil
    end

    def menu_model=(menu_model)
      LibGtk.menu_button_set_menu_model(@pointer.as(LibGtk::MenuButton*), menu_model ? menu_model.to_unsafe.as(LibGio::MenuModel*) : nil)
      nil
    end

    def popover=(popover)
      LibGtk.menu_button_set_popover(@pointer.as(LibGtk::MenuButton*), popover ? popover.to_unsafe.as(LibGtk::Widget*) : nil)
      nil
    end

    def popup=(menu)
      LibGtk.menu_button_set_popup(@pointer.as(LibGtk::MenuButton*), menu ? menu.to_unsafe.as(LibGtk::Widget*) : nil)
      nil
    end

    def use_popover=(use_popover)
      LibGtk.menu_button_set_use_popover(@pointer.as(LibGtk::MenuButton*), use_popover)
      nil
    end

  end
end

