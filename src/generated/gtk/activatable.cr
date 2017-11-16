module Gtk
  module Activatable
    def do_set_related_action(action)
      LibGtk.activatable_do_set_related_action(@pointer.as(LibGtk::Activatable*), action.to_unsafe.as(LibGtk::Action*))
      nil
    end

    def related_action
      __return_value = LibGtk.activatable_get_related_action(@pointer.as(LibGtk::Activatable*))
      Gtk::Action.new(__return_value)
    end

    def use_action_appearance
      __return_value = LibGtk.activatable_get_use_action_appearance(@pointer.as(LibGtk::Activatable*))
      __return_value
    end

    def related_action=(action)
      LibGtk.activatable_set_related_action(@pointer.as(LibGtk::Activatable*), action.to_unsafe.as(LibGtk::Action*))
      nil
    end

    def use_action_appearance=(use_appearance)
      LibGtk.activatable_set_use_action_appearance(@pointer.as(LibGtk::Activatable*), use_appearance)
      nil
    end

    def sync_action_properties(action)
      LibGtk.activatable_sync_action_properties(@pointer.as(LibGtk::Activatable*), action ? action.to_unsafe.as(LibGtk::Action*) : nil)
      nil
    end

  end
end

