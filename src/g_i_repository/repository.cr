require "./info/base_info"

module GIRepository
  class Repository
    @@instance : self?

    def self.instance
      @@instance ||= default
    end

    def require(namespace, version=nil)
      self.require namespace, version, LibGIRepository::RepositoryLoadFlags::ZERO_NONE
    end

    def dependencies(namespace)
      dependencies = previous_def
      dependencies.map {|dep|
        name, version = dep.split('-')
        {name, version}
      }
    end

    def find_by_name(namespace, name)
      ptr = LibGIRepository.repository_find_by_name(self, namespace, name)
      BaseInfo.wrap BaseInfo.new(ptr) if ptr
    end

    def all_infos(namespace)
      Array.new(n_infos(namespace)) {|index|
        info namespace, index
      }
    end

    def info(namespace, index)
      BaseInfo.wrap previous_def
    end

    def shared_library(namespace)
      # Missing may return null annotation in typelib, so we have to redefine it here
      libs = LibGIRepository.repository_get_shared_library(@pointer.as(LibGIRepository::Repository*), namespace)
      String.new(libs) if libs
    end
  end
end
