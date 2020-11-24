# SEEDED!
# Genre.create!([
#   {name: "Action"},
#   {name: "Adventure"},
#   {name: "Platformer"},
#   {name: "Shooter"},
#   {name: "RPG"},
#   {name: "Fighting"},
#   {name: "Horror"},
#   {name: "Simulation"},
#   {name: "Strategy"},
#   {name: "Sports"},
#   {name: "Racing"},
#   {name: "Open World"},
#   {name: "Puzzle"}
# ])

# SEEDED!
# VideoGame.create!([
#   {title: "Call of Duty: Modern Warfare", platform: 12, rating_category: 3, online: true, min_players: 1, max_players: 4},
#   {title: "Call of Duty: Modern Warfare", platform: 13, rating_category: 3, online: true, min_players: 1, max_players: 4},
#   {title: "Bioshock", platform: 9, rating_category: 3, online: false, min_players: 1, max_players: 1},
#   {title: "Bioshock", platform: 10, rating_category: 3, online: false, min_players: 1, max_players: 1},
#   {title: "Super Mario 64", platform: 3, rating_category: 0, online: false, min_players: 1, max_players: 1},
#   {title: "The Legend of Zelda: Breath of the Wild", platform: 8, rating_category: 1, online: false, min_players: 1, max_players: 1},
#   {title: "The Legend of Zelda: Breath of the Wild", platform: 11, rating_category: 1, online: false, min_players: 1, max_players: 1},
#   {title: "Tony Hawk's Pro Skater 1 + 2", platform: 12, rating_category: 2, online: true, min_players: 1, max_players: 8},
#   {title: "Tony Hawk's Pro Skater 1 + 2", platform: 13, rating_category: 2, online: true, min_players: 1, max_players: 8},
#   {title: "Battlefield 3", platform: 9, rating_category: 3, online: true, min_players: 1, max_players: 4},
#   {title: "Battlefield 3", platform: 10, rating_category: 3, online:true, min_players: 1, max_players: 4}
# ])

# SEEDED
# User.create!([
#   {first_name: "Bob", last_name: "Barker", email: "thepriceiswrong@gmail.com", password: "happyplace123", password_confirmation: "happyplace123", street: "1101 Park Avenue", unit: "506", city: "Chicago", state: "IL", zip: "60007"},
#   {first_name: "Charlie", last_name: "Baker", email: "thebestchef1@yahoo.com", password: "grillnbake52", password_confirmation: "grillnbake52", street: "21 Maple Street", unit: "", city: "New York City", state: "NY", zip: "10004"},
#   {first_name: "Sam", last_name: "Shields", email: "sam123456@hotmail.com", password: "coldsoup76", password_confirmation: "coldsoup76", street: "5670 Raven Lane", unit: "", city: "Miami", state: "FL", zip: "33101"},
#   {first_name: "Lindsey", last_name: "Booker", email: "doglover01@gmail.com", password: "dakotahunter6759", password_confirmation: "dakotahunter6759", street: "901 Main Street", unit: "2B", city: "Seattle", state: "WA", zip: "98105"},
#   {first_name: "Samantha", last_name: "Downing", email: "harrypotterfan6@yahoo.com", password: "VST671mp9", password_confirmation: "VST671mp9", street: "45 Rocky Road", unit: "", city: "Dallas", state: "TX", zip: "75043"}
# ])

# SEEDED
# VideoGameGenre.create!([
#   {genre_id: 1, video_game_id: 1},
#   {genre_id: 4, video_game_id: 1},
#   {genre_id: 1, video_game_id: 2},
#   {genre_id: 4, video_game_id: 2},
#   {genre_id: 1, video_game_id: 3},
#   {genre_id: 4, video_game_id: 3},
#   {genre_id: 7, video_game_id: 3},
#   {genre_id: 1, video_game_id: 4},
#   {genre_id: 4, video_game_id: 4},
#   {genre_id: 7, video_game_id: 4},
#   {genre_id: 2, video_game_id: 5},
#   {genre_id: 12, video_game_id: 5},
#   {genre_id: 13, video_game_id: 5},
#   {genre_id: 2, video_game_id: 6},
#   {genre_id: 12, video_game_id: 6},
#   {genre_id: 13, video_game_id: 6},
#   {genre_id: 2, video_game_id: 7},
#   {genre_id: 12, video_game_id: 7},
#   {genre_id: 13, video_game_id: 7},
#   {genre_id: 10, video_game_id: 8},
#   {genre_id: 10, video_game_id: 9},
#   {genre_id: 1, video_game_id: 10},
#   {genre_id: 4, video_game_id: 10},
#   {genre_id: 1, video_game_id: 11},
#   {genre_id: 4, video_game_id: 11}
# ])

# SEEDED!
# Cartridge.create!([
#   {video_game_id: 1, owner_id: 1}, #PS4
#   {video_game_id: 1, owner_id: 2}, #PS4
#   {video_game_id: 2, owner_id: 5}, #XBOX One
#   {video_game_id: 3, owner_id: 1}, #PS3
#   {video_game_id: 4, owner_id: 3}, #XBOX 360
#   {video_game_id: 5, owner_id: 1}, #N64
#   {video_game_id: 5, owner_id: 2}, #N64
#   {video_game_id: 5, owner_id: 3}, #N64
#   {video_game_id: 5, owner_id: 4}, #N64
#   {video_game_id: 6, owner_id: 5}, #Wii
#   {video_game_id: 7, owner_id: 1}, #Switch
#   {video_game_id: 7, owner_id: 4}, #Switch
#   {video_game_id: 8, owner_id: 1}, #PS4
#   {video_game_id: 9, owner_id: 3}, #XBOX One
#   {video_game_id: 9, owner_id: 5}, #XBOX One
#   {video_game_id: 10, owner_id: 2}, #PS3
#   {video_game_id: 11, owner_id: 3} #XBOX 360
# ])