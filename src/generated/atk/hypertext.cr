module Atk
  module Hypertext
    def link(link_index)
      __return_value = LibAtk.hypertext_get_link((to_unsafe as LibAtk::Hypertext*), Int32.cast(link_index))
      Atk::Hyperlink.new(__return_value)
    end

    def link_index(char_index)
      __return_value = LibAtk.hypertext_get_link_index((to_unsafe as LibAtk::Hypertext*), Int32.cast(char_index))
      __return_value
    end

    def n_links
      __return_value = LibAtk.hypertext_get_n_links((to_unsafe as LibAtk::Hypertext*))
      __return_value
    end

  end
end

