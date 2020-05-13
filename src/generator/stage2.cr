require "../generated/lib_g_i_repository"

# Patch up functions that are not generated for a weird reason
lib LibGIRepository
  fun base_info_ref = g_base_info_ref(info : BaseInfo*)
  fun base_info_unref = g_base_info_unref(info : BaseInfo*)
  fun constant_info_get_value = g_constant_info_get_value(this : BaseInfo*, argument : Argument*) : Int32
  fun constant_info_free_value = g_constant_info_free_value(this : BaseInfo*, argument : Argument*)
end

module GLib
  class Error < Exception
    def self.assert(error)
      raise new(error) if error
    end

    def initialize(gerror : LibGLib::GError*)
      super String.new(gerror.value.message)
    end
  end
end

macro each_converted(prefix, basename, type, plural = nil)
  def each_{{basename.id}}
    n = LibGIRepository.{{prefix.id}}_get_n_{{plural ? plural.id : "#{basename}s".id}}(self)
    0.upto(n-1) do |index|
      yield {{type.id}}.new LibGIRepository.{{prefix.id}}_get_{{basename.id}}(self, index)
    end
  end
end

require "../g_object/wrapped_type"

module GIRepository
  class BaseInfo
    def initialize(@ptr)
    end

    def to_unsafe
      @ptr
    end
  end

  class Repository
    include GObject::WrappedType

    def initialize(@ptr)
    end

    def to_unsafe
      @ptr
    end

    def require(namespace, version, flags)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGIRepository.repository_require((to_unsafe as LibGIRepository::Repository*), namespace, version, flags, pointerof(__error))
      GLib::Error.assert __error
    end

    def dependencies(namespace)
      __return_value = LibGIRepository.repository_get_dependencies((to_unsafe as LibGIRepository::Repository*), namespace)
      GObject::PointerIterator.new(__return_value) { |__item_76| raise "Expected string but got null" unless __item_76; String.new(__item_76) }
    end

    def shared_library(namespace)
      __return_value = LibGIRepository.repository_get_shared_library((to_unsafe as LibGIRepository::Repository*), namespace)
      raise "Expected string but got null" unless __return_value; String.new(__return_value)
    end

    def n_infos(namespace)
      __return_value = LibGIRepository.repository_get_n_infos((to_unsafe as LibGIRepository::Repository*), namespace)
      __return_value
    end

    def info(namespace, index)
      __return_value = LibGIRepository.repository_get_info((to_unsafe as LibGIRepository::Repository*), namespace, Int32.new(index))
      GIRepository::BaseInfo.new(__return_value)
    end

    def c_prefix(namespace)
      __return_value = LibGIRepository.repository_get_c_prefix((to_unsafe as LibGIRepository::Repository*), namespace)
      raise "Expected string but got null" unless __return_value; String.new(__return_value)
    end

    def self.default
      new LibGIRepository.repository_get_default
    end
  end

  def self.filename(filename)
    filename.gsub(/[A-Z][a-z]*(?=[A-Z])/) { |m| "#{m.downcase}_" }
      .gsub(/::/, "_")
      .downcase
  end
end

require "../pointer_iterator"
require "../g_i_repository/info/*"
require "../g_i_repository/repository"
require "./generator"
