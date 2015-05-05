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
        answer = 'garbage'

        Hiera.debug(answer)

        return answer

      end
    end
  end
end
