class Top < Garment 
  module Style
    Blouse = 'blouse'
    Sleeveless = 'sleeveless'
    CasualShirt = 'casual shirt'
    DressShirt = 'dress shirt'

    All = constants.map{ |c| const_get(c) }
  end

  attr_accessible :neckline, :sleeve_length
end
