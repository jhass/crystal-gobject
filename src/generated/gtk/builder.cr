module Gtk
  class Builder < GObject::Object
    @gtk_builder : LibGtk::Builder*?
    def initialize(@gtk_builder : LibGtk::Builder*)
    end

    def to_unsafe
      @gtk_builder.not_nil!
    end

    def translation_domain
      __return_value = LibGtk.builder_get_translation_domain(to_unsafe.as(LibGtk::Builder*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def self.new : self
      __return_value = LibGtk.builder_new
      cast Gtk::Builder.new(__return_value)
    end

    def self.new_from_file(filename) : self
      __return_value = LibGtk.builder_new_from_file(filename.to_unsafe)
      cast Gtk::Builder.new(__return_value)
    end

    def self.new_from_resource(resource_path) : self
      __return_value = LibGtk.builder_new_from_resource(resource_path.to_unsafe)
      cast Gtk::Builder.new(__return_value)
    end

    def self.new_from_string(string, length) : self
      __return_value = LibGtk.builder_new_from_string(string.to_unsafe, Int64.new(length))
      cast Gtk::Builder.new(__return_value)
    end

    def add_callback_symbol(callback_name, callback_symbol)
      LibGtk.builder_add_callback_symbol(to_unsafe.as(LibGtk::Builder*), callback_name.to_unsafe, callback_symbol)
      nil
    end

    def add_from_file(filename)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGtk.builder_add_from_file(to_unsafe.as(LibGtk::Builder*), filename.to_unsafe, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def add_from_resource(resource_path)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGtk.builder_add_from_resource(to_unsafe.as(LibGtk::Builder*), resource_path.to_unsafe, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def add_from_string(buffer, length)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGtk.builder_add_from_string(to_unsafe.as(LibGtk::Builder*), buffer.to_unsafe, UInt64.new(length), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def add_objects_from_file(filename, object_ids)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGtk.builder_add_objects_from_file(to_unsafe.as(LibGtk::Builder*), filename.to_unsafe, object_ids, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def add_objects_from_resource(resource_path, object_ids)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGtk.builder_add_objects_from_resource(to_unsafe.as(LibGtk::Builder*), resource_path.to_unsafe, object_ids, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def add_objects_from_string(buffer, length, object_ids)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGtk.builder_add_objects_from_string(to_unsafe.as(LibGtk::Builder*), buffer.to_unsafe, UInt64.new(length), object_ids, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def connect_signals(user_data)
      LibGtk.builder_connect_signals(to_unsafe.as(LibGtk::Builder*), user_data ? user_data : nil)
      nil
    end

    def connect_signals_full(func, user_data)
      LibGtk.builder_connect_signals_full(to_unsafe.as(LibGtk::Builder*), func, user_data ? user_data : nil)
      nil
    end

    def expose_object(name, object)
      LibGtk.builder_expose_object(to_unsafe.as(LibGtk::Builder*), name.to_unsafe, object.to_unsafe.as(LibGObject::Object*))
      nil
    end

    def extend_with_template(widget, template_type, buffer, length)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGtk.builder_extend_with_template(to_unsafe.as(LibGtk::Builder*), widget.to_unsafe.as(LibGtk::Widget*), UInt64.new(template_type), buffer.to_unsafe, UInt64.new(length), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def application
      __return_value = LibGtk.builder_get_application(to_unsafe.as(LibGtk::Builder*))
      Gtk::Application.new(__return_value) if __return_value
    end

    def object(name)
      __return_value = LibGtk.builder_get_object(to_unsafe.as(LibGtk::Builder*), name.to_unsafe)
      GObject::Object.new(__return_value) if __return_value
    end

    def objects
      __return_value = LibGtk.builder_get_objects(to_unsafe.as(LibGtk::Builder*))
      GLib::SListIterator(GObject::Object, LibGObject::Object*).new(GLib::SList.new(__return_value.as(LibGLib::SList*)))
    end

    def translation_domain
      __return_value = LibGtk.builder_get_translation_domain(to_unsafe.as(LibGtk::Builder*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def type_from_name(type_name)
      __return_value = LibGtk.builder_get_type_from_name(to_unsafe.as(LibGtk::Builder*), type_name.to_unsafe)
      __return_value
    end

    def application=(application)
      LibGtk.builder_set_application(to_unsafe.as(LibGtk::Builder*), application.to_unsafe.as(LibGtk::Application*))
      nil
    end

    def translation_domain=(domain)
      LibGtk.builder_set_translation_domain(to_unsafe.as(LibGtk::Builder*), domain ? domain.to_unsafe : nil)
      nil
    end

    def value_from_string(pspec, string, value)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGtk.builder_value_from_string(to_unsafe.as(LibGtk::Builder*), pspec.to_unsafe.as(LibGObject::ParamSpec*), string.to_unsafe, value, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def value_from_string_type(type, string, value)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGtk.builder_value_from_string_type(to_unsafe.as(LibGtk::Builder*), UInt64.new(type), string.to_unsafe, value, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

  end
end

