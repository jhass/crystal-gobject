module Gtk
  class UIManager < GObject::Object
    def initialize @gtk_u_i_manager
    end

    def to_unsafe
      @gtk_u_i_manager.not_nil!
    end

    # Implements Buildable
    def add_tearoffs=(__value)
      LibGtk.u_i_manager_set_add_tearoffs((to_unsafe as LibGtk::UIManager*), Bool.cast(__value))
    end


    def self.new_internal
      __return_value = LibGtk.u_i_manager_new
      Gtk::UIManager.new(__return_value)
    end

    def add_ui(merge_id, path, name, action, type, top)
      __return_value = LibGtk.u_i_manager_add_ui((to_unsafe as LibGtk::UIManager*), UInt32.cast(merge_id), path, name, action, type, Bool.cast(top))
      __return_value
    end

    def add_ui_from_file(filename)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGtk.u_i_manager_add_ui_from_file((to_unsafe as LibGtk::UIManager*), filename, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def add_ui_from_resource(resource_path)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGtk.u_i_manager_add_ui_from_resource((to_unsafe as LibGtk::UIManager*), resource_path, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def add_ui_from_string(buffer, length)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGtk.u_i_manager_add_ui_from_string((to_unsafe as LibGtk::UIManager*), buffer, Int64.cast(length), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def ensure_update
      __return_value = LibGtk.u_i_manager_ensure_update((to_unsafe as LibGtk::UIManager*))
      __return_value
    end

    def accel_group
      __return_value = LibGtk.u_i_manager_get_accel_group((to_unsafe as LibGtk::UIManager*))
      Gtk::AccelGroup.new(__return_value)
    end

    def action(path)
      __return_value = LibGtk.u_i_manager_get_action((to_unsafe as LibGtk::UIManager*), path)
      Gtk::Action.new(__return_value)
    end

    def action_groups
      __return_value = LibGtk.u_i_manager_get_action_groups((to_unsafe as LibGtk::UIManager*))
      __return_value
    end

    def add_tearoffs
      __return_value = LibGtk.u_i_manager_get_add_tearoffs((to_unsafe as LibGtk::UIManager*))
      __return_value
    end

    def toplevels(types)
      __return_value = LibGtk.u_i_manager_get_toplevels((to_unsafe as LibGtk::UIManager*), types)
      __return_value
    end

    def ui
      __return_value = LibGtk.u_i_manager_get_ui((to_unsafe as LibGtk::UIManager*))
      raise "Expected string but got null" unless __return_value; String.new(__return_value)
    end

    def widget(path)
      __return_value = LibGtk.u_i_manager_get_widget((to_unsafe as LibGtk::UIManager*), path)
      Gtk::Widget.new(__return_value)
    end

    def insert_action_group(action_group, pos)
      __return_value = LibGtk.u_i_manager_insert_action_group((to_unsafe as LibGtk::UIManager*), (action_group.to_unsafe as LibGtk::ActionGroup*), Int32.cast(pos))
      __return_value
    end

    def new_merge_id
      __return_value = LibGtk.u_i_manager_new_merge_id((to_unsafe as LibGtk::UIManager*))
      __return_value
    end

    def remove_action_group(action_group)
      __return_value = LibGtk.u_i_manager_remove_action_group((to_unsafe as LibGtk::UIManager*), (action_group.to_unsafe as LibGtk::ActionGroup*))
      __return_value
    end

    def remove_ui(merge_id)
      __return_value = LibGtk.u_i_manager_remove_ui((to_unsafe as LibGtk::UIManager*), UInt32.cast(merge_id))
      __return_value
    end

    def add_tearoffs=(add_tearoffs)
      __return_value = LibGtk.u_i_manager_set_add_tearoffs((to_unsafe as LibGtk::UIManager*), Bool.cast(add_tearoffs))
      __return_value
    end

  end
end

