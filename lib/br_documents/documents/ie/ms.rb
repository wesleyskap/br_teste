# http://www.sintegra.gov.br/Cad_Estados/cad_MS.html
module BRDocuments
  class IE::MS < IE::Base

    set_verify_digits_weights first: %w(9 8 7 6 5 4 3 2)

    set_format_regexp %r{^(28)[-.]?(\d{3})[-.]?(\d{3})[\/-]?(\d{1})}

    set_pretty_format_mask %(%s.%s.%s-%s)

    set_fixed_digits [2, 8]

  end
end