module Atk
  class Misc < GObject::Object
    @atk_misc : LibAtk::Misc*?
    def initialize(@atk_misc : LibAtk::Misc*)
    end

    def to_unsafe
      @atk_misc.not_nil!
    end

    def self.instance
      __return_value = LibAtk.misc_get_instance
      Atk::Misc.new(__return_value)
    end

    def threads_enter
      LibAtk.misc_threads_enter(to_unsafe.as(LibAtk::Misc*))
      nil
    end

    def threads_leave
      LibAtk.misc_threads_leave(to_unsafe.as(LibAtk::Misc*))
      nil
    end

  end
end

