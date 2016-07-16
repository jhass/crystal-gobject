module GLib
  class TestLogMsg
    include GObject::WrappedType

    def self.new(log_type : GLib::TestLogType|Nil = nil, n_strings : UInt32|Nil = nil, strings : String|Nil = nil, n_nums : UInt32|Nil = nil, nums : Int64|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(32, 0u8)
      new(ptr.as(LibGLib::TestLogMsg*)).tap do |object|
        object.log_type = log_type unless log_type.nil?
        object.n_strings = n_strings unless n_strings.nil?
        object.strings = strings unless strings.nil?
        object.n_nums = n_nums unless n_nums.nil?
        object.nums = nums unless nums.nil?
      end
    end

    @g_lib_test_log_msg : LibGLib::TestLogMsg*?
    def initialize(@g_lib_test_log_msg : LibGLib::TestLogMsg*)
    end

    def to_unsafe
      @g_lib_test_log_msg.not_nil!.as(Void*)
    end

    def free
      __return_value = LibGLib.test_log_msg_free(to_unsafe.as(LibGLib::TestLogMsg*))
      __return_value
    end

    def log_type
      (to_unsafe.as(LibGLib::TestLogMsg*).value.log_type)
    end

    def log_type=(value : GLib::TestLogType)
      to_unsafe.as(LibGLib::TestLogMsg*).value.log_type = value
    end

    def n_strings
      (to_unsafe.as(LibGLib::TestLogMsg*).value.n_strings)
    end

    def n_strings=(value : UInt32)
      to_unsafe.as(LibGLib::TestLogMsg*).value.n_strings = UInt32.new(value)
    end

    def strings
      (raise "Expected string but got null" unless (to_unsafe.as(LibGLib::TestLogMsg*).value.strings); ::String.new((to_unsafe.as(LibGLib::TestLogMsg*).value.strings)))
    end

    def strings=(value : String)
      to_unsafe.as(LibGLib::TestLogMsg*).value.strings = value.to_unsafe
    end

    def n_nums
      (to_unsafe.as(LibGLib::TestLogMsg*).value.n_nums)
    end

    def n_nums=(value : UInt32)
      to_unsafe.as(LibGLib::TestLogMsg*).value.n_nums = UInt32.new(value)
    end

    def nums
      (to_unsafe.as(LibGLib::TestLogMsg*).value.nums)
    end

    def nums=(value : Int64)
      to_unsafe.as(LibGLib::TestLogMsg*).value.nums = value
    end

  end
end

