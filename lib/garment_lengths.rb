module GarmentLengths
  module HemLength
    Micro = "micro"
    Mini = "mini"
    MidThigh = "mid thigh"
    AboveKnee = "above the knee"
    Knee = "knee"
    BelowKnee = "below the knee"
    MidCalf = "mid calf"
    Maxi = "maxi"

    All = constants.map {|c| const_get(c) }
  end

  module PantsLength
    Ankle = "ankle"
    Floor = "floor"

    All = constants.map {|c| const_get(c) }
  end

  module ShortsLength
    Micro = "micro"
    MidThigh = "mid thigh"
    Bermuda = "bermuda"

    All = constants.map {|c| const_get(c) }
  end

  module SleeveLength
	TankTop = "tank Top"
    Sleeveless = "sleveless"
    Strapless = "strapless"
    Cap = "cap"
	Short = "short"
    Elbow = "elbow"
    ThreeQuarters = "3/4"
    Bracelet = "bracelet"
    Long = "long"

    All = constants.map {|c| const_get(c) }
  end

  module Neckline
    Scoop = "scoop"
    Crew = "crew"
    VNeck = "v-neck"
    Boat = "boat"
    Collared = "collar"
    All = constants.map {|c| const_get(c) }
  end

end

