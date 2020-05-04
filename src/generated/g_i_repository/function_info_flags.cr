module GIRepository
  @[Flags]
  enum FunctionInfoFlags : UInt32
    ZERO_NONE = 0
    IS_METHOD = 1
    IS_CONSTRUCTOR = 2
    IS_GETTER = 4
    IS_SETTER = 8
    WRAPS_VFUNC = 16
    THROWS = 32
  end

end

