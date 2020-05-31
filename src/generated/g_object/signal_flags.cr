module GObject
  @[Flags()]
  enum SignalFlags : UInt32
    ZERO_NONE = 0
    RUN_FIRST = 1
    RUN_LAST = 2
    RUN_CLEANUP = 4
    NO_RECURSE = 8
    DETAILED = 16
    ACTION = 32
    NO_HOOKS = 64
    MUST_COLLECT = 128
    DEPRECATED = 256
  end
end
