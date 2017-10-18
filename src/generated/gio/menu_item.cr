module Gio
  class MenuItem < GObject::Object
    @gio_menu_item : LibGio::MenuItem*?
    def initialize(@gio_menu_item : LibGio::MenuItem*)
    end

    def to_unsafe
      @gio_menu_item.not_nil!
    end

    def self.new(label, detailed_action) : self
      __return_value = LibGio.menu_item_new(label ? label.to_unsafe : nil, detailed_action ? detailed_action.to_unsafe : nil)
      cast Gio::MenuItem.new(__return_value)
    end

    def self.new_from_model(model, item_index) : self
      __return_value = LibGio.menu_item_new_from_model(model.to_unsafe.as(LibGio::MenuModel*), Int32.new(item_index))
      cast Gio::MenuItem.new(__return_value)
    end

    def self.new_section(label, section) : self
      __return_value = LibGio.menu_item_new_section(label ? label.to_unsafe : nil, section.to_unsafe.as(LibGio::MenuModel*))
      cast Gio::MenuItem.new(__return_value)
    end

    def self.new_submenu(label, submenu) : self
      __return_value = LibGio.menu_item_new_submenu(label ? label.to_unsafe : nil, submenu.to_unsafe.as(LibGio::MenuModel*))
      cast Gio::MenuItem.new(__return_value)
    end

    def attribute_value(attribute, expected_type)
      __return_value = LibGio.menu_item_get_attribute_value(to_unsafe.as(LibGio::MenuItem*), attribute.to_unsafe, expected_type ? expected_type.to_unsafe.as(LibGLib::VariantType*) : nil)
      GLib::Variant.new(__return_value)
    end

    def link(link)
      __return_value = LibGio.menu_item_get_link(to_unsafe.as(LibGio::MenuItem*), link.to_unsafe)
      Gio::MenuModel.new(__return_value)
    end

    def set_action_and_target_value(action, target_value)
      LibGio.menu_item_set_action_and_target_value(to_unsafe.as(LibGio::MenuItem*), action ? action.to_unsafe : nil, target_value ? target_value.to_unsafe.as(LibGLib::Variant*) : nil)
      nil
    end

    def set_attribute_value(attribute, value)
      LibGio.menu_item_set_attribute_value(to_unsafe.as(LibGio::MenuItem*), attribute.to_unsafe, value ? value.to_unsafe.as(LibGLib::Variant*) : nil)
      nil
    end

    def detailed_action=(detailed_action)
      LibGio.menu_item_set_detailed_action(to_unsafe.as(LibGio::MenuItem*), detailed_action.to_unsafe)
      nil
    end

    def icon=(icon)
      LibGio.menu_item_set_icon(to_unsafe.as(LibGio::MenuItem*), icon.to_unsafe.as(LibGio::Icon*))
      nil
    end

    def label=(label)
      LibGio.menu_item_set_label(to_unsafe.as(LibGio::MenuItem*), label ? label.to_unsafe : nil)
      nil
    end

    def set_link(link, model)
      LibGio.menu_item_set_link(to_unsafe.as(LibGio::MenuItem*), link.to_unsafe, model ? model.to_unsafe.as(LibGio::MenuModel*) : nil)
      nil
    end

    def section=(section)
      LibGio.menu_item_set_section(to_unsafe.as(LibGio::MenuItem*), section ? section.to_unsafe.as(LibGio::MenuModel*) : nil)
      nil
    end

    def submenu=(submenu)
      LibGio.menu_item_set_submenu(to_unsafe.as(LibGio::MenuItem*), submenu ? submenu.to_unsafe.as(LibGio::MenuModel*) : nil)
      nil
    end

  end
end

