module Gtk
  class CssProvider < GObject::Object
    def initialize @gtk_css_provider
    end

    def to_unsafe
      @gtk_css_provider.not_nil!
    end

    # Implements StyleProvider
    def self.new_internal
      __return_value = LibGtk.css_provider_new
      Gtk::CssProvider.new(__return_value)
    end

    def self.default
      __return_value = LibGtk.css_provider_get_default
      Gtk::CssProvider.new(__return_value)
    end

    def self.named(name, variant)
      __return_value = LibGtk.css_provider_get_named(name, variant && variant)
      Gtk::CssProvider.new(__return_value)
    end

    def load_from_data(data, length)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGtk.css_provider_load_from_data((to_unsafe as LibGtk::CssProvider*), data, Int64.cast(length), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def load_from_file(file)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGtk.css_provider_load_from_file((to_unsafe as LibGtk::CssProvider*), (file.to_unsafe as LibGio::File*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def load_from_path(path)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGtk.css_provider_load_from_path((to_unsafe as LibGtk::CssProvider*), path, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def to_string
      __return_value = LibGtk.css_provider_to_string((to_unsafe as LibGtk::CssProvider*))
      raise "Expected string but got null" unless __return_value; String.new(__return_value)
    end

  end
end

