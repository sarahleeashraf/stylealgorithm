class Bracelet < Jewelry
  module Style
    Cuff = "cuff"
    Charm = "charm"

    All = constants.map{ |c| const_get(c) }
  end

end
