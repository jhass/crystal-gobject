module Gtk
  class WidgetPath
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGtk::WidgetPath*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::WidgetPath*)
    end

    def self.new : self
      __return_value = LibGtk.widget_path_new
      cast Gtk::WidgetPath.new(__return_value)
    end

    def append_for_widget(widget)
      __return_value = LibGtk.widget_path_append_for_widget(@pointer.as(LibGtk::WidgetPath*), widget.to_unsafe.as(LibGtk::Widget*))
      __return_value
    end

    def append_type(type)
      __return_value = LibGtk.widget_path_append_type(@pointer.as(LibGtk::WidgetPath*), UInt64.new(type))
      __return_value
    end

    def append_with_siblings(siblings, sibling_index)
      __return_value = LibGtk.widget_path_append_with_siblings(@pointer.as(LibGtk::WidgetPath*), siblings.to_unsafe.as(LibGtk::WidgetPath*), UInt32.new(sibling_index))
      __return_value
    end

    def copy
      __return_value = LibGtk.widget_path_copy(@pointer.as(LibGtk::WidgetPath*))
      Gtk::WidgetPath.new(__return_value)
    end

    def free
      LibGtk.widget_path_free(@pointer.as(LibGtk::WidgetPath*))
      nil
    end

    def object_type
      __return_value = LibGtk.widget_path_get_object_type(@pointer.as(LibGtk::WidgetPath*))
      __return_value
    end

    def has_parent(type)
      __return_value = LibGtk.widget_path_has_parent(@pointer.as(LibGtk::WidgetPath*), UInt64.new(type))
      __return_value
    end

    def type?(type)
      __return_value = LibGtk.widget_path_is_type(@pointer.as(LibGtk::WidgetPath*), UInt64.new(type))
      __return_value
    end

    def iter_add_class(pos, name)
      LibGtk.widget_path_iter_add_class(@pointer.as(LibGtk::WidgetPath*), Int32.new(pos), name.to_unsafe)
      nil
    end

    def iter_add_region(pos, name, flags : Gtk::RegionFlags)
      LibGtk.widget_path_iter_add_region(@pointer.as(LibGtk::WidgetPath*), Int32.new(pos), name.to_unsafe, flags)
      nil
    end

    def iter_clear_classes(pos)
      LibGtk.widget_path_iter_clear_classes(@pointer.as(LibGtk::WidgetPath*), Int32.new(pos))
      nil
    end

    def iter_clear_regions(pos)
      LibGtk.widget_path_iter_clear_regions(@pointer.as(LibGtk::WidgetPath*), Int32.new(pos))
      nil
    end

    def iter_get_name(pos)
      __return_value = LibGtk.widget_path_iter_get_name(@pointer.as(LibGtk::WidgetPath*), Int32.new(pos))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value)) if __return_value
    end

    def iter_get_object_name(pos)
      __return_value = LibGtk.widget_path_iter_get_object_name(@pointer.as(LibGtk::WidgetPath*), Int32.new(pos))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value)) if __return_value
    end

    def iter_get_object_type(pos)
      __return_value = LibGtk.widget_path_iter_get_object_type(@pointer.as(LibGtk::WidgetPath*), Int32.new(pos))
      __return_value
    end

    def iter_get_sibling_index(pos)
      __return_value = LibGtk.widget_path_iter_get_sibling_index(@pointer.as(LibGtk::WidgetPath*), Int32.new(pos))
      __return_value
    end

    def iter_get_siblings(pos)
      __return_value = LibGtk.widget_path_iter_get_siblings(@pointer.as(LibGtk::WidgetPath*), Int32.new(pos))
      Gtk::WidgetPath.new(__return_value)
    end

    def iter_get_state(pos)
      __return_value = LibGtk.widget_path_iter_get_state(@pointer.as(LibGtk::WidgetPath*), Int32.new(pos))
      __return_value
    end

    def iter_has_class(pos, name)
      __return_value = LibGtk.widget_path_iter_has_class(@pointer.as(LibGtk::WidgetPath*), Int32.new(pos), name.to_unsafe)
      __return_value
    end

    def iter_has_name(pos, name)
      __return_value = LibGtk.widget_path_iter_has_name(@pointer.as(LibGtk::WidgetPath*), Int32.new(pos), name.to_unsafe)
      __return_value
    end

    def iter_has_qclass(pos, qname)
      __return_value = LibGtk.widget_path_iter_has_qclass(@pointer.as(LibGtk::WidgetPath*), Int32.new(pos), UInt32.new(qname))
      __return_value
    end

    def iter_has_qname(pos, qname)
      __return_value = LibGtk.widget_path_iter_has_qname(@pointer.as(LibGtk::WidgetPath*), Int32.new(pos), UInt32.new(qname))
      __return_value
    end

    def iter_has_qregion(pos, qname, flags : Gtk::RegionFlags)
      __return_value = LibGtk.widget_path_iter_has_qregion(@pointer.as(LibGtk::WidgetPath*), Int32.new(pos), UInt32.new(qname), flags)
      __return_value
    end

    def iter_has_region(pos, name, flags : Gtk::RegionFlags)
      __return_value = LibGtk.widget_path_iter_has_region(@pointer.as(LibGtk::WidgetPath*), Int32.new(pos), name.to_unsafe, flags)
      __return_value
    end

    def iter_list_classes(pos)
      __return_value = LibGtk.widget_path_iter_list_classes(@pointer.as(LibGtk::WidgetPath*), Int32.new(pos))
      GLib::SListIterator(String, UInt8**).new(GLib::SList.new(__return_value.as(LibGLib::SList*)))
    end

    def iter_list_regions(pos)
      __return_value = LibGtk.widget_path_iter_list_regions(@pointer.as(LibGtk::WidgetPath*), Int32.new(pos))
      GLib::SListIterator(String, UInt8**).new(GLib::SList.new(__return_value.as(LibGLib::SList*)))
    end

    def iter_remove_class(pos, name)
      LibGtk.widget_path_iter_remove_class(@pointer.as(LibGtk::WidgetPath*), Int32.new(pos), name.to_unsafe)
      nil
    end

    def iter_remove_region(pos, name)
      LibGtk.widget_path_iter_remove_region(@pointer.as(LibGtk::WidgetPath*), Int32.new(pos), name.to_unsafe)
      nil
    end

    def iter_set_name(pos, name)
      LibGtk.widget_path_iter_set_name(@pointer.as(LibGtk::WidgetPath*), Int32.new(pos), name.to_unsafe)
      nil
    end

    def iter_set_object_name(pos, name)
      LibGtk.widget_path_iter_set_object_name(@pointer.as(LibGtk::WidgetPath*), Int32.new(pos), name ? name.to_unsafe : nil)
      nil
    end

    def iter_set_object_type(pos, type)
      LibGtk.widget_path_iter_set_object_type(@pointer.as(LibGtk::WidgetPath*), Int32.new(pos), UInt64.new(type))
      nil
    end

    def iter_set_state(pos, state : Gtk::StateFlags)
      LibGtk.widget_path_iter_set_state(@pointer.as(LibGtk::WidgetPath*), Int32.new(pos), state)
      nil
    end

    def length
      __return_value = LibGtk.widget_path_length(@pointer.as(LibGtk::WidgetPath*))
      __return_value
    end

    def prepend_type(type)
      LibGtk.widget_path_prepend_type(@pointer.as(LibGtk::WidgetPath*), UInt64.new(type))
      nil
    end

    def ref
      __return_value = LibGtk.widget_path_ref(@pointer.as(LibGtk::WidgetPath*))
      Gtk::WidgetPath.new(__return_value)
    end

    def to_string
      __return_value = LibGtk.widget_path_to_string(@pointer.as(LibGtk::WidgetPath*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def unref
      LibGtk.widget_path_unref(@pointer.as(LibGtk::WidgetPath*))
      nil
    end

  end
end

