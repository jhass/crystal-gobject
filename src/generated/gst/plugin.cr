require "./object"

module Gst
  class Plugin < Object
    @pointer : Void*
    def initialize(pointer : LibGst::Plugin*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGst::Plugin*)
    end

    def self.list_free(list)
      LibGst.plugin_list_free(list)
      nil
    end

    def self.load_by_name(name)
      __return_value = LibGst.plugin_load_by_name(name.to_unsafe)
      Gst::Plugin.new(__return_value) if __return_value
    end

    def self.load_file(filename)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGst.plugin_load_file(filename.to_unsafe, pointerof(__error))
      GLib::Error.assert __error
      Gst::Plugin.new(__return_value)
    end

    def self.register_static(major_version, minor_version, name, description, init_func, version, license, source, package, origin)
      __return_value = LibGst.plugin_register_static(Int32.new(major_version), Int32.new(minor_version), name.to_unsafe, description.to_unsafe, init_func, version.to_unsafe, license.to_unsafe, source.to_unsafe, package.to_unsafe, origin.to_unsafe)
      __return_value
    end

    def self.register_static_full(major_version, minor_version, name, description, init_full_func, version, license, source, package, origin, user_data)
      __return_value = LibGst.plugin_register_static_full(Int32.new(major_version), Int32.new(minor_version), name.to_unsafe, description.to_unsafe, init_full_func, version.to_unsafe, license.to_unsafe, source.to_unsafe, package.to_unsafe, origin.to_unsafe, user_data ? user_data : nil)
      __return_value
    end

    def add_dependency(env_vars, paths, names, flags : Gst::PluginDependencyFlags)
      LibGst.plugin_add_dependency(@pointer.as(LibGst::Plugin*), env_vars ? env_vars : nil, paths ? paths : nil, names ? names : nil, flags)
      nil
    end

    def add_dependency_simple(env_vars, paths, names, flags : Gst::PluginDependencyFlags)
      LibGst.plugin_add_dependency_simple(@pointer.as(LibGst::Plugin*), env_vars ? env_vars.to_unsafe : nil, paths ? paths.to_unsafe : nil, names ? names.to_unsafe : nil, flags)
      nil
    end

    def cache_data
      __return_value = LibGst.plugin_get_cache_data(@pointer.as(LibGst::Plugin*))
      Gst::Structure.new(__return_value) if __return_value
    end

    def description
      __return_value = LibGst.plugin_get_description(@pointer.as(LibGst::Plugin*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def filename
      __return_value = LibGst.plugin_get_filename(@pointer.as(LibGst::Plugin*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def license
      __return_value = LibGst.plugin_get_license(@pointer.as(LibGst::Plugin*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def name
      __return_value = LibGst.plugin_get_name(@pointer.as(LibGst::Plugin*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def origin
      __return_value = LibGst.plugin_get_origin(@pointer.as(LibGst::Plugin*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def package
      __return_value = LibGst.plugin_get_package(@pointer.as(LibGst::Plugin*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def release_date_string
      __return_value = LibGst.plugin_get_release_date_string(@pointer.as(LibGst::Plugin*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value)) if __return_value
    end

    def source
      __return_value = LibGst.plugin_get_source(@pointer.as(LibGst::Plugin*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def version
      __return_value = LibGst.plugin_get_version(@pointer.as(LibGst::Plugin*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def loaded?
      __return_value = LibGst.plugin_is_loaded(@pointer.as(LibGst::Plugin*))
      __return_value
    end

    def load
      __return_value = LibGst.plugin_load(@pointer.as(LibGst::Plugin*))
      Gst::Plugin.new(__return_value) if __return_value
    end

    def cache_data=(cache_data)
      LibGst.plugin_set_cache_data(@pointer.as(LibGst::Plugin*), cache_data.to_unsafe.as(LibGst::Structure*))
      nil
    end

  end
end

