module GIRepository
  class Repository < GObject::Object
    @pointer : Void*
    def initialize(pointer : LibGIRepository::Repository*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGIRepository::Repository*)
    end

    def self.dump(arg) # function
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGIRepository.repository_dump(arg.to_unsafe, pointerof(__error))
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
      LibGIRepository.repository_prepend_library_path(directory.to_unsafe)
      nil
    end

    def self.prepend_search_path(directory)
      LibGIRepository.repository_prepend_search_path(directory.to_unsafe)
      nil
    end

    def enumerate_versions(namespace)
      __return_value = LibGIRepository.repository_enumerate_versions(@pointer.as(LibGIRepository::Repository*), namespace.to_unsafe)
      GLib::ListIterator(String, UInt8**).new(GLib::SList.new(__return_value.as(LibGLib::List*)))
    end

    def find_by_error_domain(domain)
      __return_value = LibGIRepository.repository_find_by_error_domain(@pointer.as(LibGIRepository::Repository*), UInt32.new(domain))
      GIRepository::BaseInfo.new(__return_value)
    end

    def find_by_gtype(gtype)
      __return_value = LibGIRepository.repository_find_by_gtype(@pointer.as(LibGIRepository::Repository*), UInt64.new(gtype))
      GIRepository::BaseInfo.new(__return_value)
    end

    def find_by_name(namespace, name)
      __return_value = LibGIRepository.repository_find_by_name(@pointer.as(LibGIRepository::Repository*), namespace.to_unsafe, name.to_unsafe)
      GIRepository::BaseInfo.new(__return_value)
    end

    def c_prefix(namespace)
      __return_value = LibGIRepository.repository_get_c_prefix(@pointer.as(LibGIRepository::Repository*), namespace.to_unsafe)
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def dependencies(namespace)
      __return_value = LibGIRepository.repository_get_dependencies(@pointer.as(LibGIRepository::Repository*), namespace.to_unsafe)
      PointerIterator.new(__return_value) {|__item| (raise "Expected string but got null" unless __item; ::String.new(__item)) }
    end

    def immediate_dependencies(namespace)
      __return_value = LibGIRepository.repository_get_immediate_dependencies(@pointer.as(LibGIRepository::Repository*), namespace.to_unsafe)
      PointerIterator.new(__return_value) {|__item| (raise "Expected string but got null" unless __item; ::String.new(__item)) }
    end

    def info(namespace, index)
      __return_value = LibGIRepository.repository_get_info(@pointer.as(LibGIRepository::Repository*), namespace.to_unsafe, Int32.new(index))
      GIRepository::BaseInfo.new(__return_value)
    end

    def loaded_namespaces
      __return_value = LibGIRepository.repository_get_loaded_namespaces(@pointer.as(LibGIRepository::Repository*))
      PointerIterator.new(__return_value) {|__item| (raise "Expected string but got null" unless __item; ::String.new(__item)) }
    end

    def n_infos(namespace)
      __return_value = LibGIRepository.repository_get_n_infos(@pointer.as(LibGIRepository::Repository*), namespace.to_unsafe)
      __return_value
    end

    def shared_library(namespace)
      __return_value = LibGIRepository.repository_get_shared_library(@pointer.as(LibGIRepository::Repository*), namespace.to_unsafe)
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def typelib_path(namespace)
      __return_value = LibGIRepository.repository_get_typelib_path(@pointer.as(LibGIRepository::Repository*), namespace.to_unsafe)
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def version(namespace)
      __return_value = LibGIRepository.repository_get_version(@pointer.as(LibGIRepository::Repository*), namespace.to_unsafe)
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def registered?(namespace, version)
      __return_value = LibGIRepository.repository_is_registered(@pointer.as(LibGIRepository::Repository*), namespace.to_unsafe, version ? version.to_unsafe : nil)
      __return_value
    end

    def load_typelib(typelib, flags : GIRepository::RepositoryLoadFlags) # function
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGIRepository.repository_load_typelib(@pointer.as(LibGIRepository::Repository*), typelib.to_unsafe.as(LibGIRepository::Typelib*), flags, pointerof(__error))
      GLib::Error.assert __error
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def require(namespace, version, flags : GIRepository::RepositoryLoadFlags) # function
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGIRepository.repository_require(@pointer.as(LibGIRepository::Repository*), namespace.to_unsafe, version ? version.to_unsafe : nil, flags, pointerof(__error))
      GLib::Error.assert __error
      GIRepository::Typelib.new(__return_value)
    end

    def require_private(typelib_dir, namespace, version, flags : GIRepository::RepositoryLoadFlags) # function
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGIRepository.repository_require_private(@pointer.as(LibGIRepository::Repository*), typelib_dir.to_unsafe, namespace.to_unsafe, version ? version.to_unsafe : nil, flags, pointerof(__error))
      GLib::Error.assert __error
      GIRepository::Typelib.new(__return_value)
    end

  end
end

