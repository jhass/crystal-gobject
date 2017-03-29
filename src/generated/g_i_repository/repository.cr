module GIRepository
  class Repository < GObject::Object
    @g_i_repository_repository : LibGIRepository::Repository*?
    def initialize(@g_i_repository_repository : LibGIRepository::Repository*)
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
      GLib::SListIterator(String, UInt8**).new(GLib::SList.new(__return_value.as(LibGLib::SList*)))
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
      __return_value = LibGIRepository.repository_enumerate_versions(to_unsafe.as(LibGIRepository::Repository*), namespace)
      GLib::ListIterator(String, UInt8**).new(GLib::SList.new(__return_value.as(LibGLib::List*)))
    end

    def find_by_error_domain(domain)
      __return_value = LibGIRepository.repository_find_by_error_domain(to_unsafe.as(LibGIRepository::Repository*), UInt32.new(domain))
      GIRepository::BaseInfo.new(__return_value)
    end

    def find_by_gtype(gtype)
      __return_value = LibGIRepository.repository_find_by_gtype(to_unsafe.as(LibGIRepository::Repository*), UInt64.new(gtype))
      GIRepository::BaseInfo.new(__return_value)
    end

    def find_by_name(namespace, name)
      __return_value = LibGIRepository.repository_find_by_name(to_unsafe.as(LibGIRepository::Repository*), namespace, name)
      GIRepository::BaseInfo.new(__return_value)
    end

    def c_prefix(namespace)
      __return_value = LibGIRepository.repository_get_c_prefix(to_unsafe.as(LibGIRepository::Repository*), namespace)
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def dependencies(namespace)
      __return_value = LibGIRepository.repository_get_dependencies(to_unsafe.as(LibGIRepository::Repository*), namespace)
      PointerIterator.new(__return_value) {|__item| (raise "Expected string but got null" unless __item; ::String.new(__item)) }
    end

    def immediate_dependencies(namespace)
      __return_value = LibGIRepository.repository_get_immediate_dependencies(to_unsafe.as(LibGIRepository::Repository*), namespace)
      PointerIterator.new(__return_value) {|__item| (raise "Expected string but got null" unless __item; ::String.new(__item)) }
    end

    def info(namespace, index)
      __return_value = LibGIRepository.repository_get_info(to_unsafe.as(LibGIRepository::Repository*), namespace, Int32.new(index))
      GIRepository::BaseInfo.new(__return_value)
    end

    def loaded_namespaces
      __return_value = LibGIRepository.repository_get_loaded_namespaces(to_unsafe.as(LibGIRepository::Repository*))
      PointerIterator.new(__return_value) {|__item| (raise "Expected string but got null" unless __item; ::String.new(__item)) }
    end

    def n_infos(namespace)
      __return_value = LibGIRepository.repository_get_n_infos(to_unsafe.as(LibGIRepository::Repository*), namespace)
      __return_value
    end

    def shared_library(namespace)
      __return_value = LibGIRepository.repository_get_shared_library(to_unsafe.as(LibGIRepository::Repository*), namespace)
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def typelib_path(namespace)
      __return_value = LibGIRepository.repository_get_typelib_path(to_unsafe.as(LibGIRepository::Repository*), namespace)
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def version(namespace)
      __return_value = LibGIRepository.repository_get_version(to_unsafe.as(LibGIRepository::Repository*), namespace)
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def registered?(namespace, version)
      __return_value = LibGIRepository.repository_is_registered(to_unsafe.as(LibGIRepository::Repository*), namespace, version)
      __return_value
    end

    def load_typelib(typelib, flags : GIRepository::RepositoryLoadFlags)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGIRepository.repository_load_typelib(to_unsafe.as(LibGIRepository::Repository*), typelib.to_unsafe.as(LibGIRepository::Typelib*), flags, pointerof(__error))
      GLib::Error.assert __error
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def require(namespace, version, flags : GIRepository::RepositoryLoadFlags)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGIRepository.repository_require(to_unsafe.as(LibGIRepository::Repository*), namespace, version, flags, pointerof(__error))
      GLib::Error.assert __error
      GIRepository::Typelib.new(__return_value)
    end

    def require_private(typelib_dir, namespace, version, flags : GIRepository::RepositoryLoadFlags)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGIRepository.repository_require_private(to_unsafe.as(LibGIRepository::Repository*), typelib_dir, namespace, version, flags, pointerof(__error))
      GLib::Error.assert __error
      GIRepository::Typelib.new(__return_value)
    end

  end
end

