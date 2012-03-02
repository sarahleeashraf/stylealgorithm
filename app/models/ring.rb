class Ring < Jewelry
  module Style
    Cocktail = "cocktail"

    All = constants.map{|c| const_get(c) }
  end

end
