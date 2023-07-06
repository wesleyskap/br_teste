# http://www.sintegra.gov.br/Cad_Estados/cad_DF.html
module BRDocuments
  class IE::DF < IE::Base

    set_verify_digits_weights first: %w(4 3 2 9 8 7 6 5 4 3 2),
                              last:  %w(5 4 3 2 9 8 7 6 5 4 3 2)


    set_format_regexp %r{^(0\d)[-.]?(\d{3})[-.]?(\d{3})[\/-]?(\d{3})[-.]?(\d{2})}

    set_pretty_format_mask %(%s.%s.%s.%s-%s)

    set_fixed_digits [0]

  end
end