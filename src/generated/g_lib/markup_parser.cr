module GLib
  class MarkupParser
    include GObject::WrappedType

    @g_lib_markup_parser : LibGLib::MarkupParser*?
    def initialize(@g_lib_markup_parser : LibGLib::MarkupParser*)
    end

    def to_unsafe
      @g_lib_markup_parser.not_nil!
    end

  end
end

