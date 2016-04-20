module GLib
  class OptionEntry
    include GObject::WrappedType

    @g_lib_option_entry : LibGLib::OptionEntry*?
    def initialize(@g_lib_option_entry : LibGLib::OptionEntry*)
    end

    def to_unsafe
      @g_lib_option_entry.not_nil!
    end

  end
end

