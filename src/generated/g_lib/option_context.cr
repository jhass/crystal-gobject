module GLib
  class OptionContext
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGLib::OptionContext*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGLib::OptionContext*)
    end

    def add_group(group)
      LibGLib.option_context_add_group(@pointer.as(LibGLib::OptionContext*), group.to_unsafe.as(LibGLib::OptionGroup*))
      nil
    end

    def add_main_entries(entries, translation_domain)
      LibGLib.option_context_add_main_entries(@pointer.as(LibGLib::OptionContext*), entries.to_unsafe.as(LibGLib::OptionEntry*), translation_domain ? translation_domain.to_unsafe : nil)
      nil
    end

    def free
      LibGLib.option_context_free(@pointer.as(LibGLib::OptionContext*))
      nil
    end

    def description
      __return_value = LibGLib.option_context_get_description(@pointer.as(LibGLib::OptionContext*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def help(main_help, group)
      __return_value = LibGLib.option_context_get_help(@pointer.as(LibGLib::OptionContext*), main_help, group ? group.to_unsafe.as(LibGLib::OptionGroup*) : nil)
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def help_enabled
      __return_value = LibGLib.option_context_get_help_enabled(@pointer.as(LibGLib::OptionContext*))
      __return_value
    end

    def ignore_unknown_options
      __return_value = LibGLib.option_context_get_ignore_unknown_options(@pointer.as(LibGLib::OptionContext*))
      __return_value
    end

    def main_group
      __return_value = LibGLib.option_context_get_main_group(@pointer.as(LibGLib::OptionContext*))
      GLib::OptionGroup.new(__return_value)
    end

    def strict_posix
      __return_value = LibGLib.option_context_get_strict_posix(@pointer.as(LibGLib::OptionContext*))
      __return_value
    end

    def summary
      __return_value = LibGLib.option_context_get_summary(@pointer.as(LibGLib::OptionContext*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def parse(argc, argv)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.option_context_parse(@pointer.as(LibGLib::OptionContext*), argc, argv, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def parse_strv(arguments)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.option_context_parse_strv(@pointer.as(LibGLib::OptionContext*), arguments, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def description=(description)
      LibGLib.option_context_set_description(@pointer.as(LibGLib::OptionContext*), description ? description.to_unsafe : nil)
      nil
    end

    def help_enabled=(help_enabled)
      LibGLib.option_context_set_help_enabled(@pointer.as(LibGLib::OptionContext*), help_enabled)
      nil
    end

    def ignore_unknown_options=(ignore_unknown)
      LibGLib.option_context_set_ignore_unknown_options(@pointer.as(LibGLib::OptionContext*), ignore_unknown)
      nil
    end

    def main_group=(group)
      LibGLib.option_context_set_main_group(@pointer.as(LibGLib::OptionContext*), group.to_unsafe.as(LibGLib::OptionGroup*))
      nil
    end

    def strict_posix=(strict_posix)
      LibGLib.option_context_set_strict_posix(@pointer.as(LibGLib::OptionContext*), strict_posix)
      nil
    end

    def summary=(summary)
      LibGLib.option_context_set_summary(@pointer.as(LibGLib::OptionContext*), summary ? summary.to_unsafe : nil)
      nil
    end

    def set_translate_func(func, data, destroy_notify)
      LibGLib.option_context_set_translate_func(@pointer.as(LibGLib::OptionContext*), func ? func : nil, data ? data : nil, destroy_notify ? destroy_notify : nil)
      nil
    end

    def translation_domain=(domain)
      LibGLib.option_context_set_translation_domain(@pointer.as(LibGLib::OptionContext*), domain.to_unsafe)
      nil
    end

  end
end

