module Gio
  class SimpleActionGroup < GObject::Object
    @pointer : Void*
    def initialize(pointer : LibGio::SimpleActionGroup*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::SimpleActionGroup*)
    end

    # Implements ActionGroup
    # Implements ActionMap
    def self.new : self
      __return_value = LibGio.simple_action_group_new
      cast Gio::SimpleActionGroup.new(__return_value)
    end

    def add_entries(entries, n_entries, user_data)
      LibGio.simple_action_group_add_entries(@pointer.as(LibGio::SimpleActionGroup*), entries, Int32.new(n_entries), user_data ? user_data : nil)
      nil
    end

    def insert(action)
      LibGio.simple_action_group_insert(@pointer.as(LibGio::SimpleActionGroup*), action.to_unsafe.as(LibGio::Action*))
      nil
    end

    def lookup(action_name)
      __return_value = LibGio.simple_action_group_lookup(@pointer.as(LibGio::SimpleActionGroup*), action_name.to_unsafe)
      __return_value
    end

    def remove(action_name)
      LibGio.simple_action_group_remove(@pointer.as(LibGio::SimpleActionGroup*), action_name.to_unsafe)
      nil
    end

  end
end

