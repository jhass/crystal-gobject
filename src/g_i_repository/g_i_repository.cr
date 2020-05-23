# Avoid running require_gobject macro inside itself causing a loop
# Instead require the minimum of dependencies manually
require "../gobject"
require "../wrapped_type"
require "../pointer_iterator"
require "../g_object/object"
require "../g_object/module_functions"
require "../g_lib/error"
require "./wrapper_generator"

require "../generated/g_object/param_flags"
require "../generated/g_object/signal_flags"
require "../generated/lib_g_i_repository"
require "../generated/g_i_repository/info_type"
require "../generated/g_i_repository/type_tag"
require "../generated/g_i_repository/array_type"
require "../generated/g_i_repository/direction"
require "../generated/g_i_repository/field_info_flags"
require "../generated/g_i_repository/function_info_flags"
require "../generated/g_i_repository/repository_load_flags"
require "../generated/g_i_repository/transfer"
require "../generated/g_i_repository/module_functions"
require "../generated/g_i_repository/typelib"
require "../generated/g_i_repository/repository"
require "../generated/g_i_repository/base_info"
require "../generated/g_i_repository/attribute_iter"

# Patch up functions that are not generated for a weird reason
lib LibGIRepository
  fun base_info_ref = g_base_info_ref(info : BaseInfo*)
  fun base_info_unref = g_base_info_unref(info : BaseInfo*)
  fun constant_info_get_value = g_constant_info_get_value(this : BaseInfo*, argument : Argument*) : Int32
  fun constant_info_free_value = g_constant_info_free_value(this : BaseInfo*, argument : Argument*)
end

# Helper
macro each_converted(prefix, basename, type, plural = nil)
  def {{plural ? plural.id : "#{basename}s".id}}_size
    n = GIRepository.{{prefix.id}}_get_n_{{plural ? plural.id : "#{basename}s".id}}(self)
  end

  def each_{{basename.id}}
    n = {{plural ? plural.id : "#{basename}s".id}}_size
    0.upto(n-1) do |index|
      yield BaseInfo.wrap(GIRepository.{{prefix.id}}_get_{{basename.id}}(self, index)).as({{type.id}})
    end
  end

  def {{plural ? plural.id : "#{basename}s".id}}
    items = Array({{type}}).new({{plural ? plural.id : "#{basename}s".id}}_size)
    each_{{basename.id}} do |item|
      items << item
    end
    items
  end
end

module GIRepository
  def self.filename(filename)
    filename.not_nil!
      .gsub(/[A-Z][a-z]*(?=[A-Z])/) { |m| "#{m.downcase}_" }
      .gsub(/::/, "_")
      .downcase
  end

  def self.object_info_get_parent(info : GIRepository::BaseInfo)
    # Missing may return null annotation in typelib, so we have to redefine it here
    parent = LibGIRepository.object_info_get_parent(info.to_unsafe.as(LibGIRepository::BaseInfo*))
    BaseInfo.new(parent) if parent
  end

  def self.object_info_get_class_struct(info : GIRepository::BaseInfo)
    # Missing may return null annotation in typelib, so we have to redefine it here
    class_struct = LibGIRepository.object_info_get_class_struct(info.to_unsafe.as(LibGIRepository::BaseInfo*))
    BaseInfo.new(class_struct) if class_struct
  end
end

require "./dumper"
require "./info/*"
require "./repository"
