module Atk
  class Misc < GObject::Object
    @pointer : Void*
    def initialize(pointer : LibAtk::Misc*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibAtk::Misc*)
    end

    def self.instance
      __return_value = LibAtk.misc_get_instance
      Atk::Misc.new(__return_value)
    end

    def threads_enter
      LibAtk.misc_threads_enter(@pointer.as(LibAtk::Misc*))
      nil
    end

    def threads_leave
      LibAtk.misc_threads_leave(@pointer.as(LibAtk::Misc*))
      nil
    end

  end
end

