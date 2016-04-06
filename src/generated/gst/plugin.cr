require "./object"

module Gst
  class Plugin < Object
    def initialize(@gst_plugin)
    end

    def to_unsafe
      @gst_plugin.not_nil!
    end

    def self.list_free(list)
      __return_value = LibGst.plugin_list_free(list)
      __return_value
    end

    def self.load_by_name(name)
      __return_value = LibGst.plugin_load_by_name(name)
      Gst::Plugin.new(__return_value)
    end

    def self.load_file(filename)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGst.plugin_load_file(filename, pointerof(__error))
      GLib::Error.assert __error
      Gst::Plugin.new(__return_value)
    end

    def self.register_static(major_version, minor_version, name, description, init_func : LibGst::PluginInitFunc, version, license, source, package, origin)
      __return_value = LibGst.plugin_register_static(Int32.new(major_version), Int32.new(minor_version), name, description, init_func, version, license, source, package, origin)
      __return_value
    end

    def self.register_static_full(major_version, minor_version, name, description, init_full_func : LibGst::PluginInitFullFunc, version, license, source, package, origin, user_data)
      __return_value = LibGst.plugin_register_static_full(Int32.new(major_version), Int32.new(minor_version), name, description, init_full_func, version, license, source, package, origin, user_data)
      __return_value
    end

    def add_dependency(env_vars, paths, names, flags)
      __return_value = LibGst.plugin_add_dependency((to_unsafe as LibGst::Plugin*), env_vars && env_vars, paths && paths, names && names, flags)
      __return_value
    end

    def add_dependency_simple(env_vars, paths, names, flags)
      __return_value = LibGst.plugin_add_dependency_simple((to_unsafe as LibGst::Plugin*), env_vars && env_vars, paths && paths, names && names, flags)
      __return_value
    end

    def cache_data
      __return_value = LibGst.plugin_get_cache_data((to_unsafe as LibGst::Plugin*))
      Gst::Structure.new(__return_value) if __return_value
    end

    def description
      __return_value = LibGst.plugin_get_description((to_unsafe as LibGst::Plugin*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def filename
      __return_value = LibGst.plugin_get_filename((to_unsafe as LibGst::Plugin*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def license
      __return_value = LibGst.plugin_get_license((to_unsafe as LibGst::Plugin*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def name
      __return_value = LibGst.plugin_get_name((to_unsafe as LibGst::Plugin*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def origin
      __return_value = LibGst.plugin_get_origin((to_unsafe as LibGst::Plugin*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def package
      __return_value = LibGst.plugin_get_package((to_unsafe as LibGst::Plugin*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def release_date_string
      __return_value = LibGst.plugin_get_release_date_string((to_unsafe as LibGst::Plugin*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value)) if __return_value
    end

    def source
      __return_value = LibGst.plugin_get_source((to_unsafe as LibGst::Plugin*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def version
      __return_value = LibGst.plugin_get_version((to_unsafe as LibGst::Plugin*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def loaded?
      __return_value = LibGst.plugin_is_loaded((to_unsafe as LibGst::Plugin*))
      __return_value
    end

    def load
      __return_value = LibGst.plugin_load((to_unsafe as LibGst::Plugin*))
      Gst::Plugin.new(__return_value)
    end

    def cache_data=(cache_data)
      __return_value = LibGst.plugin_set_cache_data((to_unsafe as LibGst::Plugin*), (cache_data.to_unsafe as LibGst::Structure*))
      __return_value
    end

  end
end

