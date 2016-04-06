module GLib
  class MarkupParser
    include GObject::WrappedType

    def initialize(@g_lib_markup_parser)
    end

    def to_unsafe
      @g_lib_markup_parser.not_nil!
    end

  end
end

