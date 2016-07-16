require "./lib_g_lib"

@[Link("gmodule-2.0")]
lib LibGModule

  ###########################################
  ##    Structs
  ###########################################

  struct Module # struct
    _data : UInt8[0]
  end
  fun module_close = g_module_close(this : Module*) : Bool
  fun module_make_resident = g_module_make_resident(this : Module*) : Void
  fun module_name = g_module_name(this : Module*) : UInt8*
  fun module_symbol = g_module_symbol(this : Module*, symbol_name : UInt8*, symbol : Void**) : Bool
  fun module_build_path = g_module_build_path(directory : UInt8*, module_name : UInt8*) : UInt8*
  fun module_error = g_module_error() : UInt8*
  fun module_supported = g_module_supported() : Bool


  ###########################################
  ##    Flags
  ###########################################

  @[Flags]
  enum ModuleFlags : UInt32
    ZERO_NONE = 0
    LAZY = 1
    LOCAL = 2
    MASK = 3
  end


  ###########################################
  ##    Functions
  ###########################################

  fun module_build_path = g_module_build_path(directory : UInt8*, module_name : UInt8*) : UInt8*
  fun module_error = g_module_error() : UInt8*
  fun module_supported = g_module_supported() : Bool

  ###########################################
  ##    Callbacks
  ###########################################

 alias ModuleCheckInit = LibGModule::Module* -> UInt8*
 alias ModuleUnload = LibGModule::Module* -> Void
end

