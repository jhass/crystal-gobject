module GObject
  module WrappedType
    macro included
      macro inherited
        # Add run-time check
        def self.cast object
          new(object.to_unsafe as Lib\{{@type}}*)
        end
      end

      # Add run-time check
      def self.cast object
        new(object.to_unsafe as Lib{{@type}}*)
      end
    end

    macro property_getter name, type
      def {{name.split("-").join("_").id}}
        value = {{type.id}}.new_gvalue
        LibGObject.object_get_property(self.to_unsafe as LibGObject::Object*, "{{name.id}}", value)
        {{type.id}}.from_gvalue value
      end
    end

    macro property_setter name, type
      def {{name.split("-").join("_").id}}= value : {{type.id}}
        LibGObject.object_set_property self.to_unsafe as LibGObject::Object*, "{{name.id}}", value.to_gvalue
      end
     end

    macro property_property name, type
      property_getter {{name}}, {{type}}
      property_setter {{name}}, {{type}}
    end
  end
end
