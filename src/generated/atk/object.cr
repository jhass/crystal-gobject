module Atk
  class Object < GObject::Object
    @pointer : Void*
    def initialize(pointer : LibAtk::Object*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibAtk::Object*)
    end

    def accessible_component_layer
      gvalue = GObject::Value.new(GObject::Type::INT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "accessible_component_layer", gvalue)
      gvalue
    end

    def accessible_component_mdi_zorder
      gvalue = GObject::Value.new(GObject::Type::INT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "accessible_component_mdi_zorder", gvalue)
      gvalue
    end

    def accessible_description
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "accessible_description", gvalue)
      gvalue.string
    end

    def accessible_hypertext_nlinks
      gvalue = GObject::Value.new(GObject::Type::INT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "accessible_hypertext_nlinks", gvalue)
      gvalue
    end

    def accessible_name
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "accessible_name", gvalue)
      gvalue.string
    end

    def accessible_parent
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "accessible_parent", gvalue)
      Atk::Object.cast(gvalue.object)
    end

    def accessible_role
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "accessible_role", gvalue)
      gvalue.enum
    end

    def accessible_table_caption
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "accessible_table_caption", gvalue)
      gvalue.string
    end

    def accessible_table_caption_object
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "accessible_table_caption_object", gvalue)
      Atk::Object.cast(gvalue.object)
    end

    def accessible_table_column_description
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "accessible_table_column_description", gvalue)
      gvalue.string
    end

    def accessible_table_column_header
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "accessible_table_column_header", gvalue)
      Atk::Object.cast(gvalue.object)
    end

    def accessible_table_row_description
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "accessible_table_row_description", gvalue)
      gvalue.string
    end

    def accessible_table_row_header
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "accessible_table_row_header", gvalue)
      Atk::Object.cast(gvalue.object)
    end

    def accessible_table_summary
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "accessible_table_summary", gvalue)
      Atk::Object.cast(gvalue.object)
    end

    def accessible_value
      gvalue = GObject::Value.new(GObject::Type::DOUBLE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "accessible_value", gvalue)
      gvalue
    end

    def add_relationship(relationship : Atk::RelationType, target)
      __return_value = LibAtk.object_add_relationship(@pointer.as(LibAtk::Object*), relationship, target.to_unsafe.as(LibAtk::Object*))
      __return_value
    end

    def attributes
      __return_value = LibAtk.object_get_attributes(@pointer.as(LibAtk::Object*))
      GLib::SListIterator(Void*, Void**).new(GLib::SList.new(__return_value.as(LibGLib::SList*)))
    end

    def description
      __return_value = LibAtk.object_get_description(@pointer.as(LibAtk::Object*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def index_in_parent
      __return_value = LibAtk.object_get_index_in_parent(@pointer.as(LibAtk::Object*))
      __return_value
    end

    def layer
      __return_value = LibAtk.object_get_layer(@pointer.as(LibAtk::Object*))
      __return_value
    end

    def mdi_zorder
      __return_value = LibAtk.object_get_mdi_zorder(@pointer.as(LibAtk::Object*))
      __return_value
    end

    def n_accessible_children
      __return_value = LibAtk.object_get_n_accessible_children(@pointer.as(LibAtk::Object*))
      __return_value
    end

    def name
      __return_value = LibAtk.object_get_name(@pointer.as(LibAtk::Object*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def object_locale
      __return_value = LibAtk.object_get_object_locale(@pointer.as(LibAtk::Object*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def parent
      __return_value = LibAtk.object_get_parent(@pointer.as(LibAtk::Object*))
      Atk::Object.new(__return_value)
    end

    def role
      __return_value = LibAtk.object_get_role(@pointer.as(LibAtk::Object*))
      __return_value
    end

    def init(data)
      LibAtk.object_init(@pointer.as(LibAtk::Object*), data ? data : nil)
      nil
    end

    def notify_state_change(state, value)
      LibAtk.object_notify_state_change(@pointer.as(LibAtk::Object*), UInt64.new(state), value)
      nil
    end

    def peek_parent
      __return_value = LibAtk.object_peek_parent(@pointer.as(LibAtk::Object*))
      Atk::Object.new(__return_value)
    end

    def ref_accessible_child(i)
      __return_value = LibAtk.object_ref_accessible_child(@pointer.as(LibAtk::Object*), Int32.new(i))
      Atk::Object.new(__return_value)
    end

    def ref_relation_set
      __return_value = LibAtk.object_ref_relation_set(@pointer.as(LibAtk::Object*))
      Atk::RelationSet.new(__return_value)
    end

    def ref_state_set
      __return_value = LibAtk.object_ref_state_set(@pointer.as(LibAtk::Object*))
      Atk::StateSet.new(__return_value)
    end

    def remove_property_change_handler(handler_id)
      LibAtk.object_remove_property_change_handler(@pointer.as(LibAtk::Object*), UInt32.new(handler_id))
      nil
    end

    def remove_relationship(relationship : Atk::RelationType, target)
      __return_value = LibAtk.object_remove_relationship(@pointer.as(LibAtk::Object*), relationship, target.to_unsafe.as(LibAtk::Object*))
      __return_value
    end

    def description=(description)
      LibAtk.object_set_description(@pointer.as(LibAtk::Object*), description.to_unsafe)
      nil
    end

    def name=(name)
      LibAtk.object_set_name(@pointer.as(LibAtk::Object*), name.to_unsafe)
      nil
    end

    def parent=(parent)
      LibAtk.object_set_parent(@pointer.as(LibAtk::Object*), parent.to_unsafe.as(LibAtk::Object*))
      nil
    end

    def role=(role : Atk::Role)
      LibAtk.object_set_role(@pointer.as(LibAtk::Object*), role)
      nil
    end

    alias ActiveDescendantChangedSignal = Object, Atk::Object ->
    def on_active_descendant_changed(&__block : ActiveDescendantChangedSignal)
      __callback = ->(_arg0 : LibAtk::Object*, _arg1 : LibAtk::LibAtk::Object**) {
       __return_value = __block.call(Object.new(_arg0), Atk::Object.new(_arg1))
       __return_value
      }
      connect("active-descendant-changed", __callback)
    end

    alias ChildrenChangedSignal = Object, UInt32, Atk::Object ->
    def on_children_changed(&__block : ChildrenChangedSignal)
      __callback = ->(_arg0 : LibAtk::Object*, _arg1 : LibAtk::UInt32*, _arg2 : LibAtk::LibAtk::Object**) {
       __return_value = __block.call(Object.new(_arg0), _arg1, Atk::Object.new(_arg2))
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

    alias PropertyChangeSignal = Object, Atk::PropertyValues ->
    def on_property_change(&__block : PropertyChangeSignal)
      __callback = ->(_arg0 : LibAtk::Object*, _arg1 : LibAtk::LibAtk::PropertyValues**) {
       __return_value = __block.call(Object.new(_arg0), Atk::PropertyValues.new(_arg1))
       __return_value
      }
      connect("property-change", __callback)
    end

    alias StateChangeSignal = Object, String, Bool ->
    def on_state_change(&__block : StateChangeSignal)
      __callback = ->(_arg0 : LibAtk::Object*, _arg1 : LibAtk::UInt8**, _arg2 : LibAtk::Bool*) {
       __return_value = __block.call(Object.new(_arg0), (raise "Expected string but got null" unless _arg1; ::String.new(_arg1)), _arg2)
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

