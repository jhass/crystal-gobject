module Atk
  class Object < GObject::Object
    def initialize(@atk_object)
    end

    def to_unsafe
      @atk_object.not_nil!
    end
















    def add_relationship(relationship, target)
      __return_value = LibAtk.object_add_relationship((to_unsafe as LibAtk::Object*), relationship, (target.to_unsafe as LibAtk::Object*))
      __return_value
    end

    def attributes
      __return_value = LibAtk.object_get_attributes((to_unsafe as LibAtk::Object*))
      __return_value
    end

    def description
      __return_value = LibAtk.object_get_description((to_unsafe as LibAtk::Object*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def index_in_parent
      __return_value = LibAtk.object_get_index_in_parent((to_unsafe as LibAtk::Object*))
      __return_value
    end

    def layer
      __return_value = LibAtk.object_get_layer((to_unsafe as LibAtk::Object*))
      __return_value
    end

    def mdi_zorder
      __return_value = LibAtk.object_get_mdi_zorder((to_unsafe as LibAtk::Object*))
      __return_value
    end

    def n_accessible_children
      __return_value = LibAtk.object_get_n_accessible_children((to_unsafe as LibAtk::Object*))
      __return_value
    end

    def name
      __return_value = LibAtk.object_get_name((to_unsafe as LibAtk::Object*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def object_locale
      __return_value = LibAtk.object_get_object_locale((to_unsafe as LibAtk::Object*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def parent
      __return_value = LibAtk.object_get_parent((to_unsafe as LibAtk::Object*))
      Atk::Object.new(__return_value)
    end

    def role
      __return_value = LibAtk.object_get_role((to_unsafe as LibAtk::Object*))
      __return_value
    end

    def init(data)
      __return_value = LibAtk.object_init((to_unsafe as LibAtk::Object*), data)
      __return_value
    end

    def notify_state_change(state, value)
      __return_value = LibAtk.object_notify_state_change((to_unsafe as LibAtk::Object*), UInt64.new(state), value)
      __return_value
    end

    def peek_parent
      __return_value = LibAtk.object_peek_parent((to_unsafe as LibAtk::Object*))
      Atk::Object.new(__return_value)
    end

    def ref_accessible_child(i)
      __return_value = LibAtk.object_ref_accessible_child((to_unsafe as LibAtk::Object*), Int32.new(i))
      Atk::Object.new(__return_value)
    end

    def ref_relation_set
      __return_value = LibAtk.object_ref_relation_set((to_unsafe as LibAtk::Object*))
      Atk::RelationSet.new(__return_value)
    end

    def ref_state_set
      __return_value = LibAtk.object_ref_state_set((to_unsafe as LibAtk::Object*))
      Atk::StateSet.new(__return_value)
    end

    def remove_property_change_handler(handler_id)
      __return_value = LibAtk.object_remove_property_change_handler((to_unsafe as LibAtk::Object*), UInt32.new(handler_id))
      __return_value
    end

    def remove_relationship(relationship, target)
      __return_value = LibAtk.object_remove_relationship((to_unsafe as LibAtk::Object*), relationship, (target.to_unsafe as LibAtk::Object*))
      __return_value
    end

    def description=(description)
      __return_value = LibAtk.object_set_description((to_unsafe as LibAtk::Object*), description)
      __return_value
    end

    def name=(name)
      __return_value = LibAtk.object_set_name((to_unsafe as LibAtk::Object*), name)
      __return_value
    end

    def parent=(parent)
      __return_value = LibAtk.object_set_parent((to_unsafe as LibAtk::Object*), (parent.to_unsafe as LibAtk::Object*))
      __return_value
    end

    def role=(role)
      __return_value = LibAtk.object_set_role((to_unsafe as LibAtk::Object*), role)
      __return_value
    end

    alias ActiveDescendantChangedSignal = Object, Void* -> 
    def on_active_descendant_changed(&__block : ActiveDescendantChangedSignal)
      __callback = ->(_arg0 : LibAtk::Object*, _arg1 : LibAtk::Void**) {
       __return_value = __block.call(Object.new(_arg0), _arg1)
       __return_value
      }
      connect("active-descendant-changed", __callback)
    end

    alias ChildrenChangedSignal = Object, UInt32, Void* -> 
    def on_children_changed(&__block : ChildrenChangedSignal)
      __callback = ->(_arg0 : LibAtk::Object*, _arg1 : LibAtk::UInt32*, _arg2 : LibAtk::Void**) {
       __return_value = __block.call(Object.new(_arg0), _arg1, _arg2)
       __return_value
      }
      connect("children-changed", __callback)
    end

    alias FocusEventSignal = Object, Bool -> 
    def on_focus_event(&__block : FocusEventSignal)
      __callback = ->(_arg0 : LibAtk::Object*, _arg1 : LibAtk::Bool*) {
       __return_value = __block.call(Object.new(_arg0), _arg1)
       __return_value
      }
      connect("focus-event", __callback)
    end

    alias PropertyChangeSignal = Object, Void* -> 
    def on_property_change(&__block : PropertyChangeSignal)
      __callback = ->(_arg0 : LibAtk::Object*, _arg1 : LibAtk::Void**) {
       __return_value = __block.call(Object.new(_arg0), _arg1)
       __return_value
      }
      connect("property-change", __callback)
    end

    alias StateChangeSignal = Object, UInt8, Bool -> 
    def on_state_change(&__block : StateChangeSignal)
      __callback = ->(_arg0 : LibAtk::Object*, _arg1 : LibAtk::UInt8**, _arg2 : LibAtk::Bool*) {
       __return_value = __block.call(Object.new(_arg0), (raise "Expected string but got null" unless _arg1; String.new(_arg1)), _arg2)
       __return_value
      }
      connect("state-change", __callback)
    end

    alias VisibleDataChangedSignal = Object -> 
    def on_visible_data_changed(&__block : VisibleDataChangedSignal)
      __callback = ->(_arg0 : LibAtk::Object*) {
       __return_value = __block.call(Object.new(_arg0))
       __return_value
      }
      connect("visible-data-changed", __callback)
    end

  end
end

