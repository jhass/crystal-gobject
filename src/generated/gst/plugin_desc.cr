module Gst
  class PluginDesc
    include GObject::WrappedType

    def self.new(major_version : Int32|Nil = nil, minor_version : Int32|Nil = nil, name : String|Nil = nil, description : String|Nil = nil, plugin_init : Gst::PluginInitFunc|Nil = nil, version : String|Nil = nil, license : String|Nil = nil, source : String|Nil = nil, package : String|Nil = nil, origin : String|Nil = nil, release_datetime : String|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(112, 0u8)
      new(ptr.as(LibGst::PluginDesc*)).tap do |object|
        object.major_version = major_version unless major_version.nil?
        object.minor_version = minor_version unless minor_version.nil?
        object.name = name unless name.nil?
        object.description = description unless description.nil?
        object.plugin_init = plugin_init unless plugin_init.nil?
        object.version = version unless version.nil?
        object.license = license unless license.nil?
        object.source = source unless source.nil?
        object.package = package unless package.nil?
        object.origin = origin unless origin.nil?
        object.release_datetime = release_datetime unless release_datetime.nil?
      end
    end

    @gst_plugin_desc : LibGst::PluginDesc*?
    def initialize(@gst_plugin_desc : LibGst::PluginDesc*)
    end

    def to_unsafe
      @gst_plugin_desc.not_nil!
    end

    def major_version
      (to_unsafe.as(LibGst::PluginDesc*).value.major_version)
    end

    def major_version=(value : Int32)
      to_unsafe.as(LibGst::PluginDesc*).value.major_version = Int32.new(value)
    end

    def minor_version
      (to_unsafe.as(LibGst::PluginDesc*).value.minor_version)
    end

    def minor_version=(value : Int32)
      to_unsafe.as(LibGst::PluginDesc*).value.minor_version = Int32.new(value)
    end

    def name
      (raise "Expected string but got null" unless (to_unsafe.as(LibGst::PluginDesc*).value.name); ::String.new((to_unsafe.as(LibGst::PluginDesc*).value.name)))
    end

    def name=(value : String)
      to_unsafe.as(LibGst::PluginDesc*).value.name = value.to_unsafe
    end

    def description
      (raise "Expected string but got null" unless (to_unsafe.as(LibGst::PluginDesc*).value.description); ::String.new((to_unsafe.as(LibGst::PluginDesc*).value.description)))
    end

    def description=(value : String)
      to_unsafe.as(LibGst::PluginDesc*).value.description = value.to_unsafe
    end

    def plugin_init
      (to_unsafe.as(LibGst::PluginDesc*).value.plugin_init)
    end

    def plugin_init=(value : Gst::PluginInitFunc)
      to_unsafe.as(LibGst::PluginDesc*).value.plugin_init = value
    end

    def version
      (raise "Expected string but got null" unless (to_unsafe.as(LibGst::PluginDesc*).value.version); ::String.new((to_unsafe.as(LibGst::PluginDesc*).value.version)))
    end

    def version=(value : String)
      to_unsafe.as(LibGst::PluginDesc*).value.version = value.to_unsafe
    end

    def license
      (raise "Expected string but got null" unless (to_unsafe.as(LibGst::PluginDesc*).value.license); ::String.new((to_unsafe.as(LibGst::PluginDesc*).value.license)))
    end

    def license=(value : String)
      to_unsafe.as(LibGst::PluginDesc*).value.license = value.to_unsafe
    end

    def source
      (raise "Expected string but got null" unless (to_unsafe.as(LibGst::PluginDesc*).value.source); ::String.new((to_unsafe.as(LibGst::PluginDesc*).value.source)))
    end

    def source=(value : String)
      to_unsafe.as(LibGst::PluginDesc*).value.source = value.to_unsafe
    end

    def package
      (raise "Expected string but got null" unless (to_unsafe.as(LibGst::PluginDesc*).value.package); ::String.new((to_unsafe.as(LibGst::PluginDesc*).value.package)))
    end

    def package=(value : String)
      to_unsafe.as(LibGst::PluginDesc*).value.package = value.to_unsafe
    end

    def origin
      (raise "Expected string but got null" unless (to_unsafe.as(LibGst::PluginDesc*).value.origin); ::String.new((to_unsafe.as(LibGst::PluginDesc*).value.origin)))
    end

    def origin=(value : String)
      to_unsafe.as(LibGst::PluginDesc*).value.origin = value.to_unsafe
    end

    def release_datetime
      (raise "Expected string but got null" unless (to_unsafe.as(LibGst::PluginDesc*).value.release_datetime); ::String.new((to_unsafe.as(LibGst::PluginDesc*).value.release_datetime)))
    end

    def release_datetime=(value : String)
      to_unsafe.as(LibGst::PluginDesc*).value.release_datetime = value.to_unsafe
    end

    def _gst_reserved
      PointerIterator.new((to_unsafe.as(LibGst::PluginDesc*).value._gst_reserved)) {|__item| __item }
    end

  end
end

