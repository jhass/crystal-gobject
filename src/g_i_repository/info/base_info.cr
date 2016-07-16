module GIRepository
  class BaseInfo

    INFO_TYPES = Hash(LibGIRepository::InfoType, BaseInfo.class).new

    macro inherited
      INFO_TYPES[LibGIRepository::InfoType::{{@type.name[14..-5].upcase.id}}] = {{@type}}
    end

    def self.wrap(info)
      # info = new ptr
      upper = INFO_TYPES[info.info_type]?
      if upper
        LibGIRepository.base_info_ref(info)
        LibGIRepository.base_info_ref(info)
        info = upper.new info.to_unsafe
      end

      info
    end

    def info_type
      LibGIRepository.base_info_get_type self
    end

    def name
      String.new LibGIRepository.base_info_get_name(self)
    end

    def constant
      name.constant
    end

    def full_constant
      "#{namespace_constant}::#{constant}"
    end

    def namespace
      namespace = String.new LibGIRepository.base_info_get_namespace(self)
      "#{namespace[0].upcase}#{namespace[1..-1]}"
    end

    def namespace_constant
      namespace.constant
    end

    def container?
      ptr = LibGIRepository.base_info_get_container(self)
      BaseInfo.wrap(BaseInfo.new(ptr)) if ptr
    end

    def container
      container = container?
      return container if container
      raise "No container for #{self}"
    end

    def c_prefix
      Repository.instance.c_prefix(namespace)
    end

    def prefix
      container = container?
      return "" unless container
      prefix = container.name
               .gsub(/[A-Z][a-z]*(?=[A-Z])/) {|m| "#{m.downcase}_" }
               .downcase
      "#{prefix}_"
    end

    def attributes
      uninitalized iter : LibGIRepository::AttributeIter
      attributes = Hash(String, String).new
      while LibGIRepository.base_info_iterate_attributes(self, pointerof(iter), out name, out value)
        attributes[String.new(name)] = String.new(value)
      end

      attributes
    end

    def finalize
      LibGIRepository.base_info_unref(to_unsafe)
    end

    def lib_definition
      "  # Bug: #{name} : #{info_type}"
    end

    def wrapper_definition(libname, indent="")
    end

    def to_s(io)
      io << name << '(' << info_type << ')'
    end

    def to_unsafe
      previous_def.as(LibGIRepository::BaseInfo*)
    end
  end
end
