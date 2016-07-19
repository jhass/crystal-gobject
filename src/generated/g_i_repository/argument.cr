module GIRepository
  class Argument
    include GObject::WrappedType

    @g_i_repository_argument : LibGIRepository::Argument*?
    def initialize(@g_i_repository_argument : LibGIRepository::Argument*)
    end

    def to_unsafe
      @g_i_repository_argument.not_nil!.as(Void*)
    end

  end
end

