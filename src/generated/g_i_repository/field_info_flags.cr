module GIRepository
  @[Flags()]
  enum FieldInfoFlags : UInt32
    ZERO_NONE = 0
    READABLE = 1
    WRITABLE = 2
  end
end
