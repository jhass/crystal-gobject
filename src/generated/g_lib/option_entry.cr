module GLib
  class OptionEntry
    include GObject::WrappedType

    def self.new(long_name : String|Nil = nil, short_name : Int8|Nil = nil, flags : Int32|Nil = nil, arg : GLib::OptionArg|Nil = nil, arg_data : Void*|Nil = nil, description : String|Nil = nil, arg_description : String|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(48, 0u8)
      new(ptr.as(LibGLib::OptionEntry*)).tap do |object|
        object.long_name = long_name unless long_name.nil?
        object.short_name = short_name unless short_name.nil?
        object.flags = flags unless flags.nil?
        object.arg = arg unless arg.nil?
        object.arg_data = arg_data unless arg_data.nil?
        object.description = description unless description.nil?
        object.arg_description = arg_description unless arg_description.nil?
      end
    end

    @g_lib_option_entry : LibGLib::OptionEntry*?
    def initialize(@g_lib_option_entry : LibGLib::OptionEntry*)
    end

    def to_unsafe
      @g_lib_option_entry.not_nil!
    end

    def long_name
      (raise "Expected string but got null" unless (to_unsafe.value.long_name); ::String.new((to_unsafe.value.long_name)))
    end

    def long_name=(value : String)
      to_unsafe.value.long_name = value.to_unsafe
    end

    def short_name
      (to_unsafe.value.short_name)
    end

    def short_name=(value : Int8)
      to_unsafe.value.short_name = Int8.new(value)
    end

    def flags
      (to_unsafe.value.flags)
    end

    def flags=(value : Int32)
      to_unsafe.value.flags = Int32.new(value)
    end

    def arg
      (to_unsafe.value.arg)
    end

    def arg=(value : GLib::OptionArg)
      to_unsafe.value.arg = value
    end

    def arg_data
      (to_unsafe.value.arg_data)
    end

    def arg_data=(value : Void*)
      to_unsafe.value.arg_data = value
    end

    def description
      (raise "Expected string but got null" unless (to_unsafe.value.description); ::String.new((to_unsafe.value.description)))
    end

    def description=(value : String)
      to_unsafe.value.description = value.to_unsafe
    end

    def arg_description
      (raise "Expected string but got null" unless (to_unsafe.value.arg_description); ::String.new((to_unsafe.value.arg_description)))
    end

    def arg_description=(value : String)
      to_unsafe.value.arg_description = value.to_unsafe
    end

  end
end

