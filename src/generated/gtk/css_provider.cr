module Gtk
  class CssProvider < GObject::Object
    def initialize(@gtk_css_provider)
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
      __return_value = LibGtk.css_provider_load_from_data((to_unsafe as LibGtk::CssProvider*), data, Int64.new(length), pointerof(__error))
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

    def load_from_resource(resource_path)
      __return_value = LibGtk.css_provider_load_from_resource((to_unsafe as LibGtk::CssProvider*), resource_path)
      __return_value
    end

    def to_string
      __return_value = LibGtk.css_provider_to_string((to_unsafe as LibGtk::CssProvider*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    alias ParsingErrorSignal = CssProvider, Gtk::CssSection, LibGLib::Error* -> 
    def on_parsing_error(&__block : ParsingErrorSignal)
      __callback = ->(_arg0 : LibGtk::CssProvider*, _arg1 : LibGtk::LibGtk::CssSection*, _arg2 : LibGtk::LibGLib::Error***) {
       __return_value = __block.call(CssProvider.new(_arg0), Gtk::CssSection.new(_arg1), _arg2)
       __return_value
      }
      connect("parsing-error", __callback)
    end

  end
end

