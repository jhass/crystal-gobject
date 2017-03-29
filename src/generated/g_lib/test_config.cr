module GLib
  class TestConfig
    include GObject::WrappedType

    def self.new(test_initialized : Bool|Nil = nil, test_quick : Bool|Nil = nil, test_perf : Bool|Nil = nil, test_verbose : Bool|Nil = nil, test_quiet : Bool|Nil = nil, test_undefined : Bool|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(24, 0u8)
      new(ptr.as(LibGLib::TestConfig*)).tap do |object|
        object.test_initialized = test_initialized unless test_initialized.nil?
        object.test_quick = test_quick unless test_quick.nil?
        object.test_perf = test_perf unless test_perf.nil?
        object.test_verbose = test_verbose unless test_verbose.nil?
        object.test_quiet = test_quiet unless test_quiet.nil?
        object.test_undefined = test_undefined unless test_undefined.nil?
      end
    end

    @g_lib_test_config : LibGLib::TestConfig*?
    def initialize(@g_lib_test_config : LibGLib::TestConfig*)
    end

    def to_unsafe
      @g_lib_test_config.not_nil!
    end

    def test_initialized
      (to_unsafe.as(LibGLib::TestConfig*).value.test_initialized)
    end

    def test_initialized=(value : Bool)
      to_unsafe.as(LibGLib::TestConfig*).value.test_initialized = value
    end

    def test_quick
      (to_unsafe.as(LibGLib::TestConfig*).value.test_quick)
    end

    def test_quick=(value : Bool)
      to_unsafe.as(LibGLib::TestConfig*).value.test_quick = value
    end

    def test_perf
      (to_unsafe.as(LibGLib::TestConfig*).value.test_perf)
    end

    def test_perf=(value : Bool)
      to_unsafe.as(LibGLib::TestConfig*).value.test_perf = value
    end

    def test_verbose
      (to_unsafe.as(LibGLib::TestConfig*).value.test_verbose)
    end

    def test_verbose=(value : Bool)
      to_unsafe.as(LibGLib::TestConfig*).value.test_verbose = value
    end

    def test_quiet
      (to_unsafe.as(LibGLib::TestConfig*).value.test_quiet)
    end

    def test_quiet=(value : Bool)
      to_unsafe.as(LibGLib::TestConfig*).value.test_quiet = value
    end

    def test_undefined
      (to_unsafe.as(LibGLib::TestConfig*).value.test_undefined)
    end

    def test_undefined=(value : Bool)
      to_unsafe.as(LibGLib::TestConfig*).value.test_undefined = value
    end

  end
end

