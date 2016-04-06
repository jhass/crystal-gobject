module Gio
  class MenuItem < GObject::Object
    def initialize(@gio_menu_item)
    end

    def to_unsafe
      @gio_menu_item.not_nil!
    end

    def self.new_internal(label, detailed_action)
      __return_value = LibGio.menu_item_new(label && label, detailed_action && detailed_action)
      Gio::MenuItem.new(__return_value)
    end

    def self.new_from_model(model, item_index)
      __return_value = LibGio.menu_item_new_from_model((model.to_unsafe as LibGio::MenuModel*), Int32.new(item_index))
      Gio::MenuItem.new(__return_value)
    end

    def self.new_section(label, section)
      __return_value = LibGio.menu_item_new_section(label && label, (section.to_unsafe as LibGio::MenuModel*))
      Gio::MenuItem.new(__return_value)
    end

    def self.new_submenu(label, submenu)
      __return_value = LibGio.menu_item_new_submenu(label && label, (submenu.to_unsafe as LibGio::MenuModel*))
      Gio::MenuItem.new(__return_value)
    end

    def attribute_value(attribute, expected_type)
      __return_value = LibGio.menu_item_get_attribute_value((to_unsafe as LibGio::MenuItem*), attribute, expected_type && (expected_type.to_unsafe as LibGLib::VariantType*))
      GLib::Variant.new(__return_value)
    end

    def link(link)
      __return_value = LibGio.menu_item_get_link((to_unsafe as LibGio::MenuItem*), link)
      Gio::MenuModel.new(__return_value)
    end

    def set_action_and_target_value(action, target_value)
      __return_value = LibGio.menu_item_set_action_and_target_value((to_unsafe as LibGio::MenuItem*), action && action, target_value && (target_value.to_unsafe as LibGLib::Variant*))
      __return_value
    end

    def set_attribute_value(attribute, value)
      __return_value = LibGio.menu_item_set_attribute_value((to_unsafe as LibGio::MenuItem*), attribute, value && (value.to_unsafe as LibGLib::Variant*))
      __return_value
    end

    def detailed_action=(detailed_action)
      __return_value = LibGio.menu_item_set_detailed_action((to_unsafe as LibGio::MenuItem*), detailed_action)
      __return_value
    end

    def icon=(icon)
      __return_value = LibGio.menu_item_set_icon((to_unsafe as LibGio::MenuItem*), (icon.to_unsafe as LibGio::Icon*))
      __return_value
    end

    def label=(label)
      __return_value = LibGio.menu_item_set_label((to_unsafe as LibGio::MenuItem*), label && label)
      __return_value
    end

    def set_link(link, model)
      __return_value = LibGio.menu_item_set_link((to_unsafe as LibGio::MenuItem*), link, model && (model.to_unsafe as LibGio::MenuModel*))
      __return_value
    end

    def section=(section)
      __return_value = LibGio.menu_item_set_section((to_unsafe as LibGio::MenuItem*), section && (section.to_unsafe as LibGio::MenuModel*))
      __return_value
    end

    def submenu=(submenu)
      __return_value = LibGio.menu_item_set_submenu((to_unsafe as LibGio::MenuItem*), submenu && (submenu.to_unsafe as LibGio::MenuModel*))
      __return_value
    end

  end
end

