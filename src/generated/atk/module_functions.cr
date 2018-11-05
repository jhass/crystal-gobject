module Atk
  BINARY_AGE = LibAtk::BINARY_AGE

  INTERFACE_AGE = LibAtk::INTERFACE_AGE

  MAJOR_VERSION = LibAtk::MAJOR_VERSION

  MICRO_VERSION = LibAtk::MICRO_VERSION

  MINOR_VERSION = LibAtk::MINOR_VERSION

  VERSION_MIN_REQUIRED = LibAtk::VERSION_MIN_REQUIRED

  def self.attribute_set_free(attrib_set)
    LibAtk.attribute_set_free(attrib_set)
    nil
  end

  def self.focus_tracker_notify(object)
    LibAtk.focus_tracker_notify(object.to_unsafe.as(LibAtk::Object*))
    nil
  end

  def self.binary_age
    __return_value = LibAtk.get_binary_age
    __return_value
  end

  def self.default_registry
    __return_value = LibAtk.get_default_registry
    Atk::Registry.new(__return_value)
  end

  def self.focus_object
    __return_value = LibAtk.get_focus_object
    Atk::Object.new(__return_value)
  end

  def self.interface_age
    __return_value = LibAtk.get_interface_age
    __return_value
  end

  def self.major_version
    __return_value = LibAtk.get_major_version
    __return_value
  end

  def self.micro_version
    __return_value = LibAtk.get_micro_version
    __return_value
  end

  def self.minor_version
    __return_value = LibAtk.get_minor_version
    __return_value
  end

  def self.root
    __return_value = LibAtk.get_root
    Atk::Object.new(__return_value)
  end

  def self.toolkit_name
    __return_value = LibAtk.get_toolkit_name
    (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
  end

  def self.toolkit_version
    __return_value = LibAtk.get_toolkit_version
    (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
  end

  def self.version
    __return_value = LibAtk.get_version
    (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
  end

  def self.relation_type_for_name(name)
    __return_value = LibAtk.relation_type_for_name(name.to_unsafe)
    __return_value
  end

  def self.relation_type_get_name(type : Atk::RelationType)
    __return_value = LibAtk.relation_type_get_name(type)
    (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
  end

  def self.relation_type_register(name)
    __return_value = LibAtk.relation_type_register(name.to_unsafe)
    __return_value
  end

  def self.remove_focus_tracker(tracker_id)
    LibAtk.remove_focus_tracker(UInt32.new(tracker_id))
    nil
  end

  def self.remove_global_event_listener(listener_id)
    LibAtk.remove_global_event_listener(UInt32.new(listener_id))
    nil
  end

  def self.remove_key_event_listener(listener_id)
    LibAtk.remove_key_event_listener(UInt32.new(listener_id))
    nil
  end

  def self.role_for_name(name)
    __return_value = LibAtk.role_for_name(name.to_unsafe)
    __return_value
  end

  def self.role_get_localized_name(role : Atk::Role)
    __return_value = LibAtk.role_get_localized_name(role)
    (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
  end

  def self.role_get_name(role : Atk::Role)
    __return_value = LibAtk.role_get_name(role)
    (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
  end

  def self.role_register(name)
    __return_value = LibAtk.role_register(name.to_unsafe)
    __return_value
  end

  def self.state_type_for_name(name)
    __return_value = LibAtk.state_type_for_name(name.to_unsafe)
    __return_value
  end

  def self.state_type_get_name(type : Atk::StateType)
    __return_value = LibAtk.state_type_get_name(type)
    (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
  end

  def self.state_type_register(name)
    __return_value = LibAtk.state_type_register(name.to_unsafe)
    __return_value
  end

  def self.text_attribute_for_name(name)
    __return_value = LibAtk.text_attribute_for_name(name.to_unsafe)
    __return_value
  end

  def self.text_attribute_get_name(attr : Atk::TextAttribute)
    __return_value = LibAtk.text_attribute_get_name(attr)
    (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
  end

  def self.text_attribute_get_value(attr : Atk::TextAttribute, index)
    __return_value = LibAtk.text_attribute_get_value(attr, Int32.new(index))
    (raise "Expected string but got null" unless __return_value; ::String.new(__return_value)) if __return_value
  end

  def self.text_attribute_register(name)
    __return_value = LibAtk.text_attribute_register(name.to_unsafe)
    __return_value
  end

  def self.text_free_ranges(ranges)
    LibAtk.text_free_ranges(ranges)
    nil
  end

  def self.value_type_get_localized_name(value_type : Atk::ValueType)
    __return_value = LibAtk.value_type_get_localized_name(value_type)
    (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
  end

  def self.value_type_get_name(value_type : Atk::ValueType)
    __return_value = LibAtk.value_type_get_name(value_type)
    (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
  end
end

