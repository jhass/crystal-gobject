require "./object"

module GObject
  class InitiallyUnowned < Object
    def initialize(@g_object_initially_unowned)
    end

    def to_unsafe
      @g_object_initially_unowned.not_nil!
    end

  end
end

