class Earrings < Jewelry
  module Style
    Chandelier = 'chandelier'
    Studs = 'studs'

    All = constants.map{ |c| const_get(c) }
  end

end
