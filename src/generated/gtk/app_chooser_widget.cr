require "./box"

module Gtk
  class AppChooserWidget < Box
    @pointer : Void*
    def initialize(pointer : LibGtk::AppChooserWidget*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::AppChooserWidget*)
    end

    # Implements ImplementorIface
    # Implements AppChooser
    # Implements Buildable
    # Implements Orientable
    def default_text
      __return_value = LibGtk.app_chooser_widget_get_default_text(to_unsafe.as(LibGtk::AppChooserWidget*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def show_all
      __return_value = LibGtk.app_chooser_widget_get_show_all(to_unsafe.as(LibGtk::AppChooserWidget*))
      __return_value
    end

    def show_default
      __return_value = LibGtk.app_chooser_widget_get_show_default(to_unsafe.as(LibGtk::AppChooserWidget*))
      __return_value
    end

    def show_fallback
      __return_value = LibGtk.app_chooser_widget_get_show_fallback(to_unsafe.as(LibGtk::AppChooserWidget*))
      __return_value
    end

    def show_other
      __return_value = LibGtk.app_chooser_widget_get_show_other(to_unsafe.as(LibGtk::AppChooserWidget*))
      __return_value
    end

    def show_recommended
      __return_value = LibGtk.app_chooser_widget_get_show_recommended(to_unsafe.as(LibGtk::AppChooserWidget*))
      __return_value
    end

    def self.new(content_type) : self
      __return_value = LibGtk.app_chooser_widget_new(content_type.to_unsafe)
      cast Gtk::Widget.new(__return_value)
    end

    def default_text
      __return_value = LibGtk.app_chooser_widget_get_default_text(@pointer.as(LibGtk::AppChooserWidget*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def show_all
      __return_value = LibGtk.app_chooser_widget_get_show_all(@pointer.as(LibGtk::AppChooserWidget*))
      __return_value
    end

    def show_default
      __return_value = LibGtk.app_chooser_widget_get_show_default(@pointer.as(LibGtk::AppChooserWidget*))
      __return_value
    end

    def show_fallback
      __return_value = LibGtk.app_chooser_widget_get_show_fallback(@pointer.as(LibGtk::AppChooserWidget*))
      __return_value
    end

    def show_other
      __return_value = LibGtk.app_chooser_widget_get_show_other(@pointer.as(LibGtk::AppChooserWidget*))
      __return_value
    end

    def show_recommended
      __return_value = LibGtk.app_chooser_widget_get_show_recommended(@pointer.as(LibGtk::AppChooserWidget*))
      __return_value
    end

    def default_text=(text)
      LibGtk.app_chooser_widget_set_default_text(@pointer.as(LibGtk::AppChooserWidget*), text.to_unsafe)
      nil
    end

    def show_all=(setting)
      LibGtk.app_chooser_widget_set_show_all(@pointer.as(LibGtk::AppChooserWidget*), setting)
      nil
    end

    def show_default=(setting)
      LibGtk.app_chooser_widget_set_show_default(@pointer.as(LibGtk::AppChooserWidget*), setting)
      nil
    end

    def show_fallback=(setting)
      LibGtk.app_chooser_widget_set_show_fallback(@pointer.as(LibGtk::AppChooserWidget*), setting)
      nil
    end

    def show_other=(setting)
      LibGtk.app_chooser_widget_set_show_other(@pointer.as(LibGtk::AppChooserWidget*), setting)
      nil
    end

    def show_recommended=(setting)
      LibGtk.app_chooser_widget_set_show_recommended(@pointer.as(LibGtk::AppChooserWidget*), setting)
      nil
    end

    alias ApplicationActivatedSignal = AppChooserWidget, Gio::AppInfo ->
    def on_application_activated(&__block : ApplicationActivatedSignal)
      __callback = ->(_arg0 : LibGtk::AppChooserWidget*, _arg1 : LibGtk::LibGio::AppInfo*) {
       __return_value = __block.call(AppChooserWidget.new(_arg0), _arg1)
       __return_value
      }
      connect("application-activated", __callback)
    end

    alias ApplicationSelectedSignal = AppChooserWidget, Gio::AppInfo ->
    def on_application_selected(&__block : ApplicationSelectedSignal)
      __callback = ->(_arg0 : LibGtk::AppChooserWidget*, _arg1 : LibGtk::LibGio::AppInfo*) {
       __return_value = __block.call(AppChooserWidget.new(_arg0), _arg1)
       __return_value
      }
      connect("application-selected", __callback)
    end

    alias PopulatePopupSignal = AppChooserWidget, Gtk::Menu, Gio::AppInfo ->
    def on_populate_popup(&__block : PopulatePopupSignal)
      __callback = ->(_arg0 : LibGtk::AppChooserWidget*, _arg1 : LibGtk::LibGtk::Menu*, _arg2 : LibGtk::LibGio::AppInfo*) {
       __return_value = __block.call(AppChooserWidget.new(_arg0), Gtk::Menu.new(_arg1), _arg2)
       __return_value
      }
      connect("populate-popup", __callback)
    end

  end
end

