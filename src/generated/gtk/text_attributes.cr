module Gtk
  class TextAttributes
    include GObject::WrappedType

    def self.new(appearance : Gtk::TextAppearance|Nil = nil, justification : Gtk::Justification|Nil = nil, direction : Gtk::TextDirection|Nil = nil, font : Pango::FontDescription|Nil = nil, font_scale : Float64|Nil = nil, left_margin : Int32|Nil = nil, right_margin : Int32|Nil = nil, indent : Int32|Nil = nil, pixels_above_lines : Int32|Nil = nil, pixels_below_lines : Int32|Nil = nil, pixels_inside_wrap : Int32|Nil = nil, tabs : Pango::TabArray|Nil = nil, wrap_mode : Gtk::WrapMode|Nil = nil, language : Pango::Language|Nil = nil, invisible : UInt32|Nil = nil, bg_full_height : UInt32|Nil = nil, editable : UInt32|Nil = nil, no_fallback : UInt32|Nil = nil, letter_spacing : Int32|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(168, 0u8)
      new(ptr.as(LibGtk::TextAttributes*)).tap do |object|
        object.appearance = appearance unless appearance.nil?
        object.justification = justification unless justification.nil?
        object.direction = direction unless direction.nil?
        object.font = font unless font.nil?
        object.font_scale = font_scale unless font_scale.nil?
        object.left_margin = left_margin unless left_margin.nil?
        object.right_margin = right_margin unless right_margin.nil?
        object.indent = indent unless indent.nil?
        object.pixels_above_lines = pixels_above_lines unless pixels_above_lines.nil?
        object.pixels_below_lines = pixels_below_lines unless pixels_below_lines.nil?
        object.pixels_inside_wrap = pixels_inside_wrap unless pixels_inside_wrap.nil?
        object.tabs = tabs unless tabs.nil?
        object.wrap_mode = wrap_mode unless wrap_mode.nil?
        object.language = language unless language.nil?
        object.invisible = invisible unless invisible.nil?
        object.bg_full_height = bg_full_height unless bg_full_height.nil?
        object.editable = editable unless editable.nil?
        object.no_fallback = no_fallback unless no_fallback.nil?
        object.letter_spacing = letter_spacing unless letter_spacing.nil?
      end
    end

    @gtk_text_attributes : LibGtk::TextAttributes*?
    def initialize(@gtk_text_attributes : LibGtk::TextAttributes*)
    end

    def to_unsafe
      @gtk_text_attributes.not_nil!.as(Void*)
    end

    def self.new : self
      __return_value = LibGtk.text_attributes_new
      cast Gtk::TextAttributes.new(__return_value)
    end

    def copy
      __return_value = LibGtk.text_attributes_copy(to_unsafe.as(LibGtk::TextAttributes*))
      Gtk::TextAttributes.new(__return_value)
    end

    def copy_values(dest)
      __return_value = LibGtk.text_attributes_copy_values(to_unsafe.as(LibGtk::TextAttributes*), dest.to_unsafe.as(LibGtk::TextAttributes*))
      __return_value
    end

    def ref
      __return_value = LibGtk.text_attributes_ref(to_unsafe.as(LibGtk::TextAttributes*))
      Gtk::TextAttributes.new(__return_value)
    end

    def unref
      __return_value = LibGtk.text_attributes_unref(to_unsafe.as(LibGtk::TextAttributes*))
      __return_value
    end

    def refcount
      (to_unsafe.as(LibGtk::TextAttributes*).value.refcount)
    end

    def appearance
      Gtk::TextAppearance.new((to_unsafe.as(LibGtk::TextAttributes*).value.appearance))
    end

    def appearance=(value : Gtk::TextAppearance)
      to_unsafe.as(LibGtk::TextAttributes*).value.appearance = value
    end

    def justification
      (to_unsafe.as(LibGtk::TextAttributes*).value.justification)
    end

    def justification=(value : Gtk::Justification)
      to_unsafe.as(LibGtk::TextAttributes*).value.justification = value
    end

    def direction
      (to_unsafe.as(LibGtk::TextAttributes*).value.direction)
    end

    def direction=(value : Gtk::TextDirection)
      to_unsafe.as(LibGtk::TextAttributes*).value.direction = value
    end

    def font
      Pango::FontDescription.new((to_unsafe.as(LibGtk::TextAttributes*).value.font))
    end

    def font=(value : Pango::FontDescription)
      to_unsafe.as(LibGtk::TextAttributes*).value.font = value.to_unsafe.as(LibPango::FontDescription*)
    end

    def font_scale
      (to_unsafe.as(LibGtk::TextAttributes*).value.font_scale)
    end

    def font_scale=(value : Float64)
      to_unsafe.as(LibGtk::TextAttributes*).value.font_scale = Float64.new(value)
    end

    def left_margin
      (to_unsafe.as(LibGtk::TextAttributes*).value.left_margin)
    end

    def left_margin=(value : Int32)
      to_unsafe.as(LibGtk::TextAttributes*).value.left_margin = Int32.new(value)
    end

    def right_margin
      (to_unsafe.as(LibGtk::TextAttributes*).value.right_margin)
    end

    def right_margin=(value : Int32)
      to_unsafe.as(LibGtk::TextAttributes*).value.right_margin = Int32.new(value)
    end

    def indent
      (to_unsafe.as(LibGtk::TextAttributes*).value.indent)
    end

    def indent=(value : Int32)
      to_unsafe.as(LibGtk::TextAttributes*).value.indent = Int32.new(value)
    end

    def pixels_above_lines
      (to_unsafe.as(LibGtk::TextAttributes*).value.pixels_above_lines)
    end

    def pixels_above_lines=(value : Int32)
      to_unsafe.as(LibGtk::TextAttributes*).value.pixels_above_lines = Int32.new(value)
    end

    def pixels_below_lines
      (to_unsafe.as(LibGtk::TextAttributes*).value.pixels_below_lines)
    end

    def pixels_below_lines=(value : Int32)
      to_unsafe.as(LibGtk::TextAttributes*).value.pixels_below_lines = Int32.new(value)
    end

    def pixels_inside_wrap
      (to_unsafe.as(LibGtk::TextAttributes*).value.pixels_inside_wrap)
    end

    def pixels_inside_wrap=(value : Int32)
      to_unsafe.as(LibGtk::TextAttributes*).value.pixels_inside_wrap = Int32.new(value)
    end

    def tabs
      Pango::TabArray.new((to_unsafe.as(LibGtk::TextAttributes*).value.tabs))
    end

    def tabs=(value : Pango::TabArray)
      to_unsafe.as(LibGtk::TextAttributes*).value.tabs = value.to_unsafe.as(LibPango::TabArray*)
    end

    def wrap_mode
      (to_unsafe.as(LibGtk::TextAttributes*).value.wrap_mode)
    end

    def wrap_mode=(value : Gtk::WrapMode)
      to_unsafe.as(LibGtk::TextAttributes*).value.wrap_mode = value
    end

    def language
      Pango::Language.new((to_unsafe.as(LibGtk::TextAttributes*).value.language))
    end

    def language=(value : Pango::Language)
      to_unsafe.as(LibGtk::TextAttributes*).value.language = value.to_unsafe.as(LibPango::Language*)
    end

    def pg_bg_color
      Gdk::Color.new((to_unsafe.as(LibGtk::TextAttributes*).value.pg_bg_color))
    end

    def invisible
      (to_unsafe.as(LibGtk::TextAttributes*).value.invisible)
    end

    def invisible=(value : UInt32)
      to_unsafe.as(LibGtk::TextAttributes*).value.invisible = UInt32.new(value)
    end

    def bg_full_height
      (to_unsafe.as(LibGtk::TextAttributes*).value.bg_full_height)
    end

    def bg_full_height=(value : UInt32)
      to_unsafe.as(LibGtk::TextAttributes*).value.bg_full_height = UInt32.new(value)
    end

    def editable
      (to_unsafe.as(LibGtk::TextAttributes*).value.editable)
    end

    def editable=(value : UInt32)
      to_unsafe.as(LibGtk::TextAttributes*).value.editable = UInt32.new(value)
    end

    def no_fallback
      (to_unsafe.as(LibGtk::TextAttributes*).value.no_fallback)
    end

    def no_fallback=(value : UInt32)
      to_unsafe.as(LibGtk::TextAttributes*).value.no_fallback = UInt32.new(value)
    end

    def pg_bg_rgba
      Gdk::RGBA.new((to_unsafe.as(LibGtk::TextAttributes*).value.pg_bg_rgba))
    end

    def letter_spacing
      (to_unsafe.as(LibGtk::TextAttributes*).value.letter_spacing)
    end

    def letter_spacing=(value : Int32)
      to_unsafe.as(LibGtk::TextAttributes*).value.letter_spacing = Int32.new(value)
    end

  end
end

