module Atk
  module Window
    alias ActivateSignal = Window -> 
    def on_activate(&__block : ActivateSignal)
      __callback = ->(_arg0 : LibAtk::Window*) {
       __return_value = __block.call(Window.new(_arg0))
       __return_value
      }
      connect("activate", __callback)
    end

    alias CreateSignal = Window -> 
    def on_create(&__block : CreateSignal)
      __callback = ->(_arg0 : LibAtk::Window*) {
       __return_value = __block.call(Window.new(_arg0))
       __return_value
      }
      connect("create", __callback)
    end

    alias DeactivateSignal = Window -> 
    def on_deactivate(&__block : DeactivateSignal)
      __callback = ->(_arg0 : LibAtk::Window*) {
       __return_value = __block.call(Window.new(_arg0))
       __return_value
      }
      connect("deactivate", __callback)
    end

    alias DestroySignal = Window -> 
    def on_destroy(&__block : DestroySignal)
      __callback = ->(_arg0 : LibAtk::Window*) {
       __return_value = __block.call(Window.new(_arg0))
       __return_value
      }
      connect("destroy", __callback)
    end

    alias MaximizeSignal = Window -> 
    def on_maximize(&__block : MaximizeSignal)
      __callback = ->(_arg0 : LibAtk::Window*) {
       __return_value = __block.call(Window.new(_arg0))
       __return_value
      }
      connect("maximize", __callback)
    end

    alias MinimizeSignal = Window -> 
    def on_minimize(&__block : MinimizeSignal)
      __callback = ->(_arg0 : LibAtk::Window*) {
       __return_value = __block.call(Window.new(_arg0))
       __return_value
      }
      connect("minimize", __callback)
    end

    alias MoveSignal = Window -> 
    def on_move(&__block : MoveSignal)
      __callback = ->(_arg0 : LibAtk::Window*) {
       __return_value = __block.call(Window.new(_arg0))
       __return_value
      }
      connect("move", __callback)
    end

    alias ResizeSignal = Window -> 
    def on_resize(&__block : ResizeSignal)
      __callback = ->(_arg0 : LibAtk::Window*) {
       __return_value = __block.call(Window.new(_arg0))
       __return_value
      }
      connect("resize", __callback)
    end

    alias RestoreSignal = Window -> 
    def on_restore(&__block : RestoreSignal)
      __callback = ->(_arg0 : LibAtk::Window*) {
       __return_value = __block.call(Window.new(_arg0))
       __return_value
      }
      connect("restore", __callback)
    end

  end
end

