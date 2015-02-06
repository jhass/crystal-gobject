require "./lib_g_i_repository"

# Patch up functions that are not generated for a weird reason
lib LibGIRepository
  fun base_info_ref = g_base_info_ref(info : BaseInfo*)
  fun base_info_unref = g_base_info_unref(info : BaseInfo*)
  fun constant_info_get_value = g_constant_info_get_value(this : BaseInfo*, argument : Argument*) : Int32
  fun constant_info_free_value = g_constant_info_free_value(this : BaseInfo*, argument : Argument*)
end

require "./generator"
