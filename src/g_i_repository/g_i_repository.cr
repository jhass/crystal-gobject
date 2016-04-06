require "../generated/g_i_repository"

# Patch up functions that are not generated for a weird reason
lib LibGIRepository
  fun base_info_ref = g_base_info_ref(info : BaseInfo*)
  fun base_info_unref = g_base_info_unref(info : BaseInfo*)
  fun constant_info_get_value = g_constant_info_get_value(this : BaseInfo*, argument : Argument*) : Int32
  fun constant_info_free_value = g_constant_info_free_value(this : BaseInfo*, argument : Argument*)
end

#module GIRepository
  macro each_converted(prefix, basename, type, plural=nil)
    def {{plural ? plural.id : "#{basename}s".id}}_size
      n = LibGIRepository.{{prefix.id}}_get_n_{{plural ? plural.id : "#{basename}s".id}}(self)
    end

    def each_{{basename.id}}
      n = {{plural ? plural.id : "#{basename}s".id}}_size
      0.upto(n-1) do |index|
        yield {{type.id}}.new LibGIRepository.{{prefix.id}}_get_{{basename.id}}(self, index)
      end
    end
  end


module GIRepository
  def self.filename(filename)
    filename.gsub(/[A-Z][a-z]*(?=[A-Z])/) {|m| "#{m.downcase}_" }
            .gsub(/::/, "_")
            .downcase
  end
end

require "../helper"
require "./info/*"
require "./repository"
