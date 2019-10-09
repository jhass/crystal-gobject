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
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "default_text", gvalue)
      gvalue.string
    end

    def show_all
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "show_all", gvalue)
      gvalue.boolean
    end

    def show_default
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "show_default", gvalue)
      gvalue.boolean
    end

    def show_fallback
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "show_fallback", gvalue)
      gvalue.boolean
    end

    def show_other
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "show_other", gvalue)
      gvalue.boolean
    end

    def show_recommended
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "show_recommended", gvalue)
      gvalue.boolean
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
      __callback = ->(_arg0 : LibGtk::AppChooserWidget*, _arg1 : LibGio::AppInfo*) {
       __return_value = __block.call(AppChooserWidget.new(_arg0), _arg1)
       __return_value
      }
      connect("application-activated", __callback)
    end

    alias ApplicationSelectedSignal = AppChooserWidget, Gio::AppInfo ->
    def on_application_selected(&__block : ApplicationSelectedSignal)
      __callback = ->(_arg0 : LibGtk::AppChooserWidget*, _arg1 : LibGio::AppInfo*) {
       __return_value = __block.call(AppChooserWidget.new(_arg0), _arg1)
       __return_value
      }
      connect("application-selected", __callback)
    end

    alias PopulatePopupSignal = AppChooserWidget, Gtk::Menu, Gio::AppInfo ->
    def on_populate_popup(&__block : PopulatePopupSignal)
      __callback = ->(_arg0 : LibGtk::AppChooserWidget*, _arg1 : LibGtk::Menu**, _arg2 : LibGio::AppInfo*) {
       __return_value = __block.call(AppChooserWidget.new(_arg0), Gtk::Menu.new(_arg1), _arg2)
       __return_value
      }
      connect("populate-popup", __callback)
    end

  end
end

