module GLib
  class OptionGroup
    include GObject::WrappedType

    @g_lib_option_group : LibGLib::OptionGroup*?
    def initialize(@g_lib_option_group : LibGLib::OptionGroup*)
    end

    def to_unsafe
      @g_lib_option_group.not_nil!.as(Void*)
    end

    def self.new(name, description, help_description, user_data, destroy) : self
      __return_value = LibGLib.option_group_new(name.to_unsafe, description.to_unsafe, help_description.to_unsafe, user_data && user_data, destroy && destroy)
      cast GLib::OptionGroup.new(__return_value)
    end

    def add_entries(entries)
      __return_value = LibGLib.option_group_add_entries(to_unsafe.as(LibGLib::OptionGroup*), entries.to_unsafe.as(LibGLib::OptionEntry*))
      __return_value
    end

    def free
      __return_value = LibGLib.option_group_free(to_unsafe.as(LibGLib::OptionGroup*))
      __return_value
    end

    def ref
      __return_value = LibGLib.option_group_ref(to_unsafe.as(LibGLib::OptionGroup*))
      GLib::OptionGroup.new(__return_value)
    end

    def set_translate_func(func, data, destroy_notify)
      __return_value = LibGLib.option_group_set_translate_func(to_unsafe.as(LibGLib::OptionGroup*), func && func, data && data, destroy_notify && destroy_notify)
      __return_value
    end

    def translation_domain=(domain)
      __return_value = LibGLib.option_group_set_translation_domain(to_unsafe.as(LibGLib::OptionGroup*), domain.to_unsafe)
      __return_value
    end

    def unref
      __return_value = LibGLib.option_group_unref(to_unsafe.as(LibGLib::OptionGroup*))
      __return_value
    end

  end
end

