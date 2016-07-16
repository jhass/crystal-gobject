module Gtk
  module Buildable
    def add_child(builder, child, type)
      __return_value = LibGtk.buildable_add_child(to_unsafe.as(LibGtk::Buildable*), builder.to_unsafe.as(LibGtk::Builder*), child.to_unsafe.as(LibGObject::Object*), type && type.to_unsafe)
      __return_value
    end

    def construct_child(builder, name)
      __return_value = LibGtk.buildable_construct_child(to_unsafe.as(LibGtk::Buildable*), builder.to_unsafe.as(LibGtk::Builder*), name.to_unsafe)
      GObject::Object.new(__return_value)
    end

    def custom_finished(builder, child, tagname, data)
      __return_value = LibGtk.buildable_custom_finished(to_unsafe.as(LibGtk::Buildable*), builder.to_unsafe.as(LibGtk::Builder*), child && child.to_unsafe.as(LibGObject::Object*), tagname.to_unsafe, data && data)
      __return_value
    end

    def custom_tag_end(builder, child, tagname, data)
      __return_value = LibGtk.buildable_custom_tag_end(to_unsafe.as(LibGtk::Buildable*), builder.to_unsafe.as(LibGtk::Builder*), child && child.to_unsafe.as(LibGObject::Object*), tagname.to_unsafe, data && data)
      __return_value
    end

    def custom_tag_start(builder, child, tagname, parser, data)
      __return_value = LibGtk.buildable_custom_tag_start(to_unsafe.as(LibGtk::Buildable*), builder.to_unsafe.as(LibGtk::Builder*), child && child.to_unsafe.as(LibGObject::Object*), tagname.to_unsafe, parser, data)
      __return_value
    end

    def internal_child(builder, childname)
      __return_value = LibGtk.buildable_get_internal_child(to_unsafe.as(LibGtk::Buildable*), builder.to_unsafe.as(LibGtk::Builder*), childname.to_unsafe)
      GObject::Object.new(__return_value)
    end

    def name
      __return_value = LibGtk.buildable_get_name(to_unsafe.as(LibGtk::Buildable*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def parser_finished(builder)
      __return_value = LibGtk.buildable_parser_finished(to_unsafe.as(LibGtk::Buildable*), builder.to_unsafe.as(LibGtk::Builder*))
      __return_value
    end

    def set_buildable_property(builder, name, value)
      __return_value = LibGtk.buildable_set_buildable_property(to_unsafe.as(LibGtk::Buildable*), builder.to_unsafe.as(LibGtk::Builder*), name.to_unsafe, value.to_unsafe.as(LibGObject::Value*))
      __return_value
    end

    def name=(name)
      __return_value = LibGtk.buildable_set_name(to_unsafe.as(LibGtk::Buildable*), name.to_unsafe)
      __return_value
    end

  end
end

