module Atk
  class Object < GObject::Object
    def initialize @atk_object
    end

    def to_unsafe
      @atk_object.not_nil!
    end



    def accessible_description=(__value)
      LibAtk.object_set_accessible_description((to_unsafe as LibAtk::Object*), __value)
    end


    def accessible_name=(__value)
      LibAtk.object_set_accessible_name((to_unsafe as LibAtk::Object*), __value)
    end

    def accessible_parent=(__value)
      LibAtk.object_set_accessible_parent((to_unsafe as LibAtk::Object*), __value)
    end

    def accessible_role=(__value)
      LibAtk.object_set_accessible_role((to_unsafe as LibAtk::Object*), Int32.cast(__value))
    end

    def accessible_table_caption=(__value)
      LibAtk.object_set_accessible_table_caption((to_unsafe as LibAtk::Object*), __value)
    end

    def accessible_table_caption_object=(__value)
      LibAtk.object_set_accessible_table_caption_object((to_unsafe as LibAtk::Object*), __value)
    end

    def accessible_table_column_description=(__value)
      LibAtk.object_set_accessible_table_column_description((to_unsafe as LibAtk::Object*), __value)
    end

    def accessible_table_column_header=(__value)
      LibAtk.object_set_accessible_table_column_header((to_unsafe as LibAtk::Object*), __value)
    end

    def accessible_table_row_description=(__value)
      LibAtk.object_set_accessible_table_row_description((to_unsafe as LibAtk::Object*), __value)
    end

    def accessible_table_row_header=(__value)
      LibAtk.object_set_accessible_table_row_header((to_unsafe as LibAtk::Object*), __value)
    end

    def accessible_table_summary=(__value)
      LibAtk.object_set_accessible_table_summary((to_unsafe as LibAtk::Object*), __value)
    end

    def accessible_value=(__value)
      LibAtk.object_set_accessible_value((to_unsafe as LibAtk::Object*), Float64.cast(__value))
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
      raise "Expected string but got null" unless __return_value; String.new(__return_value)
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
      raise "Expected string but got null" unless __return_value; String.new(__return_value)
    end

    def object_locale
      __return_value = LibAtk.object_get_object_locale((to_unsafe as LibAtk::Object*))
      raise "Expected string but got null" unless __return_value; String.new(__return_value)
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
      __return_value = LibAtk.object_notify_state_change((to_unsafe as LibAtk::Object*), UInt64.cast(state), Bool.cast(value))
      __return_value
    end

    def peek_parent
      __return_value = LibAtk.object_peek_parent((to_unsafe as LibAtk::Object*))
      Atk::Object.new(__return_value)
    end

    def ref_accessible_child(i)
      __return_value = LibAtk.object_ref_accessible_child((to_unsafe as LibAtk::Object*), Int32.cast(i))
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
      __return_value = LibAtk.object_remove_property_change_handler((to_unsafe as LibAtk::Object*), UInt32.cast(handler_id))
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

  end
end

