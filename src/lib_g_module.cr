require "./lib_g_lib"

@[Link("gmodule-2.0")]
lib LibGModule

  ###########################################
  ##   Declarations
  ###########################################

  struct Module; end; # struct

  ###########################################
  ##    Flags
  ###########################################

  enum ModuleFlags
    ZERO_NONE = 0
    LAZY = 1
    LOCAL = 2
    MASK = 3
  end


  ###########################################
  ##    Structs
  ###########################################

  struct Module # struct
  end
  fun module_close = g_module_close(this : Module*) : Bool
  fun module_make_resident = g_module_make_resident(this : Module*) : Void
  fun module_name = g_module_name(this : Module*) : UInt8*
  fun module_symbol = g_module_symbol(this : Module*, symbol_name : UInt8*, symbol : Void**) : Bool
  fun module_build_path = g_module_build_path(directory : UInt8*, module_name : UInt8*) : UInt8*
  fun module_error = g_module_error() : UInt8*
  fun module_supported = g_module_supported() : Bool


  ###########################################
  ##    Callbacks
  ###########################################

  # Callback: ModuleCheckInit(module : LibGModule::Module*) : UInt8*
  # Callback: ModuleUnload(module : LibGModule::Module*) : Void

  ###########################################
  ##    Functions
  ###########################################

  fun module_build_path = g_module_build_path(directory : UInt8*, module_name : UInt8*) : UInt8*
  fun module_error = g_module_error() : UInt8*
  fun module_supported = g_module_supported() : Bool
end
