module GObject
  module WrappedType
    macro def_cast(libtype)
      {% if libtype.resolve? %}
        def self.cast(object) : self
          new(Pointer({{libtype}}).new(object.to_unsafe.address))
        end
      {% end %}
    end

    macro included
      {% verbatim do %}
        macro inherited
          {% verbatim do %}
            {% begin %}
            def_cast(Lib{{@type}})
            {% end %}
          {% end %}
        end

        {% begin %}
          def_cast(Lib{{@type}})
        {% end %}
      {% end %}
    end
  end
end
