require_relative 'base'

# http://www.sintegra.gov.br/Cad_Estados/cad_BA.html
module BRDocuments
  module IE
    module BA
      class Modulo10 < IE::BA::Base

        # All documents generated through modulo 11 may start
        # with one of theses values
        FIXED_INITIAL_NUMBERS = %w(0 1 2 3 4 5 8)

        # Force modulo 10
        set_division_modulo 10

      end
    end
  end
end