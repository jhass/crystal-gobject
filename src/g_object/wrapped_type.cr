module GObject
  module WrappedType
    def construct()
    end

    macro construct(&b)
      def construct
        {{b.body}}
      end
    end
  
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
