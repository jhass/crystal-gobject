module Gtk
  module Buildable
    def add_child(builder, child, type)
      LibGtk.buildable_add_child(@pointer.as(LibGtk::Buildable*), builder.to_unsafe.as(LibGtk::Builder*), child.to_unsafe.as(LibGObject::Object*), type ? type.to_unsafe : nil)
      nil
    end

    def construct_child(builder, name)
      __return_value = LibGtk.buildable_construct_child(@pointer.as(LibGtk::Buildable*), builder.to_unsafe.as(LibGtk::Builder*), name.to_unsafe)
      GObject::Object.new(__return_value)
    end

    def custom_finished(builder, child, tagname, data)
      LibGtk.buildable_custom_finished(@pointer.as(LibGtk::Buildable*), builder.to_unsafe.as(LibGtk::Builder*), child ? child.to_unsafe.as(LibGObject::Object*) : nil, tagname.to_unsafe, data ? data : nil)
      nil
    end

    def custom_tag_end(builder, child, tagname, data)
      LibGtk.buildable_custom_tag_end(@pointer.as(LibGtk::Buildable*), builder.to_unsafe.as(LibGtk::Builder*), child ? child.to_unsafe.as(LibGObject::Object*) : nil, tagname.to_unsafe, data ? data : nil)
      nil
    end

    def custom_tag_start(builder, child, tagname, parser, data)
      __return_value = LibGtk.buildable_custom_tag_start(@pointer.as(LibGtk::Buildable*), builder.to_unsafe.as(LibGtk::Builder*), child ? child.to_unsafe.as(LibGObject::Object*) : nil, tagname.to_unsafe, parser, data)
      __return_value
    end

    def internal_child(builder, childname)
      __return_value = LibGtk.buildable_get_internal_child(@pointer.as(LibGtk::Buildable*), builder.to_unsafe.as(LibGtk::Builder*), childname.to_unsafe)
      GObject::Object.new(__return_value)
    end

    def name
      __return_value = LibGtk.buildable_get_name(@pointer.as(LibGtk::Buildable*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def parser_finished(builder)
      LibGtk.buildable_parser_finished(@pointer.as(LibGtk::Buildable*), builder.to_unsafe.as(LibGtk::Builder*))
      nil
    end

    def set_buildable_property(builder, name, value)
      LibGtk.buildable_set_buildable_property(@pointer.as(LibGtk::Buildable*), builder.to_unsafe.as(LibGtk::Builder*), name.to_unsafe, value.to_unsafe.as(LibGObject::Value*))
      nil
    end

    def name=(name)
      LibGtk.buildable_set_name(@pointer.as(LibGtk::Buildable*), name.to_unsafe)
      nil
    end

  end
end

