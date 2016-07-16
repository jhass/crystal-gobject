module Gtk
  class RadioActionEntry
    include GObject::WrappedType

    def self.new(name : String|Nil = nil, stock_id : String|Nil = nil, label : String|Nil = nil, accelerator : String|Nil = nil, tooltip : String|Nil = nil, value : Int32|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(48, 0u8)
      new(ptr.as(LibGtk::RadioActionEntry*)).tap do |object|
        object.name = name unless name.nil?
        object.stock_id = stock_id unless stock_id.nil?
        object.label = label unless label.nil?
        object.accelerator = accelerator unless accelerator.nil?
        object.tooltip = tooltip unless tooltip.nil?
        object.value = value unless value.nil?
      end
    end

    @gtk_radio_action_entry : LibGtk::RadioActionEntry*?
    def initialize(@gtk_radio_action_entry : LibGtk::RadioActionEntry*)
    end

    def to_unsafe
      @gtk_radio_action_entry.not_nil!.as(Void*)
    end

    def name
      (raise "Expected string but got null" unless (to_unsafe.value.name); ::String.new((to_unsafe.value.name)))
    end

    def name=(value : String)
      to_unsafe.value.name = value.to_unsafe
    end

    def stock_id
      (raise "Expected string but got null" unless (to_unsafe.value.stock_id); ::String.new((to_unsafe.value.stock_id)))
    end

    def stock_id=(value : String)
      to_unsafe.value.stock_id = value.to_unsafe
    end

    def label
      (raise "Expected string but got null" unless (to_unsafe.value.label); ::String.new((to_unsafe.value.label)))
    end

    def label=(value : String)
      to_unsafe.value.label = value.to_unsafe
    end

    def accelerator
      (raise "Expected string but got null" unless (to_unsafe.value.accelerator); ::String.new((to_unsafe.value.accelerator)))
    end

    def accelerator=(value : String)
      to_unsafe.value.accelerator = value.to_unsafe
    end

    def tooltip
      (raise "Expected string but got null" unless (to_unsafe.value.tooltip); ::String.new((to_unsafe.value.tooltip)))
    end

    def tooltip=(value : String)
      to_unsafe.value.tooltip = value.to_unsafe
    end

    def value
      (to_unsafe.value.value)
    end

    def value=(value : Int32)
      to_unsafe.value.value = Int32.new(value)
    end

  end
end

