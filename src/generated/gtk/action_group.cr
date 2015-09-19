module Gtk
  class ActionGroup < GObject::Object
    def initialize @gtk_action_group
    end

    def to_unsafe
      @gtk_action_group.not_nil!
    end

    # Implements Buildable




    def self.new_internal(name)
      __return_value = LibGtk.action_group_new(name)
      Gtk::ActionGroup.new(__return_value)
    end

    def add_action(action)
      __return_value = LibGtk.action_group_add_action((to_unsafe as LibGtk::ActionGroup*), (action.to_unsafe as LibGtk::Action*))
      __return_value
    end

    def add_action_with_accel(action, accelerator)
      __return_value = LibGtk.action_group_add_action_with_accel((to_unsafe as LibGtk::ActionGroup*), (action.to_unsafe as LibGtk::Action*), accelerator && accelerator)
      __return_value
    end

    def accel_group
      __return_value = LibGtk.action_group_get_accel_group((to_unsafe as LibGtk::ActionGroup*))
      Gtk::AccelGroup.new(__return_value)
    end

    def action(action_name)
      __return_value = LibGtk.action_group_get_action((to_unsafe as LibGtk::ActionGroup*), action_name)
      Gtk::Action.new(__return_value)
    end

    def name
      __return_value = LibGtk.action_group_get_name((to_unsafe as LibGtk::ActionGroup*))
      raise "Expected string but got null" unless __return_value; String.new(__return_value)
    end

    def sensitive
      __return_value = LibGtk.action_group_get_sensitive((to_unsafe as LibGtk::ActionGroup*))
      __return_value
    end

    def visible
      __return_value = LibGtk.action_group_get_visible((to_unsafe as LibGtk::ActionGroup*))
      __return_value
    end

    def list_actions
      __return_value = LibGtk.action_group_list_actions((to_unsafe as LibGtk::ActionGroup*))
      __return_value
    end

    def remove_action(action)
      __return_value = LibGtk.action_group_remove_action((to_unsafe as LibGtk::ActionGroup*), (action.to_unsafe as LibGtk::Action*))
      __return_value
    end

    def accel_group=(accel_group)
      __return_value = LibGtk.action_group_set_accel_group((to_unsafe as LibGtk::ActionGroup*), accel_group && (accel_group.to_unsafe as LibGtk::AccelGroup*))
      __return_value
    end

    def sensitive=(sensitive)
      __return_value = LibGtk.action_group_set_sensitive((to_unsafe as LibGtk::ActionGroup*), Bool.new(sensitive))
      __return_value
    end

    def set_translate_func(func : LibGtk::TranslateFunc, data, notify : LibGLib::DestroyNotify)
      __return_value = LibGtk.action_group_set_translate_func((to_unsafe as LibGtk::ActionGroup*), func, data, notify)
      __return_value
    end

    def translation_domain=(domain)
      __return_value = LibGtk.action_group_set_translation_domain((to_unsafe as LibGtk::ActionGroup*), domain && domain)
      __return_value
    end

    def visible=(visible)
      __return_value = LibGtk.action_group_set_visible((to_unsafe as LibGtk::ActionGroup*), Bool.new(visible))
      __return_value
    end

    def translate_string(string)
      __return_value = LibGtk.action_group_translate_string((to_unsafe as LibGtk::ActionGroup*), string)
      raise "Expected string but got null" unless __return_value; String.new(__return_value)
    end

  end
end

