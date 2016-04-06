module Atk
  class Hyperlink < GObject::Object
    def initialize(@atk_hyperlink)
    end

    def to_unsafe
      @atk_hyperlink.not_nil!
    end

    # Implements Action




    def end_index
      __return_value = LibAtk.hyperlink_get_end_index((to_unsafe as LibAtk::Hyperlink*))
      __return_value
    end

    def n_anchors
      __return_value = LibAtk.hyperlink_get_n_anchors((to_unsafe as LibAtk::Hyperlink*))
      __return_value
    end

    def object(i)
      __return_value = LibAtk.hyperlink_get_object((to_unsafe as LibAtk::Hyperlink*), Int32.new(i))
      Atk::Object.new(__return_value)
    end

    def start_index
      __return_value = LibAtk.hyperlink_get_start_index((to_unsafe as LibAtk::Hyperlink*))
      __return_value
    end

    def uri(i)
      __return_value = LibAtk.hyperlink_get_uri((to_unsafe as LibAtk::Hyperlink*), Int32.new(i))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def inline?
      __return_value = LibAtk.hyperlink_is_inline((to_unsafe as LibAtk::Hyperlink*))
      __return_value
    end

    def selected_link?
      __return_value = LibAtk.hyperlink_is_selected_link((to_unsafe as LibAtk::Hyperlink*))
      __return_value
    end

    def valid?
      __return_value = LibAtk.hyperlink_is_valid((to_unsafe as LibAtk::Hyperlink*))
      __return_value
    end

    alias LinkActivatedSignal = Hyperlink -> 
    def on_link_activated(&__block : LinkActivatedSignal)
      __callback = ->(_arg0 : LibAtk::Hyperlink*) {
       __return_value = __block.call(Hyperlink.new(_arg0))
       __return_value
      }
      connect("link-activated", __callback)
    end

  end
end

