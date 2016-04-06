require "./info/base_info"

module GIRepository
  class Repository
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

    def all_infos(namespace)
      Array.new(n_infos(namespace)) {|index|
        info namespace, index
      }
    end

    def info(namespace, index)
      BaseInfo.wrap previous_def
    end
  end
end
