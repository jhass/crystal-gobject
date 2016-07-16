module Pango
  class LogAttr
    include GObject::WrappedType

    def self.new(is_line_break : UInt32|Nil = nil, is_mandatory_break : UInt32|Nil = nil, is_char_break : UInt32|Nil = nil, is_white : UInt32|Nil = nil, is_cursor_position : UInt32|Nil = nil, is_word_start : UInt32|Nil = nil, is_word_end : UInt32|Nil = nil, is_sentence_boundary : UInt32|Nil = nil, is_sentence_start : UInt32|Nil = nil, is_sentence_end : UInt32|Nil = nil, backspace_deletes_character : UInt32|Nil = nil, is_expandable_space : UInt32|Nil = nil, is_word_boundary : UInt32|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(52, 0u8)
      new(ptr.as(LibPango::LogAttr*)).tap do |object|
        object.is_line_break = is_line_break unless is_line_break.nil?
        object.is_mandatory_break = is_mandatory_break unless is_mandatory_break.nil?
        object.is_char_break = is_char_break unless is_char_break.nil?
        object.is_white = is_white unless is_white.nil?
        object.is_cursor_position = is_cursor_position unless is_cursor_position.nil?
        object.is_word_start = is_word_start unless is_word_start.nil?
        object.is_word_end = is_word_end unless is_word_end.nil?
        object.is_sentence_boundary = is_sentence_boundary unless is_sentence_boundary.nil?
        object.is_sentence_start = is_sentence_start unless is_sentence_start.nil?
        object.is_sentence_end = is_sentence_end unless is_sentence_end.nil?
        object.backspace_deletes_character = backspace_deletes_character unless backspace_deletes_character.nil?
        object.is_expandable_space = is_expandable_space unless is_expandable_space.nil?
        object.is_word_boundary = is_word_boundary unless is_word_boundary.nil?
      end
    end

    @pango_log_attr : LibPango::LogAttr*?
    def initialize(@pango_log_attr : LibPango::LogAttr*)
    end

    def to_unsafe
      @pango_log_attr.not_nil!.as(Void*)
    end

    def is_line_break
      (to_unsafe.as(LibPango::LogAttr*).value.is_line_break)
    end

    def is_line_break=(value : UInt32)
      to_unsafe.as(LibPango::LogAttr*).value.is_line_break = UInt32.new(value)
    end

    def is_mandatory_break
      (to_unsafe.as(LibPango::LogAttr*).value.is_mandatory_break)
    end

    def is_mandatory_break=(value : UInt32)
      to_unsafe.as(LibPango::LogAttr*).value.is_mandatory_break = UInt32.new(value)
    end

    def is_char_break
      (to_unsafe.as(LibPango::LogAttr*).value.is_char_break)
    end

    def is_char_break=(value : UInt32)
      to_unsafe.as(LibPango::LogAttr*).value.is_char_break = UInt32.new(value)
    end

    def is_white
      (to_unsafe.as(LibPango::LogAttr*).value.is_white)
    end

    def is_white=(value : UInt32)
      to_unsafe.as(LibPango::LogAttr*).value.is_white = UInt32.new(value)
    end

    def is_cursor_position
      (to_unsafe.as(LibPango::LogAttr*).value.is_cursor_position)
    end

    def is_cursor_position=(value : UInt32)
      to_unsafe.as(LibPango::LogAttr*).value.is_cursor_position = UInt32.new(value)
    end

    def is_word_start
      (to_unsafe.as(LibPango::LogAttr*).value.is_word_start)
    end

    def is_word_start=(value : UInt32)
      to_unsafe.as(LibPango::LogAttr*).value.is_word_start = UInt32.new(value)
    end

    def is_word_end
      (to_unsafe.as(LibPango::LogAttr*).value.is_word_end)
    end

    def is_word_end=(value : UInt32)
      to_unsafe.as(LibPango::LogAttr*).value.is_word_end = UInt32.new(value)
    end

    def is_sentence_boundary
      (to_unsafe.as(LibPango::LogAttr*).value.is_sentence_boundary)
    end

    def is_sentence_boundary=(value : UInt32)
      to_unsafe.as(LibPango::LogAttr*).value.is_sentence_boundary = UInt32.new(value)
    end

    def is_sentence_start
      (to_unsafe.as(LibPango::LogAttr*).value.is_sentence_start)
    end

    def is_sentence_start=(value : UInt32)
      to_unsafe.as(LibPango::LogAttr*).value.is_sentence_start = UInt32.new(value)
    end

    def is_sentence_end
      (to_unsafe.as(LibPango::LogAttr*).value.is_sentence_end)
    end

    def is_sentence_end=(value : UInt32)
      to_unsafe.as(LibPango::LogAttr*).value.is_sentence_end = UInt32.new(value)
    end

    def backspace_deletes_character
      (to_unsafe.as(LibPango::LogAttr*).value.backspace_deletes_character)
    end

    def backspace_deletes_character=(value : UInt32)
      to_unsafe.as(LibPango::LogAttr*).value.backspace_deletes_character = UInt32.new(value)
    end

    def is_expandable_space
      (to_unsafe.as(LibPango::LogAttr*).value.is_expandable_space)
    end

    def is_expandable_space=(value : UInt32)
      to_unsafe.as(LibPango::LogAttr*).value.is_expandable_space = UInt32.new(value)
    end

    def is_word_boundary
      (to_unsafe.as(LibPango::LogAttr*).value.is_word_boundary)
    end

    def is_word_boundary=(value : UInt32)
      to_unsafe.as(LibPango::LogAttr*).value.is_word_boundary = UInt32.new(value)
    end

  end
end

