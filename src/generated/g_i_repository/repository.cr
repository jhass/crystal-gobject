module GIRepository
  class Repository < GObject::Object

    @pointer : Void*

    def initialize(pointer : LibGIRepository::Repository*)
      @pointer = pointer.as(Void*)
      raise(ArgumentError.new("#{type_name} is not a GIRepository")) unless LibGObject.type_check_instance_is_a(pointer.as(LibGObject::TypeInstance*), LibGIRepository._g_irepository_get_type)
      LibGObject.object_ref(pointer.as(LibGObject::Object*))
    end

    def finalize
      LibGObject.object_unref(@pointer.as(LibGObject::Object*))
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGIRepository::Repository*)
    end

    def to_unsafe_repository
      @pointer.not_nil!.as(LibGIRepository::Repository*)
    end

    def initialize
      @pointer = LibGObject.new_with_properties(LibGIRepository._g_irepository_get_type, 0, nil, nil).as(Void*)
    end

    def self.dump(arg : ::String)
      __var0 = Pointer(LibGLib::Error).null
      __var1 = LibGIRepository.repository_dump(arg.to_unsafe, pointerof(__var0))
      GLib::Error.assert(__var0)
      (__var1 == 1)
    end

    def self.error_quark
      __var0 = LibGIRepository.repository_error_quark()
      __var0
    end

    def self.default
      __var0 = LibGIRepository.repository_get_default()
      GObject.raise_unexpected_null("g_irepository_get_default") if __var0.null?
      GIRepository::Repository.new(__var0)
    end

    def self.option_group
      __var0 = LibGIRepository.repository_get_option_group()
      GObject.raise_unexpected_null("g_irepository_get_option_group") if __var0.null?
      GLib::OptionGroup.new(__var0)
    end

    def self.search_path
      __var0 = LibGIRepository.repository_get_search_path()
      GObject.raise_unexpected_null("g_irepository_get_search_path") if __var0.null?
      GLib::SListIterator(::String, UInt8**).new(GLib::SList.new(__var0.as(LibGLib::SList*)))
    end

    def self.prepend_library_path(directory : ::String)
      LibGIRepository.repository_prepend_library_path(directory.to_unsafe)
      nil
    end

    def self.prepend_search_path(directory : ::String)
      LibGIRepository.repository_prepend_search_path(directory.to_unsafe)
      nil
    end

    def enumerate_versions(namespace_ : ::String)
      __var0 = LibGIRepository.repository_enumerate_versions(@pointer.as(LibGIRepository::Repository*), namespace_.to_unsafe)
      GObject.raise_unexpected_null("g_irepository_enumerate_versions") if __var0.null?
      GLib::ListIterator(::String, UInt8**).new(GLib::List.new(__var0.as(LibGLib::List*)))
    end

    def find_by_error_domain(domain : ::Int)
      __var0 = LibGIRepository.repository_find_by_error_domain(@pointer.as(LibGIRepository::Repository*), UInt32.new(domain))
      GObject.raise_unexpected_null("g_irepository_find_by_error_domain") if __var0.null?
      GIRepository::BaseInfo.new(__var0)
    end

    def find_by_gtype(gtype : UInt64)
      __var0 = LibGIRepository.repository_find_by_gtype(@pointer.as(LibGIRepository::Repository*), UInt64.new(gtype))
      GObject.raise_unexpected_null("g_irepository_find_by_gtype") if __var0.null?
      GIRepository::BaseInfo.new(__var0)
    end

    def find_by_name(namespace_ : ::String, name : ::String)
      __var0 = LibGIRepository.repository_find_by_name(@pointer.as(LibGIRepository::Repository*), namespace_.to_unsafe, name.to_unsafe)
      GObject.raise_unexpected_null("g_irepository_find_by_name") if __var0.null?
      GIRepository::BaseInfo.new(__var0)
    end

    def c_prefix(namespace_ : ::String)
      __var0 = LibGIRepository.repository_get_c_prefix(@pointer.as(LibGIRepository::Repository*), namespace_.to_unsafe)
      GObject.raise_unexpected_null("g_irepository_get_c_prefix") if __var0.null?
      ::String.new(__var0)
    end

    def dependencies(namespace_ : ::String)
      __var0 = LibGIRepository.repository_get_dependencies(@pointer.as(LibGIRepository::Repository*), namespace_.to_unsafe)
      GObject.raise_unexpected_null("g_irepository_get_dependencies") if __var0.null?
      GObject::PointerIterator.new(__var0) { |__var1|
        ::String.new(__var1)
      }
    end

    def immediate_dependencies(namespace_ : ::String)
      __var0 = LibGIRepository.repository_get_immediate_dependencies(@pointer.as(LibGIRepository::Repository*), namespace_.to_unsafe)
      GObject.raise_unexpected_null("g_irepository_get_immediate_dependencies") if __var0.null?
      GObject::PointerIterator.new(__var0) { |__var1|
        ::String.new(__var1)
      }
    end

    def info(namespace_ : ::String, index : ::Int)
      __var0 = LibGIRepository.repository_get_info(@pointer.as(LibGIRepository::Repository*), namespace_.to_unsafe, Int32.new(index))
      GObject.raise_unexpected_null("g_irepository_get_info") if __var0.null?
      GIRepository::BaseInfo.new(__var0)
    end

    def loaded_namespaces
      __var0 = LibGIRepository.repository_get_loaded_namespaces(@pointer.as(LibGIRepository::Repository*))
      GObject.raise_unexpected_null("g_irepository_get_loaded_namespaces") if __var0.null?
      GObject::PointerIterator.new(__var0) { |__var1|
        ::String.new(__var1)
      }
    end

    def n_infos(namespace_ : ::String)
      __var0 = LibGIRepository.repository_get_n_infos(@pointer.as(LibGIRepository::Repository*), namespace_.to_unsafe)
      __var0
    end

    def object_gtype_interfaces(gtype : UInt64, interfaces_out : ::Enumerable)
      LibGIRepository.repository_get_object_gtype_interfaces(@pointer.as(LibGIRepository::Repository*), UInt64.new(gtype), out n_interfaces_out, interfaces_out)
      n_interfaces_out
    end

    def shared_library(namespace_ : ::String)
      __var0 = LibGIRepository.repository_get_shared_library(@pointer.as(LibGIRepository::Repository*), namespace_.to_unsafe)
      __var1 = ::String.new(__var0) if __var0
      __var1
    end

    def typelib_path(namespace_ : ::String)
      __var0 = LibGIRepository.repository_get_typelib_path(@pointer.as(LibGIRepository::Repository*), namespace_.to_unsafe)
      GObject.raise_unexpected_null("g_irepository_get_typelib_path") if __var0.null?
      ::String.new(__var0)
    end

    def version(namespace_ : ::String)
      __var0 = LibGIRepository.repository_get_version(@pointer.as(LibGIRepository::Repository*), namespace_.to_unsafe)
      GObject.raise_unexpected_null("g_irepository_get_version") if __var0.null?
      ::String.new(__var0)
    end

    def registered?(namespace_ : ::String, version : ::String?)
      __var0 = LibGIRepository.repository_is_registered(@pointer.as(LibGIRepository::Repository*), namespace_.to_unsafe, version ? version.to_unsafe : Pointer(UInt8).null)
      (__var0 == 1)
    end

    def load_typelib(typelib : GIRepository::Typelib, flags : GIRepository::RepositoryLoadFlags)
      __var0 = Pointer(LibGLib::Error).null
      __var1 = LibGIRepository.repository_load_typelib(@pointer.as(LibGIRepository::Repository*), typelib.to_unsafe.as(LibGIRepository::Typelib*), flags, pointerof(__var0))
      GLib::Error.assert(__var0)
      GObject.raise_unexpected_null("g_irepository_load_typelib") if __var1.null?
      ::String.new(__var1)
    end

    def require(namespace_ : ::String, version : ::String?, flags : GIRepository::RepositoryLoadFlags)
      __var0 = Pointer(LibGLib::Error).null
      __var1 = LibGIRepository.repository_require(@pointer.as(LibGIRepository::Repository*), namespace_.to_unsafe, version ? version.to_unsafe : Pointer(UInt8).null, flags, pointerof(__var0))
      GLib::Error.assert(__var0)
      GObject.raise_unexpected_null("g_irepository_require") if __var1.null?
      GIRepository::Typelib.new(__var1)
    end

    def require_private(typelib_dir : ::String, namespace_ : ::String, version : ::String?, flags : GIRepository::RepositoryLoadFlags)
      __var0 = Pointer(LibGLib::Error).null
      __var1 = LibGIRepository.repository_require_private(@pointer.as(LibGIRepository::Repository*), typelib_dir.to_unsafe, namespace_.to_unsafe, version ? version.to_unsafe : Pointer(UInt8).null, flags, pointerof(__var0))
      GLib::Error.assert(__var0)
      GObject.raise_unexpected_null("g_irepository_require_private") if __var1.null?
      GIRepository::Typelib.new(__var1)
    end
  end
end
