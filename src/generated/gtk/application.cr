module Gtk
  class Application < Gio::Application
    def initialize @gtk_application
    end

    def to_unsafe
      @gtk_application.not_nil!
    end

    # Implements ActionGroup
    # Implements ActionMap




    def self.new_internal(application_id, flags)
      __return_value = LibGtk.application_new(application_id && application_id, flags)
      Gtk::Application.new(__return_value)
    end

    def add_accelerator(accelerator, action_name, parameter)
      __return_value = LibGtk.application_add_accelerator((to_unsafe as LibGtk::Application*), accelerator, action_name, parameter && (parameter.to_unsafe as LibGLib::Variant*))
      __return_value
    end

    def add_window(window)
      __return_value = LibGtk.application_add_window((to_unsafe as LibGtk::Application*), (window.to_unsafe as LibGtk::Window*))
      __return_value
    end

    def accels_for_action(detailed_action_name)
      __return_value = LibGtk.application_get_accels_for_action((to_unsafe as LibGtk::Application*), detailed_action_name)
      PointerIterator.new(__return_value) {|__item_45| raise "Expected string but got null" unless __item_45; String.new(__item_45) }
    end

    def actions_for_accel(accel)
      __return_value = LibGtk.application_get_actions_for_accel((to_unsafe as LibGtk::Application*), accel)
      PointerIterator.new(__return_value) {|__item_23| raise "Expected string but got null" unless __item_23; String.new(__item_23) }
    end

    def active_window
      __return_value = LibGtk.application_get_active_window((to_unsafe as LibGtk::Application*))
      Gtk::Window.new(__return_value)
    end

    def app_menu
      __return_value = LibGtk.application_get_app_menu((to_unsafe as LibGtk::Application*))
      Gio::MenuModel.new(__return_value)
    end

    def menu_by_id(id)
      __return_value = LibGtk.application_get_menu_by_id((to_unsafe as LibGtk::Application*), id)
      Gio::Menu.new(__return_value)
    end

    def menubar
      __return_value = LibGtk.application_get_menubar((to_unsafe as LibGtk::Application*))
      Gio::MenuModel.new(__return_value)
    end

    def window_by_id(id)
      __return_value = LibGtk.application_get_window_by_id((to_unsafe as LibGtk::Application*), UInt32.cast(id))
      Gtk::Window.new(__return_value)
    end

    def windows
      __return_value = LibGtk.application_get_windows((to_unsafe as LibGtk::Application*))
      __return_value
    end

    def inhibit(window, flags, reason)
      __return_value = LibGtk.application_inhibit((to_unsafe as LibGtk::Application*), window && (window.to_unsafe as LibGtk::Window*), flags, reason && reason)
      __return_value
    end

    def is_inhibited(flags)
      __return_value = LibGtk.application_is_inhibited((to_unsafe as LibGtk::Application*), flags)
      __return_value
    end

    def list_action_descriptions
      __return_value = LibGtk.application_list_action_descriptions((to_unsafe as LibGtk::Application*))
      PointerIterator.new(__return_value) {|__item_60| raise "Expected string but got null" unless __item_60; String.new(__item_60) }
    end

    def prefers_app_menu
      __return_value = LibGtk.application_prefers_app_menu((to_unsafe as LibGtk::Application*))
      __return_value
    end

    def remove_accelerator(action_name, parameter)
      __return_value = LibGtk.application_remove_accelerator((to_unsafe as LibGtk::Application*), action_name, parameter && (parameter.to_unsafe as LibGLib::Variant*))
      __return_value
    end

    def remove_window(window)
      __return_value = LibGtk.application_remove_window((to_unsafe as LibGtk::Application*), (window.to_unsafe as LibGtk::Window*))
      __return_value
    end

    def set_accels_for_action(detailed_action_name, accels)
      __return_value = LibGtk.application_set_accels_for_action((to_unsafe as LibGtk::Application*), detailed_action_name, accels)
      __return_value
    end

    def app_menu=(app_menu)
      __return_value = LibGtk.application_set_app_menu((to_unsafe as LibGtk::Application*), app_menu && (app_menu.to_unsafe as LibGio::MenuModel*))
      __return_value
    end

    def menubar=(menubar)
      __return_value = LibGtk.application_set_menubar((to_unsafe as LibGtk::Application*), menubar && (menubar.to_unsafe as LibGio::MenuModel*))
      __return_value
    end

    def uninhibit(cookie)
      __return_value = LibGtk.application_uninhibit((to_unsafe as LibGtk::Application*), UInt32.cast(cookie))
      __return_value
    end

  end
end

