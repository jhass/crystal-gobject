module Gtk
  class TextAppearance
    include GObject::WrappedType

    def self.new(bg_color : Gdk::Color|Nil = nil, fg_color : Gdk::Color|Nil = nil, rise : Int32|Nil = nil, underline : UInt32|Nil = nil, strikethrough : UInt32|Nil = nil, draw_bg : UInt32|Nil = nil, inside_selection : UInt32|Nil = nil, is_text : UInt32|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(48, 0u8)
      new(ptr.as(LibGtk::TextAppearance*)).tap do |object|
        object.bg_color = bg_color unless bg_color.nil?
        object.fg_color = fg_color unless fg_color.nil?
        object.rise = rise unless rise.nil?
        object.underline = underline unless underline.nil?
        object.strikethrough = strikethrough unless strikethrough.nil?
        object.draw_bg = draw_bg unless draw_bg.nil?
        object.inside_selection = inside_selection unless inside_selection.nil?
        object.is_text = is_text unless is_text.nil?
      end
    end

    @pointer : Void*
    def initialize(pointer : LibGtk::TextAppearance*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::TextAppearance*)
    end

    def bg_color
      Gdk::Color.new((to_unsafe.as(LibGtk::TextAppearance*).value.bg_color))
    end

    def bg_color=(value : Gdk::Color)
      to_unsafe.as(LibGtk::TextAppearance*).value.bg_color = value
    end

    def fg_color
      Gdk::Color.new((to_unsafe.as(LibGtk::TextAppearance*).value.fg_color))
    end

    def fg_color=(value : Gdk::Color)
      to_unsafe.as(LibGtk::TextAppearance*).value.fg_color = value
    end

    def rise
      (to_unsafe.as(LibGtk::TextAppearance*).value.rise)
    end

    def rise=(value : Int32)
      to_unsafe.as(LibGtk::TextAppearance*).value.rise = Int32.new(value)
    end

    def underline
      (to_unsafe.as(LibGtk::TextAppearance*).value.underline)
    end

    def underline=(value : UInt32)
      to_unsafe.as(LibGtk::TextAppearance*).value.underline = UInt32.new(value)
    end

    def strikethrough
      (to_unsafe.as(LibGtk::TextAppearance*).value.strikethrough)
    end

    def strikethrough=(value : UInt32)
      to_unsafe.as(LibGtk::TextAppearance*).value.strikethrough = UInt32.new(value)
    end

    def draw_bg
      (to_unsafe.as(LibGtk::TextAppearance*).value.draw_bg)
    end

    def draw_bg=(value : UInt32)
      to_unsafe.as(LibGtk::TextAppearance*).value.draw_bg = UInt32.new(value)
    end

    def inside_selection
      (to_unsafe.as(LibGtk::TextAppearance*).value.inside_selection)
    end

    def inside_selection=(value : UInt32)
      to_unsafe.as(LibGtk::TextAppearance*).value.inside_selection = UInt32.new(value)
    end

    def is_text
      (to_unsafe.as(LibGtk::TextAppearance*).value.is_text)
    end

    def is_text=(value : UInt32)
      to_unsafe.as(LibGtk::TextAppearance*).value.is_text = UInt32.new(value)
    end

  end
end

