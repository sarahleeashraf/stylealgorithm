class Dress < Garment
  module Style
    Bandage = "bandage"
    Sheath = "sheath"
    Wrap = "wrap"

    All = constants.map {|c| const_get(c) }
  end
  attr_accessible :hem_length, :sleeve_length  

end
