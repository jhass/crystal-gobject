module GLib
  class MarkupParseContext
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGLib::MarkupParseContext*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGLib::MarkupParseContext*)
    end

    def self.new(parser, flags : GLib::MarkupParseFlags, user_data, user_data_dnotify) : self
      __return_value = LibGLib.markup_parse_context_new(parser.to_unsafe.as(LibGLib::MarkupParser*), flags, user_data ? user_data : nil, user_data_dnotify)
      cast GLib::MarkupParseContext.new(__return_value)
    end

    def end_parse
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.markup_parse_context_end_parse(@pointer.as(LibGLib::MarkupParseContext*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def free
      LibGLib.markup_parse_context_free(@pointer.as(LibGLib::MarkupParseContext*))
      nil
    end

    def element
      __return_value = LibGLib.markup_parse_context_get_element(@pointer.as(LibGLib::MarkupParseContext*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def position(line_number, char_number)
      LibGLib.markup_parse_context_get_position(@pointer.as(LibGLib::MarkupParseContext*), line_number ? line_number : nil, char_number ? char_number : nil)
      nil
    end

    def user_data
      LibGLib.markup_parse_context_get_user_data(@pointer.as(LibGLib::MarkupParseContext*))
      nil
    end

    def parse(text, text_len)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.markup_parse_context_parse(@pointer.as(LibGLib::MarkupParseContext*), text.to_unsafe, Int64.new(text_len), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def pop
      LibGLib.markup_parse_context_pop(@pointer.as(LibGLib::MarkupParseContext*))
      nil
    end

    def push(parser, user_data)
      LibGLib.markup_parse_context_push(@pointer.as(LibGLib::MarkupParseContext*), parser.to_unsafe.as(LibGLib::MarkupParser*), user_data ? user_data : nil)
      nil
    end

    def ref
      __return_value = LibGLib.markup_parse_context_ref(@pointer.as(LibGLib::MarkupParseContext*))
      GLib::MarkupParseContext.new(__return_value)
    end

    def unref
      LibGLib.markup_parse_context_unref(@pointer.as(LibGLib::MarkupParseContext*))
      nil
    end

  end
end

