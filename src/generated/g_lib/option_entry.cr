module GLib
  class OptionEntry
    include GObject::WrappedType

    def initialize(@g_lib_option_entry)
    end

    def to_unsafe
      @g_lib_option_entry.not_nil!
    end

  end
end

