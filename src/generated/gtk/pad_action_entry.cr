module Gtk
  class PadActionEntry
    include GObject::WrappedType

    def self.new(type : Gtk::PadActionType|Nil = nil, index : Int32|Nil = nil, mode : Int32|Nil = nil, label : String|Nil = nil, action_name : String|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(32, 0u8)
      new(ptr.as(LibGtk::PadActionEntry*)).tap do |object|
        object.type = type unless type.nil?
        object.index = index unless index.nil?
        object.mode = mode unless mode.nil?
        object.label = label unless label.nil?
        object.action_name = action_name unless action_name.nil?
      end
    end

    @gtk_pad_action_entry : LibGtk::PadActionEntry*?
    def initialize(@gtk_pad_action_entry : LibGtk::PadActionEntry*)
    end

    def to_unsafe
      @gtk_pad_action_entry.not_nil!
    end

    def type
      (to_unsafe.as(LibGtk::PadActionEntry*).value.type)
    end

    def type=(value : Gtk::PadActionType)
      to_unsafe.as(LibGtk::PadActionEntry*).value.type = value
    end

    def index
      (to_unsafe.as(LibGtk::PadActionEntry*).value.index)
    end

    def index=(value : Int32)
      to_unsafe.as(LibGtk::PadActionEntry*).value.index = Int32.new(value)
    end

    def mode
      (to_unsafe.as(LibGtk::PadActionEntry*).value.mode)
    end

    def mode=(value : Int32)
      to_unsafe.as(LibGtk::PadActionEntry*).value.mode = Int32.new(value)
    end

    def label
      (raise "Expected string but got null" unless (to_unsafe.as(LibGtk::PadActionEntry*).value.label); ::String.new((to_unsafe.as(LibGtk::PadActionEntry*).value.label)))
    end

    def label=(value : String)
      to_unsafe.as(LibGtk::PadActionEntry*).value.label = value.to_unsafe
    end

    def action_name
      (raise "Expected string but got null" unless (to_unsafe.as(LibGtk::PadActionEntry*).value.action_name); ::String.new((to_unsafe.as(LibGtk::PadActionEntry*).value.action_name)))
    end

    def action_name=(value : String)
      to_unsafe.as(LibGtk::PadActionEntry*).value.action_name = value.to_unsafe
    end

  end
end

