module Gst
  module ChildProxy
    def child_added(child, name)
      __return_value = LibGst.child_proxy_child_added((to_unsafe as LibGst::ChildProxy*), (child.to_unsafe as LibGObject::Object*), name)
      __return_value
    end

    def child_removed(child, name)
      __return_value = LibGst.child_proxy_child_removed((to_unsafe as LibGst::ChildProxy*), (child.to_unsafe as LibGObject::Object*), name)
      __return_value
    end

    def child_by_index(index)
      __return_value = LibGst.child_proxy_get_child_by_index((to_unsafe as LibGst::ChildProxy*), UInt32.cast(index))
      GObject::Object.new(__return_value) if __return_value
    end

    def child_by_name(name)
      __return_value = LibGst.child_proxy_get_child_by_name((to_unsafe as LibGst::ChildProxy*), name)
      GObject::Object.new(__return_value) if __return_value
    end

    def children_count
      __return_value = LibGst.child_proxy_get_children_count((to_unsafe as LibGst::ChildProxy*))
      __return_value
    end

    def property(name, value)
      __return_value = LibGst.child_proxy_get_property((to_unsafe as LibGst::ChildProxy*), name, value)
      __return_value
    end

    def lookup(name, target, pspec)
      __return_value = LibGst.child_proxy_lookup((to_unsafe as LibGst::ChildProxy*), name, (target.to_unsafe as LibGObject::Object*), (pspec.to_unsafe as LibGObject::ParamSpec*))
      __return_value
    end

    def set_property(name, value)
      __return_value = LibGst.child_proxy_set_property((to_unsafe as LibGst::ChildProxy*), name, (value.to_unsafe as LibGObject::Value*))
      __return_value
    end

  end
end

