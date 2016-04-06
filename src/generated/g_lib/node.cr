module GLib
  class Node
    include GObject::WrappedType

    def initialize(@g_lib_node)
    end

    def to_unsafe
      @g_lib_node.not_nil!
    end

    def child_index(data)
      __return_value = LibGLib.node_child_index((to_unsafe as LibGLib::Node*), data)
      __return_value
    end

    def child_position(child)
      __return_value = LibGLib.node_child_position((to_unsafe as LibGLib::Node*), (child.to_unsafe as LibGLib::Node*))
      __return_value
    end

    def depth
      __return_value = LibGLib.node_depth((to_unsafe as LibGLib::Node*))
      __return_value
    end

    def destroy
      __return_value = LibGLib.node_destroy((to_unsafe as LibGLib::Node*))
      __return_value
    end

    def ancestor?(descendant)
      __return_value = LibGLib.node_is_ancestor((to_unsafe as LibGLib::Node*), (descendant.to_unsafe as LibGLib::Node*))
      __return_value
    end

    def max_height
      __return_value = LibGLib.node_max_height((to_unsafe as LibGLib::Node*))
      __return_value
    end

    def n_children
      __return_value = LibGLib.node_n_children((to_unsafe as LibGLib::Node*))
      __return_value
    end

    def n_nodes(flags)
      __return_value = LibGLib.node_n_nodes((to_unsafe as LibGLib::Node*), flags)
      __return_value
    end

    def reverse_children
      __return_value = LibGLib.node_reverse_children((to_unsafe as LibGLib::Node*))
      __return_value
    end

    def unlink
      __return_value = LibGLib.node_unlink((to_unsafe as LibGLib::Node*))
      __return_value
    end

  end
end

