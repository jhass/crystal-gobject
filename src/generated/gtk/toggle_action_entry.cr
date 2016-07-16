module Gtk
  class ToggleActionEntry
    include GObject::WrappedType

    def self.new(name : String|Nil = nil, stock_id : String|Nil = nil, label : String|Nil = nil, accelerator : String|Nil = nil, tooltip : String|Nil = nil, callback : GObject::Callback|Nil = nil, is_active : Bool|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(56, 0u8)
      new(ptr.as(LibGtk::ToggleActionEntry*)).tap do |object|
        object.name = name unless name.nil?
        object.stock_id = stock_id unless stock_id.nil?
        object.label = label unless label.nil?
        object.accelerator = accelerator unless accelerator.nil?
        object.tooltip = tooltip unless tooltip.nil?
        object.callback = callback unless callback.nil?
        object.is_active = is_active unless is_active.nil?
      end
    end

    @gtk_toggle_action_entry : LibGtk::ToggleActionEntry*?
    def initialize(@gtk_toggle_action_entry : LibGtk::ToggleActionEntry*)
    end

    def to_unsafe
      @gtk_toggle_action_entry.not_nil!.as(Void*)
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

    def callback
      (to_unsafe.value.callback)
    end

    def callback=(value : GObject::Callback)
      to_unsafe.value.callback = value
    end

    def is_active
      (to_unsafe.value.is_active)
    end

    def is_active=(value : Bool)
      to_unsafe.value.is_active = value
    end

  end
end

