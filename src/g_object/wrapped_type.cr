module GObject
  module WrappedType
    macro def_cast(libtype)
      {% if libtype.resolve? %}
        def self.cast(object) : self
          new(object.to_unsafe.as({{libtype}}*))
        end
      {% end %}
    end

    macro included
      macro inherited
        \{% begin %}
          def_cast(Lib\{{@type}})
        \{% end %}
      end

      \{% begin %}
        def_cast(Lib\{{@type}})
      \{% end %}
    end
  end
end
