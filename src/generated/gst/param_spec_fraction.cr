module Gst
  class ParamSpecFraction
    include GObject::WrappedType

    def self.new(parent_instance : GObject::ParamSpec|Nil = nil, min_num : Int32|Nil = nil, min_den : Int32|Nil = nil, max_num : Int32|Nil = nil, max_den : Int32|Nil = nil, def_num : Int32|Nil = nil, def_den : Int32|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(96, 0u8)
      new(ptr.as(LibGst::ParamSpecFraction*)).tap do |object|
        object.parent_instance = parent_instance unless parent_instance.nil?
        object.min_num = min_num unless min_num.nil?
        object.min_den = min_den unless min_den.nil?
        object.max_num = max_num unless max_num.nil?
        object.max_den = max_den unless max_den.nil?
        object.def_num = def_num unless def_num.nil?
        object.def_den = def_den unless def_den.nil?
      end
    end

    @gst_param_spec_fraction : LibGst::ParamSpecFraction*?
    def initialize(@gst_param_spec_fraction : LibGst::ParamSpecFraction*)
    end

    def to_unsafe
      @gst_param_spec_fraction.not_nil!
    end

    def parent_instance
      GObject::ParamSpec.new((to_unsafe.as(LibGst::ParamSpecFraction*).value.parent_instance))
    end

    def parent_instance=(value : GObject::ParamSpec)
      to_unsafe.as(LibGst::ParamSpecFraction*).value.parent_instance = value
    end

    def min_num
      (to_unsafe.as(LibGst::ParamSpecFraction*).value.min_num)
    end

    def min_num=(value : Int32)
      to_unsafe.as(LibGst::ParamSpecFraction*).value.min_num = Int32.new(value)
    end

    def min_den
      (to_unsafe.as(LibGst::ParamSpecFraction*).value.min_den)
    end

    def min_den=(value : Int32)
      to_unsafe.as(LibGst::ParamSpecFraction*).value.min_den = Int32.new(value)
    end

    def max_num
      (to_unsafe.as(LibGst::ParamSpecFraction*).value.max_num)
    end

    def max_num=(value : Int32)
      to_unsafe.as(LibGst::ParamSpecFraction*).value.max_num = Int32.new(value)
    end

    def max_den
      (to_unsafe.as(LibGst::ParamSpecFraction*).value.max_den)
    end

    def max_den=(value : Int32)
      to_unsafe.as(LibGst::ParamSpecFraction*).value.max_den = Int32.new(value)
    end

    def def_num
      (to_unsafe.as(LibGst::ParamSpecFraction*).value.def_num)
    end

    def def_num=(value : Int32)
      to_unsafe.as(LibGst::ParamSpecFraction*).value.def_num = Int32.new(value)
    end

    def def_den
      (to_unsafe.as(LibGst::ParamSpecFraction*).value.def_den)
    end

    def def_den=(value : Int32)
      to_unsafe.as(LibGst::ParamSpecFraction*).value.def_den = Int32.new(value)
    end

  end
end

