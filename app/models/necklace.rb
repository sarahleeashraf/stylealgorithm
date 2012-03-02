class Necklace < Jewelry
  module Style
    Statement = 'statement'
    Pendant = 'pendant'
    Opera = 'opera length 30"'
    Matinee = 'matinee length 22"'
    Princess = 'princess length 18"'

    All = constants.map{|c| const_get(c) }
  end

end
