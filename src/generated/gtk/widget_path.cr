module Gtk
  class WidgetPath
    include GObject::WrappedType

    def initialize(@gtk_widget_path)
    end

    def to_unsafe
      @gtk_widget_path.not_nil!
    end

    def self.new_internal
      __return_value = LibGtk.widget_path_new
      Gtk::WidgetPath.new(__return_value)
    end

    def append_for_widget(widget)
      __return_value = LibGtk.widget_path_append_for_widget((to_unsafe as LibGtk::WidgetPath*), (widget.to_unsafe as LibGtk::Widget*))
      __return_value
    end

    def append_type(type)
      __return_value = LibGtk.widget_path_append_type((to_unsafe as LibGtk::WidgetPath*), UInt64.new(type))
      __return_value
    end

    def append_with_siblings(siblings, sibling_index)
      __return_value = LibGtk.widget_path_append_with_siblings((to_unsafe as LibGtk::WidgetPath*), (siblings.to_unsafe as LibGtk::WidgetPath*), UInt32.new(sibling_index))
      __return_value
    end

    def copy
      __return_value = LibGtk.widget_path_copy((to_unsafe as LibGtk::WidgetPath*))
      Gtk::WidgetPath.new(__return_value)
    end

    def free
      __return_value = LibGtk.widget_path_free((to_unsafe as LibGtk::WidgetPath*))
      __return_value
    end

    def object_type
      __return_value = LibGtk.widget_path_get_object_type((to_unsafe as LibGtk::WidgetPath*))
      __return_value
    end

    def has_parent(type)
      __return_value = LibGtk.widget_path_has_parent((to_unsafe as LibGtk::WidgetPath*), UInt64.new(type))
      __return_value
    end

    def type?(type)
      __return_value = LibGtk.widget_path_is_type((to_unsafe as LibGtk::WidgetPath*), UInt64.new(type))
      __return_value
    end

    def iter_add_class(pos, name)
      __return_value = LibGtk.widget_path_iter_add_class((to_unsafe as LibGtk::WidgetPath*), Int32.new(pos), name)
      __return_value
    end

    def iter_add_qclass(pos, qname)
      __return_value = LibGtk.widget_path_iter_add_qclass((to_unsafe as LibGtk::WidgetPath*), Int32.new(pos), UInt32.new(qname))
      __return_value
    end

    def iter_add_region(pos, name, flags)
      __return_value = LibGtk.widget_path_iter_add_region((to_unsafe as LibGtk::WidgetPath*), Int32.new(pos), name, flags)
      __return_value
    end

    def iter_clear_classes(pos)
      __return_value = LibGtk.widget_path_iter_clear_classes((to_unsafe as LibGtk::WidgetPath*), Int32.new(pos))
      __return_value
    end

    def iter_clear_regions(pos)
      __return_value = LibGtk.widget_path_iter_clear_regions((to_unsafe as LibGtk::WidgetPath*), Int32.new(pos))
      __return_value
    end

    def iter_get_name(pos)
      __return_value = LibGtk.widget_path_iter_get_name((to_unsafe as LibGtk::WidgetPath*), Int32.new(pos))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def iter_get_object_type(pos)
      __return_value = LibGtk.widget_path_iter_get_object_type((to_unsafe as LibGtk::WidgetPath*), Int32.new(pos))
      __return_value
    end

    def iter_get_sibling_index(pos)
      __return_value = LibGtk.widget_path_iter_get_sibling_index((to_unsafe as LibGtk::WidgetPath*), Int32.new(pos))
      __return_value
    end

    def iter_get_siblings(pos)
      __return_value = LibGtk.widget_path_iter_get_siblings((to_unsafe as LibGtk::WidgetPath*), Int32.new(pos))
      Gtk::WidgetPath.new(__return_value)
    end

    def iter_get_state(pos)
      __return_value = LibGtk.widget_path_iter_get_state((to_unsafe as LibGtk::WidgetPath*), Int32.new(pos))
      __return_value
    end

    def iter_has_class(pos, name)
      __return_value = LibGtk.widget_path_iter_has_class((to_unsafe as LibGtk::WidgetPath*), Int32.new(pos), name)
      __return_value
    end

    def iter_has_name(pos, name)
      __return_value = LibGtk.widget_path_iter_has_name((to_unsafe as LibGtk::WidgetPath*), Int32.new(pos), name)
      __return_value
    end

    def iter_has_qclass(pos, qname)
      __return_value = LibGtk.widget_path_iter_has_qclass((to_unsafe as LibGtk::WidgetPath*), Int32.new(pos), UInt32.new(qname))
      __return_value
    end

    def iter_has_qname(pos, qname)
      __return_value = LibGtk.widget_path_iter_has_qname((to_unsafe as LibGtk::WidgetPath*), Int32.new(pos), UInt32.new(qname))
      __return_value
    end

    def iter_has_qregion(pos, qname, flags)
      __return_value = LibGtk.widget_path_iter_has_qregion((to_unsafe as LibGtk::WidgetPath*), Int32.new(pos), UInt32.new(qname), flags)
      __return_value
    end

    def iter_has_region(pos, name, flags)
      __return_value = LibGtk.widget_path_iter_has_region((to_unsafe as LibGtk::WidgetPath*), Int32.new(pos), name, flags)
      __return_value
    end

    def iter_list_classes(pos)
      __return_value = LibGtk.widget_path_iter_list_classes((to_unsafe as LibGtk::WidgetPath*), Int32.new(pos))
      __return_value
    end

    def iter_list_regions(pos)
      __return_value = LibGtk.widget_path_iter_list_regions((to_unsafe as LibGtk::WidgetPath*), Int32.new(pos))
      __return_value
    end

    def iter_remove_class(pos, name)
      __return_value = LibGtk.widget_path_iter_remove_class((to_unsafe as LibGtk::WidgetPath*), Int32.new(pos), name)
      __return_value
    end

    def iter_remove_region(pos, name)
      __return_value = LibGtk.widget_path_iter_remove_region((to_unsafe as LibGtk::WidgetPath*), Int32.new(pos), name)
      __return_value
    end

    def iter_set_name(pos, name)
      __return_value = LibGtk.widget_path_iter_set_name((to_unsafe as LibGtk::WidgetPath*), Int32.new(pos), name)
      __return_value
    end

    def iter_set_object_type(pos, type)
      __return_value = LibGtk.widget_path_iter_set_object_type((to_unsafe as LibGtk::WidgetPath*), Int32.new(pos), UInt64.new(type))
      __return_value
    end

    def iter_set_state(pos, state)
      __return_value = LibGtk.widget_path_iter_set_state((to_unsafe as LibGtk::WidgetPath*), Int32.new(pos), state)
      __return_value
    end

    def length
      __return_value = LibGtk.widget_path_length((to_unsafe as LibGtk::WidgetPath*))
      __return_value
    end

    def prepend_type(type)
      __return_value = LibGtk.widget_path_prepend_type((to_unsafe as LibGtk::WidgetPath*), UInt64.new(type))
      __return_value
    end

    def ref
      __return_value = LibGtk.widget_path_ref((to_unsafe as LibGtk::WidgetPath*))
      Gtk::WidgetPath.new(__return_value)
    end

    def to_string
      __return_value = LibGtk.widget_path_to_string((to_unsafe as LibGtk::WidgetPath*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def unref
      __return_value = LibGtk.widget_path_unref((to_unsafe as LibGtk::WidgetPath*))
      __return_value
    end

  end
end

