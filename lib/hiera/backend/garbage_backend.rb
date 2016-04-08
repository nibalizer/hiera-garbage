# Backend to return garbage, always
# no really, always
require 'rubygems'
class Hiera
  module Backend
    class Garbage_backend
      def initialize
        Hiera.debug("Hiera garbage backend starting")
      end

      def lookup(key, scope, order_override, resolution_type)

        case resolution_type.is_a?(Hash) ? :hash : resolution_type
        when :array
          answer ||= []
          answer << "garbage"
        when :hash
          answer ||= {}
          answer['garbage'] = 'garbage'
        else
          answer = "garbage"
          break
        end
        Hiera.debug(answer)

        return answer
        end
      end
    end
  end
end
