module GObject
  module WrappedType
    macro included
      macro inherited
        # Add run-time check
        def self.cast(object)
          new(object.to_unsafe as Lib\{{@type}}*)
        end
      end

      # Add run-time check
      def self.cast(object)
        new(object.to_unsafe as Lib{{@type}}*)
      end
    end
  end
end
