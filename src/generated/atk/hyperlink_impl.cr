module Atk
  module HyperlinkImpl
    def hyperlink
      __return_value = LibAtk.hyperlink_impl_get_hyperlink(@pointer.as(LibAtk::HyperlinkImpl*))
      Atk::Hyperlink.new(__return_value)
    end

  end
end

