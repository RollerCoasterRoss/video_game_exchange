class VideoGame < ApplicationRecord
  has_many :video_game_genres
  has_many :genres, through: :video_game_genres

  has_many :cartridges
  has_many :owners, through: :cartridges
  has_many :borrowers, through: :cartridges

  enum platform: {
                  nes: 0,
                  super_nintendo: 1,
                  genesis: 2,
                  n64: 3,
                  ps1: 4,
                  gamecube: 5,
                  ps2: 6,
                  xbox: 7,
                  wii: 8,
                  ps3: 9,
                  xbox_360: 10,
                  switch: 11,
                  ps4: 12,
                  xbox_one: 13
                 }

  def formatted_platform
    case platform
    when "nes"
      "Nintendo Entertainment System"
    when "super_nintendo"
      "Super Nintendo Entertainment System"
    when "genesis"
      "Sega Genesis"
    when "n64"
      "Nintendo 64"
    when "ps1"
      "Sony Playstation"
    when "gamecube"
      "Nintendo Gamecube"
    when "ps2"
      "Sony Playstation 2"
    when "xbox"
      "Microsoft XBox"
    when "wii"
      "Nintendo Wii"
    when "ps3"
      "Sony Playstation 3"
    when "xbox_360"
      "Microsoft XBox 360"
    when "switch"
      "Nintendo Switch"
    when "ps4"
      "Sony Playstation 4"
    when "xbox_one"
      "Microsoft XBox One"
    else
      platform
    end
  end

  enum rating_category: {
                          e: 0,
                          e10: 1,
                          t: 2,
                          m17: 3,
                          rp: 4
                        }

  def formatted_rating_category
    case rating_category
    when "e"
      "Everyone"
    when "e10"
      "Everyone 10+"
    when "t"
      "Teen"
    when "m17"
      "Mature 17+"
    when "rp"
      "Rating Pending"
    else
      rating_category
    end
  end

  def formatted_online
    online ? "Yes" : "No"
  end
end
