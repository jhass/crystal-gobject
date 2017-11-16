module Atk
  module Hypertext
    def link(link_index)
      __return_value = LibAtk.hypertext_get_link(@pointer.as(LibAtk::Hypertext*), Int32.new(link_index))
      Atk::Hyperlink.new(__return_value)
    end

    def link_index(char_index)
      __return_value = LibAtk.hypertext_get_link_index(@pointer.as(LibAtk::Hypertext*), Int32.new(char_index))
      __return_value
    end

    def n_links
      __return_value = LibAtk.hypertext_get_n_links(@pointer.as(LibAtk::Hypertext*))
      __return_value
    end

    alias LinkSelectedSignal = Hypertext, Int32 ->
    def on_link_selected(&__block : LinkSelectedSignal)
      __callback = ->(_arg0 : LibAtk::Hypertext*, _arg1 : LibAtk::Int32*) {
       __return_value = __block.call(Hypertext.new(_arg0), _arg1)
       __return_value
      }
      connect("link-selected", __callback)
    end

  end
end

