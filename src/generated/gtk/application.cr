module Gtk
  class Application < Gio::Application
    @gtk_application : LibGtk::Application*?
    def initialize(@gtk_application : LibGtk::Application*)
    end

    def to_unsafe
      @gtk_application.not_nil!
    end

    # Implements ActionGroup
    # Implements ActionMap




    def self.new(application_id, flags : Gio::ApplicationFlags) : self
      __return_value = LibGtk.application_new(application_id, flags)
      cast Gtk::Application.new(__return_value)
    end

    def add_accelerator(accelerator, action_name, parameter)
      __return_value = LibGtk.application_add_accelerator(to_unsafe.as(LibGtk::Application*), accelerator, action_name, parameter && parameter.to_unsafe.as(LibGLib::Variant*))
      __return_value
    end

    def add_window(window)
      __return_value = LibGtk.application_add_window(to_unsafe.as(LibGtk::Application*), window.to_unsafe.as(LibGtk::Window*))
      __return_value
    end

    def accels_for_action(detailed_action_name)
      __return_value = LibGtk.application_get_accels_for_action(to_unsafe.as(LibGtk::Application*), detailed_action_name)
      PointerIterator.new(__return_value) {|__item| (raise "Expected string but got null" unless __item; ::String.new(__item)) }
    end

    def actions_for_accel(accel)
      __return_value = LibGtk.application_get_actions_for_accel(to_unsafe.as(LibGtk::Application*), accel)
      PointerIterator.new(__return_value) {|__item| (raise "Expected string but got null" unless __item; ::String.new(__item)) }
    end

    def active_window
      __return_value = LibGtk.application_get_active_window(to_unsafe.as(LibGtk::Application*))
      Gtk::Window.new(__return_value)
    end

    def app_menu
      __return_value = LibGtk.application_get_app_menu(to_unsafe.as(LibGtk::Application*))
      Gio::MenuModel.new(__return_value) if __return_value
    end

    def menu_by_id(id)
      __return_value = LibGtk.application_get_menu_by_id(to_unsafe.as(LibGtk::Application*), id)
      Gio::Menu.new(__return_value)
    end

    def menubar
      __return_value = LibGtk.application_get_menubar(to_unsafe.as(LibGtk::Application*))
      Gio::MenuModel.new(__return_value)
    end

    def window_by_id(id)
      __return_value = LibGtk.application_get_window_by_id(to_unsafe.as(LibGtk::Application*), UInt32.new(id))
      Gtk::Window.new(__return_value) if __return_value
    end

    def windows
      __return_value = LibGtk.application_get_windows(to_unsafe.as(LibGtk::Application*))
      GLib::ListIterator(Gtk::Window, LibGtk::Window*).new(GLib::SList.new(__return_value.as(LibGLib::List*)))
    end

    def inhibit(window, flags : Gtk::ApplicationInhibitFlags, reason)
      __return_value = LibGtk.application_inhibit(to_unsafe.as(LibGtk::Application*), window && window.to_unsafe.as(LibGtk::Window*), flags, reason)
      __return_value
    end

    def inhibited?(flags : Gtk::ApplicationInhibitFlags)
      __return_value = LibGtk.application_is_inhibited(to_unsafe.as(LibGtk::Application*), flags)
      __return_value
    end

    def list_action_descriptions
      __return_value = LibGtk.application_list_action_descriptions(to_unsafe.as(LibGtk::Application*))
      PointerIterator.new(__return_value) {|__item| (raise "Expected string but got null" unless __item; ::String.new(__item)) }
    end

    def prefers_app_menu
      __return_value = LibGtk.application_prefers_app_menu(to_unsafe.as(LibGtk::Application*))
      __return_value
    end

    def remove_accelerator(action_name, parameter)
      __return_value = LibGtk.application_remove_accelerator(to_unsafe.as(LibGtk::Application*), action_name, parameter && parameter.to_unsafe.as(LibGLib::Variant*))
      __return_value
    end

    def remove_window(window)
      __return_value = LibGtk.application_remove_window(to_unsafe.as(LibGtk::Application*), window.to_unsafe.as(LibGtk::Window*))
      __return_value
    end

    def set_accels_for_action(detailed_action_name, accels)
      __return_value = LibGtk.application_set_accels_for_action(to_unsafe.as(LibGtk::Application*), detailed_action_name, accels)
      __return_value
    end

    def app_menu=(app_menu)
      __return_value = LibGtk.application_set_app_menu(to_unsafe.as(LibGtk::Application*), app_menu && app_menu.to_unsafe.as(LibGio::MenuModel*))
      __return_value
    end

    def menubar=(menubar)
      __return_value = LibGtk.application_set_menubar(to_unsafe.as(LibGtk::Application*), menubar && menubar.to_unsafe.as(LibGio::MenuModel*))
      __return_value
    end

    def uninhibit(cookie)
      __return_value = LibGtk.application_uninhibit(to_unsafe.as(LibGtk::Application*), UInt32.new(cookie))
      __return_value
    end

    alias WindowAddedSignal = Application, Gtk::Window ->
    def on_window_added(&__block : WindowAddedSignal)
      __callback = ->(_arg0 : LibGtk::Application*, _arg1 : LibGtk::LibGtk::Window*) {
       __return_value = __block.call(Application.new(_arg0), Gtk::Window.new(_arg1))
       __return_value
      }
      connect("window-added", __callback)
    end

    alias WindowRemovedSignal = Application, Gtk::Window ->
    def on_window_removed(&__block : WindowRemovedSignal)
      __callback = ->(_arg0 : LibGtk::Application*, _arg1 : LibGtk::LibGtk::Window*) {
       __return_value = __block.call(Application.new(_arg0), Gtk::Window.new(_arg1))
       __return_value
      }
      connect("window-removed", __callback)
    end

  end
end

