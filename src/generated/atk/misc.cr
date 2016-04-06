module Atk
  class Misc < GObject::Object
    def initialize(@atk_misc)
    end

    def to_unsafe
      @atk_misc.not_nil!
    end

    def self.instance
      __return_value = LibAtk.misc_get_instance
      Atk::Misc.new(__return_value)
    end

    def threads_enter
      __return_value = LibAtk.misc_threads_enter((to_unsafe as LibAtk::Misc*))
      __return_value
    end

    def threads_leave
      __return_value = LibAtk.misc_threads_leave((to_unsafe as LibAtk::Misc*))
      __return_value
    end

  end
end

