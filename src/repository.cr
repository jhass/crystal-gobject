require "./info/base_info"

class Repository
  def self.instance
    @@instance ||= new
  end

  private def initialize
    @repository = LibGIRepository.repository_get_default
  end

  def require namespace, version=nil
    error = Pointer(LibGLib::Error).null
    LibGIRepository.repository_require self, namespace, version, LibGIRepository::RepositoryLoadFlags::ZERO_NONE, pointerof(error)
    raise GError.new(error) if error
  end

  def loaded_namespaces
    namespaces = LibGIRepository.repository_get_loaded_namespaces self
    PointerIterator.string_array namespaces
  end

  def dependencies namespace
    dependencies = LibGIRepository.repository_get_dependencies self, namespace
    PointerIterator.string_array(dependencies).map {|dep|
      name, version = dep.split('-')
      {name, version}
    }
  end

  def all_infos namespace
    infos = [] of BaseInfo
    n = LibGIRepository.repository_get_n_infos(self, namespace)
    Array.new(n) {|index|
      get_info namespace, index
    }
  end

  def get_info namespace, index
    BaseInfo.wrap LibGIRepository.repository_get_info(self, namespace, index)
  end

  def c_prefix namespace
    String.new(LibGIRepository.repository_get_c_prefix(self, namespace))
  end

  def version namespace
    String.new(LibGIRepository.repository_get_version(self, namespace))
  end

  def typelib_path namespace
    String.new(LibGIRepository.repository_get_typelib_path(self, namespace))
  end

  def shared_library namespace
    String.new(LibGIRepository.repository_get_shared_library(self, namespace))
  end

  def to_unsafe
    @repository
  end
end
