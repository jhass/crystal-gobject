module GLib
  class Node
    include GObject::WrappedType

    def self.new(data : Void*|Nil = nil, next next_ : GLib::Node|Nil = nil, prev : GLib::Node|Nil = nil, parent : GLib::Node|Nil = nil, children : GLib::Node|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(40, 0u8)
      new(ptr.as(LibGLib::Node*)).tap do |object|
        object.data = data unless data.nil?
        object.next = next_ unless next_.nil?
        object.prev = prev unless prev.nil?
        object.parent = parent unless parent.nil?
        object.children = children unless children.nil?
      end
    end

    @g_lib_node : LibGLib::Node*?
    def initialize(@g_lib_node : LibGLib::Node*)
    end

    def to_unsafe
      @g_lib_node.not_nil!
    end

    def child_index(data)
      __return_value = LibGLib.node_child_index(to_unsafe.as(LibGLib::Node*), data ? data : nil)
      __return_value
    end

    def child_position(child)
      __return_value = LibGLib.node_child_position(to_unsafe.as(LibGLib::Node*), child.to_unsafe.as(LibGLib::Node*))
      __return_value
    end

    def depth
      __return_value = LibGLib.node_depth(to_unsafe.as(LibGLib::Node*))
      __return_value
    end

    def destroy
      LibGLib.node_destroy(to_unsafe.as(LibGLib::Node*))
      nil
    end

    def ancestor?(descendant)
      __return_value = LibGLib.node_is_ancestor(to_unsafe.as(LibGLib::Node*), descendant.to_unsafe.as(LibGLib::Node*))
      __return_value
    end

    def max_height
      __return_value = LibGLib.node_max_height(to_unsafe.as(LibGLib::Node*))
      __return_value
    end

    def n_children
      __return_value = LibGLib.node_n_children(to_unsafe.as(LibGLib::Node*))
      __return_value
    end

    def n_nodes(flags : GLib::TraverseFlags)
      __return_value = LibGLib.node_n_nodes(to_unsafe.as(LibGLib::Node*), flags)
      __return_value
    end

    def reverse_children
      LibGLib.node_reverse_children(to_unsafe.as(LibGLib::Node*))
      nil
    end

    def unlink
      LibGLib.node_unlink(to_unsafe.as(LibGLib::Node*))
      nil
    end

    def data
      (to_unsafe.as(LibGLib::Node*).value.data)
    end

    def data=(value : Void*)
      to_unsafe.as(LibGLib::Node*).value.data = value
    end

    def next
      GLib::Node.new((to_unsafe.as(LibGLib::Node*).value.next_))
    end

    def next=(value : GLib::Node)
      to_unsafe.as(LibGLib::Node*).value.next_ = value.to_unsafe.as(LibGLib::Node*)
    end

    def prev
      GLib::Node.new((to_unsafe.as(LibGLib::Node*).value.prev))
    end

    def prev=(value : GLib::Node)
      to_unsafe.as(LibGLib::Node*).value.prev = value.to_unsafe.as(LibGLib::Node*)
    end

    def parent
      GLib::Node.new((to_unsafe.as(LibGLib::Node*).value.parent))
    end

    def parent=(value : GLib::Node)
      to_unsafe.as(LibGLib::Node*).value.parent = value.to_unsafe.as(LibGLib::Node*)
    end

    def children
      GLib::Node.new((to_unsafe.as(LibGLib::Node*).value.children))
    end

    def children=(value : GLib::Node)
      to_unsafe.as(LibGLib::Node*).value.children = value.to_unsafe.as(LibGLib::Node*)
    end

  end
end

