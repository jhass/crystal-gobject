module Gtk
  class Builder < GObject::Object
    def initialize(@gtk_builder)
    end

    def to_unsafe
      @gtk_builder.not_nil!
    end


    def self.new_internal
      __return_value = LibGtk.builder_new
      Gtk::Builder.new(__return_value)
    end

    def self.new_from_file(filename)
      __return_value = LibGtk.builder_new_from_file(filename)
      Gtk::Builder.new(__return_value)
    end

    def self.new_from_resource(resource_path)
      __return_value = LibGtk.builder_new_from_resource(resource_path)
      Gtk::Builder.new(__return_value)
    end

    def self.new_from_string(string, length)
      __return_value = LibGtk.builder_new_from_string(string, Int64.new(length))
      Gtk::Builder.new(__return_value)
    end

    def add_callback_symbol(callback_name, callback_symbol : LibGObject::Callback)
      __return_value = LibGtk.builder_add_callback_symbol((to_unsafe as LibGtk::Builder*), callback_name, callback_symbol)
      __return_value
    end

    def add_from_file(filename)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGtk.builder_add_from_file((to_unsafe as LibGtk::Builder*), filename, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def add_from_resource(resource_path)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGtk.builder_add_from_resource((to_unsafe as LibGtk::Builder*), resource_path, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def add_from_string(buffer, length)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGtk.builder_add_from_string((to_unsafe as LibGtk::Builder*), buffer, UInt64.new(length), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def add_objects_from_file(filename, object_ids)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGtk.builder_add_objects_from_file((to_unsafe as LibGtk::Builder*), filename, object_ids, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def add_objects_from_resource(resource_path, object_ids)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGtk.builder_add_objects_from_resource((to_unsafe as LibGtk::Builder*), resource_path, object_ids, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def add_objects_from_string(buffer, length, object_ids)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGtk.builder_add_objects_from_string((to_unsafe as LibGtk::Builder*), buffer, UInt64.new(length), object_ids, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def connect_signals(user_data)
      __return_value = LibGtk.builder_connect_signals((to_unsafe as LibGtk::Builder*), user_data)
      __return_value
    end

    def connect_signals_full(func : LibGtk::BuilderConnectFunc, user_data)
      __return_value = LibGtk.builder_connect_signals_full((to_unsafe as LibGtk::Builder*), func, user_data)
      __return_value
    end

    def expose_object(name, object)
      __return_value = LibGtk.builder_expose_object((to_unsafe as LibGtk::Builder*), name, (object.to_unsafe as LibGObject::Object*))
      __return_value
    end

    def application
      __return_value = LibGtk.builder_get_application((to_unsafe as LibGtk::Builder*))
      Gtk::Application.new(__return_value)
    end

    def object(name)
      __return_value = LibGtk.builder_get_object((to_unsafe as LibGtk::Builder*), name)
      GObject::Object.new(__return_value)
    end

    def objects
      __return_value = LibGtk.builder_get_objects((to_unsafe as LibGtk::Builder*))
      __return_value
    end

    def translation_domain
      __return_value = LibGtk.builder_get_translation_domain((to_unsafe as LibGtk::Builder*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def type_from_name(type_name)
      __return_value = LibGtk.builder_get_type_from_name((to_unsafe as LibGtk::Builder*), type_name)
      __return_value
    end

    def application=(application)
      __return_value = LibGtk.builder_set_application((to_unsafe as LibGtk::Builder*), (application.to_unsafe as LibGtk::Application*))
      __return_value
    end

    def translation_domain=(domain)
      __return_value = LibGtk.builder_set_translation_domain((to_unsafe as LibGtk::Builder*), domain && domain)
      __return_value
    end

    def value_from_string(pspec, string, value)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGtk.builder_value_from_string((to_unsafe as LibGtk::Builder*), (pspec.to_unsafe as LibGObject::ParamSpec*), string, value, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def value_from_string_type(type, string, value)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGtk.builder_value_from_string_type((to_unsafe as LibGtk::Builder*), UInt64.new(type), string, value, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

  end
end

