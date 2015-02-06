class BaseInfo

  INFO_TYPES = Hash(LibGIRepository::InfoType, BaseInfo.class).new

  macro inherited
    INFO_TYPES[LibGIRepository::InfoType::{{@type.name[0..-5].upcase.id}}] = {{@type}}
  end

  def self.wrap ptr
    info = new ptr
    upper = INFO_TYPES[info.info_type]?
    if upper
      info = upper.new info.to_unsafe
      LibGIRepository.base_info_ref(info)
    end

    info
  end

  protected def initialize @ptr
  end

  def info_type
    LibGIRepository.base_info_get_type self
  end

  def name
    String.new LibGIRepository.base_info_get_name(self)
  end

  def namespace
    String.new LibGIRepository.base_info_get_namespace(self)
  end

  def container
    ptr = LibGIRepository.base_info_get_container(self)
    raise "No container for #{self}" unless ptr
    BaseInfo.wrap ptr
  end

  def c_prefix
    Repository.instance.c_prefix(namespace)
  end

  def attributes
    iter :: LibGIRepository::AttributeIter
    attributes = Hash(String, String).new
    while LibGIRepository.base_info_iterate_attributes(self, pointerof(iter), out name, out value)
      attributes[String.new(name)] = String.new(value)
    end

    attributes
  end

  def finalize
    LibGIRepository.base_info_unref(@ptr)
  end

  def to_unsafe
    @ptr
  end

  def definition
    "  # Bug: #{name} : #{info_type}"
  end

  def declaration
  end

  def to_s io
    io << name << '(' << info_type << ')'
  end
end
