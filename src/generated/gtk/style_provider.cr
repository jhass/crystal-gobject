module Gtk
  module StyleProvider
    def icon_factory(path)
      __return_value = LibGtk.style_provider_get_icon_factory(to_unsafe.as(LibGtk::StyleProvider*), path.to_unsafe.as(LibGtk::WidgetPath*))
      Gtk::IconFactory.new(__return_value)
    end

    def style(path)
      __return_value = LibGtk.style_provider_get_style(to_unsafe.as(LibGtk::StyleProvider*), path.to_unsafe.as(LibGtk::WidgetPath*))
      Gtk::StyleProperties.new(__return_value)
    end

    def style_property(path, state : Gtk::StateFlags, pspec, value)
      __return_value = LibGtk.style_provider_get_style_property(to_unsafe.as(LibGtk::StyleProvider*), path.to_unsafe.as(LibGtk::WidgetPath*), state, pspec.to_unsafe.as(LibGObject::ParamSpec*), value)
      __return_value
    end

  end
end

