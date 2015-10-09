module Gst
  module Preset
    def self.app_dir
      __return_value = LibGst.preset_get_app_dir
      (raise "Expected string but got null" unless __return_value; String.new(__return_value)) if __return_value
    end

    def self.set_app_dir(app_dir)
      __return_value = LibGst.preset_set_app_dir(app_dir)
      __return_value
    end

    def delete_preset(name)
      __return_value = LibGst.preset_delete_preset((to_unsafe as LibGst::Preset*), name)
      __return_value
    end

    def meta(name, tag, value)
      __return_value = LibGst.preset_get_meta((to_unsafe as LibGst::Preset*), name, tag, value)
      __return_value
    end

    def preset_names
      __return_value = LibGst.preset_get_preset_names((to_unsafe as LibGst::Preset*))
      PointerIterator.new(__return_value) {|__item_8| (raise "Expected string but got null" unless __item_8; String.new(__item_8)) }
    end

    def property_names
      __return_value = LibGst.preset_get_property_names((to_unsafe as LibGst::Preset*))
      PointerIterator.new(__return_value) {|__item_88| (raise "Expected string but got null" unless __item_88; String.new(__item_88)) }
    end

    def editable?
      __return_value = LibGst.preset_is_editable((to_unsafe as LibGst::Preset*))
      __return_value
    end

    def load_preset(name)
      __return_value = LibGst.preset_load_preset((to_unsafe as LibGst::Preset*), name)
      __return_value
    end

    def rename_preset(old_name, new_name)
      __return_value = LibGst.preset_rename_preset((to_unsafe as LibGst::Preset*), old_name, new_name)
      __return_value
    end

    def save_preset(name)
      __return_value = LibGst.preset_save_preset((to_unsafe as LibGst::Preset*), name)
      __return_value
    end

    def set_meta(name, tag, value)
      __return_value = LibGst.preset_set_meta((to_unsafe as LibGst::Preset*), name, tag, value && value)
      __return_value
    end

  end
end

