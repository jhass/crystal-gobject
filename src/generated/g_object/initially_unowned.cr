require "./object"

module GObject
  class InitiallyUnowned < Object
    @g_object_initially_unowned : LibGObject::InitiallyUnowned*?
    def initialize(@g_object_initially_unowned : LibGObject::InitiallyUnowned*)
    end

    def to_unsafe
      @g_object_initially_unowned.not_nil!.as(Void*)
    end

  end
end

