require "./wrapped.cr"

module GObject
  module WrappedType  
    def instantiate()
    end

    macro init(&b)
      def instantiate
        {{b.body}}
      end
    end
  
    macro def_cast(libtype, type)
      {% if libtype.resolve? %}
        def self.cast(object : GObject::WrappedType) : self
          if object.has_wrapper?
            if ins = object.wrapper
              return ins.as(self)
            end
          end
          
          ins = new(object.void_pointer.as({{libtype}}*)).as(self)
          ins.set_wrapped
          ins.instantiate
          ins
        end

       def self.cast(ptr : Pointer({{libtype}}))
        if ins=GObject::WrappedType.wrapper(ptr.as(LibGObject::Object*))
          return ins.as(self)
        end

        new(ptr).as(self)
      end    
      {% end %}
    end

    def void_pointer
      @pointer
    end 

    macro included
      macro inherited
        \{% begin %}
          def_cast(Lib\{{@type}}, \{{@type}})
        \{% end %}
      end

      \{% begin %}
        def_cast(Lib\{{@type}}, \{{@type}})
      \{% end %}
    end
  end
end
