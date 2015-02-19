module Atk
  module Action
    def do_action(i)
      __return_value = LibAtk.action_do_action((to_unsafe as LibAtk::Action*), Int32.cast(i))
      __return_value
    end

    def description(i)
      __return_value = LibAtk.action_get_description((to_unsafe as LibAtk::Action*), Int32.cast(i))
      raise "Expected string but got null" unless __return_value; String.new(__return_value) if __return_value
    end

    def keybinding(i)
      __return_value = LibAtk.action_get_keybinding((to_unsafe as LibAtk::Action*), Int32.cast(i))
      raise "Expected string but got null" unless __return_value; String.new(__return_value) if __return_value
    end

    def localized_name(i)
      __return_value = LibAtk.action_get_localized_name((to_unsafe as LibAtk::Action*), Int32.cast(i))
      raise "Expected string but got null" unless __return_value; String.new(__return_value) if __return_value
    end

    def n_actions
      __return_value = LibAtk.action_get_n_actions((to_unsafe as LibAtk::Action*))
      __return_value
    end

    def name(i)
      __return_value = LibAtk.action_get_name((to_unsafe as LibAtk::Action*), Int32.cast(i))
      raise "Expected string but got null" unless __return_value; String.new(__return_value) if __return_value
    end

    def description=(i, desc)
      __return_value = LibAtk.action_set_description((to_unsafe as LibAtk::Action*), Int32.cast(i), desc)
      __return_value
    end

  end
end

