require 'spec_helper'
require_relative 'shared_examples'

describe BRDocuments::IE::GO do

  before :all do

    @format_examples = {
      "101399693" => "10.139.969-3"
    }

    @valid_numbers = %w(
      10.139.969-3
      10139969-3
      101399693
    )

    @invalid_numbers = %w(
      10.139.969-31
      10.139.96-31
      110.139.969-3
    )

    @valid_verify_digits = {
      [3] => %w(10.139.969-3 10.139.969 10139969)
    }

    @valid_existent_numbers = [
      '10.139.969-3', # PANPHARMA DISTRIBUIDORA DE MEDICAMENTOS LTDA. 1990
      '10.013.357-6', # SANEAMENTO DE GOIAS S/A 09/07/1984
      '10.054.942-0', # CELG DISTRIBUICAO S.A. - CELG D 13/03/1989
      '10.398.152-7', # HOTELARIA ACCOR BRASIL S/A 21/03/2006
      '10.394.194-0', # WAL - MART BRASIL LTDA 09/11/2005
      '10.580.075-9', # Ambev GO
      '10.368.446-8', # PRODUTOS ROCHE QUIMICOS E FARMACEUTICOS S A
      '10.166.488-5', # REFRESCOS BANDEIRANTES INDUSTRIA E COMERCIO LTDA
      '10.349.118-0', # CENCOSUD BRASIL COMERCIAL LTDA - Bretas 2002
      '10.297.851-4', # CENCOSUD BRASIL COMERCIAL LTDA - Bretas 1997
      '10.506.343-6', # CENCOSUD BRASIL COMERCIAL LTDA - Bretas 2011
      '10.005.565-6', # PRODUTOS ALIMENTICIOS ORLANDIA  1986
      '10.314.113-8', # SAUDE INDUSTRIA E COMERCIO DE AGUA MINERALE SERVIÇOS LTDA 1999
      '10.446.955-2', # 2009
    ]
  end

  include_examples "IE basic specs"
end