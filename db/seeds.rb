User.destroy_all
Game.destroy_all
Own.destroy_all
Want.destroy_all
Message.destroy_all
Review.destroy_all

graham = User.create(username: "graham", email: "gwatson86@gmail.com")
nick = User.create(username: "nick", email: "nick@gmail.com")
michael = User.create(username: "michael", email: "michael@gmail.com")
kim = User.create(username: "kim", email: "kim@gmail.com")

mgs = Game.create(name: "Metal Gear Solid", console: "PlayStation")
t7 = Game.create(name: "Tekken 7", console: "PlayStation 4")
rdr2 = Game.create(name: "Red Dead Redemption 2", console: "PlayStation 4")
d2 = Game.create(name: "Destiny 2", console: "Xbox One")

Own.create(user_id: graham.id, game_id: mgs.id)
Own.create(user_id: graham.id, game_id: t7.id)
Own.create(user_id: nick.id, game_id: rdr2.id)
Own.create(user_id: nick.id, game_id: d2.id)
Own.create(user_id: michael.id, game_id: t7.id)
Own.create(user_id: michael.id, game_id: d2.id)
Own.create(user_id: kim.id, game_id: mgs.id)
Own.create(user_id: kim.id, game_id: rdr2.id)

Want.create(user_id: graham.id, game_id: rdr2.id)
Want.create(user_id: nick.id, game_id: t7.id)
Want.create(user_id: michael.id, game_id: mgs.id)
Want.create(user_id: kim.id, game_id: d2.id)