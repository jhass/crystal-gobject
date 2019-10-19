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

    def ==(other)
      return false unless other.is_a?(BaseInfo)
      LibGIRepository.base_info_equal(self, other)
    end

    def info_type
      LibGIRepository.base_info_get_type self
    end

    def name
      ptr = LibGIRepository.base_info_get_name(self)
      String.new(ptr) if ptr
    end

    def constant
      name.try &.constant
    end

    def full_constant
      "#{namespace_constant}::#{constant}"
    end

    def namespace
      namespace = String.new LibGIRepository.base_info_get_namespace(self)
      "#{namespace[0].upcase}#{namespace[1..-1]}"
    end

    def symbol_prefix
      typelib.namespace.downcase
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
      name = container.name
      return "" unless name
      prefix = name
        .gsub(/[A-Z][a-z]*(?=[A-Z])/) { |m| "#{m.downcase}_" }
        .downcase
      "#{prefix}_"
    end

    def attributes
      iter = GIRepository::AttributeIter.new
      attributes = Hash(String, String).new
      while LibGIRepository.base_info_iterate_attributes(self, iter, out name, out value)
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

    def wrapper_definition(libname, indent = "")
    end

    def dump(io : IO)
      Dumper.new(io).dump(self)
    end

    def dump(dumper : Dumper)
      dumper.dump(self)
    end

    def dump(dumper, & : BaseInfo ->)
      dump_base(dumper)
      attributes.each do |name, value|
        dumper.puts "- #{name} = #{value}"
      end
    end

    def dump_base(dumper)
      dumper.io.print "#{dumper.base_indent}+ "
      to_s(dumper.io)
      dumper.io.puts
    end

    def to_s(io)
      io << (name || "<no name>") << " (" << String.new(LibGIRepository.info_type_to_string(info_type)) << ')'
    end

    def to_unsafe
      previous_def.as(LibGIRepository::BaseInfo*)
    end
  end
end
