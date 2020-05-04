module GIRepository
  @[Flags]
  enum VFuncInfoFlags : UInt32
    ZERO_NONE = 0
    MUST_CHAIN_UP = 1
    MUST_OVERRIDE = 2
    MUST_NOT_OVERRIDE = 4
    THROWS = 8
  end

end

