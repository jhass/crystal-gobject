module Gtk
  module Activatable
    def do_set_related_action(action)
      __return_value = LibGtk.activatable_do_set_related_action(to_unsafe.as(LibGtk::Activatable*), action.to_unsafe.as(LibGtk::Action*))
      __return_value
    end

    def related_action
      __return_value = LibGtk.activatable_get_related_action(to_unsafe.as(LibGtk::Activatable*))
      Gtk::Action.new(__return_value)
    end

    def use_action_appearance
      __return_value = LibGtk.activatable_get_use_action_appearance(to_unsafe.as(LibGtk::Activatable*))
      __return_value
    end

    def related_action=(action)
      __return_value = LibGtk.activatable_set_related_action(to_unsafe.as(LibGtk::Activatable*), action.to_unsafe.as(LibGtk::Action*))
      __return_value
    end

    def use_action_appearance=(use_appearance)
      __return_value = LibGtk.activatable_set_use_action_appearance(to_unsafe.as(LibGtk::Activatable*), use_appearance)
      __return_value
    end

    def sync_action_properties(action)
      __return_value = LibGtk.activatable_sync_action_properties(to_unsafe.as(LibGtk::Activatable*), action ? action.to_unsafe.as(LibGtk::Action*) : nil)
      __return_value
    end

  end
end

