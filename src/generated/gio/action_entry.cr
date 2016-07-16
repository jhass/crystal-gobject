module Gio
  class ActionEntry
    include GObject::WrappedType

    def self.new(name : String|Nil = nil, parameter_type : String|Nil = nil, state : String|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(64, 0u8)
      new(ptr.as(LibGio::ActionEntry*)).tap do |object|
        object.name = name unless name.nil?
        object.parameter_type = parameter_type unless parameter_type.nil?
        object.state = state unless state.nil?
      end
    end

    @gio_action_entry : LibGio::ActionEntry*?
    def initialize(@gio_action_entry : LibGio::ActionEntry*)
    end

    def to_unsafe
      @gio_action_entry.not_nil!.as(Void*)
    end

    def name
      (raise "Expected string but got null" unless (to_unsafe.as(LibGio::ActionEntry*).value.name); ::String.new((to_unsafe.as(LibGio::ActionEntry*).value.name)))
    end

    def name=(value : String)
      to_unsafe.as(LibGio::ActionEntry*).value.name = value.to_unsafe
    end

    def activate
      (to_unsafe.as(LibGio::ActionEntry*).value.activate)
    end

    def parameter_type
      (raise "Expected string but got null" unless (to_unsafe.as(LibGio::ActionEntry*).value.parameter_type); ::String.new((to_unsafe.as(LibGio::ActionEntry*).value.parameter_type)))
    end

    def parameter_type=(value : String)
      to_unsafe.as(LibGio::ActionEntry*).value.parameter_type = value.to_unsafe
    end

    def state
      (raise "Expected string but got null" unless (to_unsafe.as(LibGio::ActionEntry*).value.state); ::String.new((to_unsafe.as(LibGio::ActionEntry*).value.state)))
    end

    def state=(value : String)
      to_unsafe.as(LibGio::ActionEntry*).value.state = value.to_unsafe
    end

    def change_state
      (to_unsafe.as(LibGio::ActionEntry*).value.change_state)
    end

    def padding
      PointerIterator.new((to_unsafe.as(LibGio::ActionEntry*).value.padding)) {|__item| __item }
    end

  end
end

