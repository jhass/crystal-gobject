require "../closure_data_manager"

lib LibGObject
  fun cclosure_new_swap = g_cclosure_new_swap(callback_func : Callback, user_data : Void*, destroy_data : ClosureNotify) : Closure*
end

module GObject
  class Closure
    def initialize(&callback)
      initialize(callback)
    end

    def initialize(callback)
      @pointer = LibGObject.cclosure_new_swap(
        LibGObject::Callback.new(callback.pointer, Pointer(Void).null),
        ClosureDataManager.register(callback.closure_data),
        ->ClosureDataManager.deregister).as(Void*)
    end
  end
end
