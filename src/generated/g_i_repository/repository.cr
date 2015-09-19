module GIRepository
  class Repository < GObject::Object
    def initialize @g_i_repository_repository
    end

    def to_unsafe
      @g_i_repository_repository.not_nil!
    end

    def self.dump(arg)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGIRepository.repository_dump(arg, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def self.error_quark
      __return_value = LibGIRepository.repository_error_quark
      __return_value
    end

    def self.default
      __return_value = LibGIRepository.repository_get_default
      GIRepository::Repository.new(__return_value)
    end

    def self.search_path
      __return_value = LibGIRepository.repository_get_search_path
      __return_value
    end

    def self.prepend_library_path(directory)
      __return_value = LibGIRepository.repository_prepend_library_path(directory)
      __return_value
    end

    def self.prepend_search_path(directory)
      __return_value = LibGIRepository.repository_prepend_search_path(directory)
      __return_value
    end

    def enumerate_versions(namespace)
      __return_value = LibGIRepository.repository_enumerate_versions((to_unsafe as LibGIRepository::Repository*), namespace)
      __return_value
    end

    def find_by_error_domain(domain)
      __return_value = LibGIRepository.repository_find_by_error_domain((to_unsafe as LibGIRepository::Repository*), UInt32.new(domain))
      GIRepository::BaseInfo.new(__return_value)
    end

    def find_by_gtype(gtype)
      __return_value = LibGIRepository.repository_find_by_gtype((to_unsafe as LibGIRepository::Repository*), UInt64.new(gtype))
      GIRepository::BaseInfo.new(__return_value)
    end

    def find_by_name(namespace, name)
      __return_value = LibGIRepository.repository_find_by_name((to_unsafe as LibGIRepository::Repository*), namespace, name)
      GIRepository::BaseInfo.new(__return_value)
    end

    def c_prefix(namespace)
      __return_value = LibGIRepository.repository_get_c_prefix((to_unsafe as LibGIRepository::Repository*), namespace)
      raise "Expected string but got null" unless __return_value; String.new(__return_value)
    end

    def dependencies(namespace)
      __return_value = LibGIRepository.repository_get_dependencies((to_unsafe as LibGIRepository::Repository*), namespace)
      PointerIterator.new(__return_value) {|__item_45| raise "Expected string but got null" unless __item_45; String.new(__item_45) }
    end

    def immediate_dependencies(namespace)
      __return_value = LibGIRepository.repository_get_immediate_dependencies((to_unsafe as LibGIRepository::Repository*), namespace)
      PointerIterator.new(__return_value) {|__item_64| raise "Expected string but got null" unless __item_64; String.new(__item_64) }
    end

    def info(namespace, index)
      __return_value = LibGIRepository.repository_get_info((to_unsafe as LibGIRepository::Repository*), namespace, Int32.new(index))
      GIRepository::BaseInfo.new(__return_value)
    end

    def loaded_namespaces
      __return_value = LibGIRepository.repository_get_loaded_namespaces((to_unsafe as LibGIRepository::Repository*))
      PointerIterator.new(__return_value) {|__item_22| raise "Expected string but got null" unless __item_22; String.new(__item_22) }
    end

    def n_infos(namespace)
      __return_value = LibGIRepository.repository_get_n_infos((to_unsafe as LibGIRepository::Repository*), namespace)
      __return_value
    end

    def shared_library(namespace)
      __return_value = LibGIRepository.repository_get_shared_library((to_unsafe as LibGIRepository::Repository*), namespace)
      raise "Expected string but got null" unless __return_value; String.new(__return_value)
    end

    def typelib_path(namespace)
      __return_value = LibGIRepository.repository_get_typelib_path((to_unsafe as LibGIRepository::Repository*), namespace)
      raise "Expected string but got null" unless __return_value; String.new(__return_value)
    end

    def version(namespace)
      __return_value = LibGIRepository.repository_get_version((to_unsafe as LibGIRepository::Repository*), namespace)
      raise "Expected string but got null" unless __return_value; String.new(__return_value)
    end

    def is_registered(namespace, version)
      __return_value = LibGIRepository.repository_is_registered((to_unsafe as LibGIRepository::Repository*), namespace, version && version)
      __return_value
    end

    def load_typelib(typelib, flags)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGIRepository.repository_load_typelib((to_unsafe as LibGIRepository::Repository*), (typelib.to_unsafe as LibGIRepository::Typelib*), flags, pointerof(__error))
      GLib::Error.assert __error
      raise "Expected string but got null" unless __return_value; String.new(__return_value)
    end

    def require(namespace, version, flags)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGIRepository.repository_require((to_unsafe as LibGIRepository::Repository*), namespace, version && version, flags, pointerof(__error))
      GLib::Error.assert __error
      GIRepository::Typelib.new(__return_value)
    end

    def require_private(typelib_dir, namespace, version, flags)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGIRepository.repository_require_private((to_unsafe as LibGIRepository::Repository*), typelib_dir, namespace, version && version, flags, pointerof(__error))
      GLib::Error.assert __error
      GIRepository::Typelib.new(__return_value)
    end

  end
end

