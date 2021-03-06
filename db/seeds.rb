User.destroy_all
Game.destroy_all
Own.destroy_all
Want.destroy_all
Message.destroy_all
Review.destroy_all

graham = User.create(username: "graham", email: "gwatson86@gmail.com", password: "password", password_confirmation: "password")
morgan = User.create(username: "morgan", email: "morgan@mail.com", password: "password", password_confirmation: "password")
john = User.create(username: "john", email: "john@mail.com", password: "password", password_confirmation: "password")
michael = User.create(username: "michael", email: "michael@mail.com", password: "password", password_confirmation: "password")
violet = User.create(username: "violet", email: "violet@mail.com", password: "password", password_confirmation: "password")
chelsea = User.create(username: "chelsea", email: "chelsea@mail.com", password: "password", password_confirmation: "password")
zoe = User.create(username: "zoe", email: "zoe@mail.com", password: "password", password_confirmation: "password")
trung = User.create(username: "trung", email: "trung@mail.com", password: "password", password_confirmation: "password")
kim = User.create(username: "kim", email: "kim@mail.com", password: "password", password_confirmation: "password")
jonathan = User.create(username: "jonathan", email: "jonathan@mail.com", password: "password", password_confirmation: "password")
nick = User.create(username: "nick", email: "nick@mail.com", password: "password", password_confirmation: "password")
ethan = User.create(username: "ethan", email: "ethan@mail.com", password: "password", password_confirmation: "password")
jordan = User.create(username: "jordan", email: "jordan@mail.com", password: "password", password_confirmation: "password")
andrew = User.create(username: "andrew", email: "andrew@mail.com", password: "password", password_confirmation: "password")

Own.create(user_id: graham.id, game_id: 5199, game_name: "Super Mario All-Stars", game_cover: "https://images.igdb.com/igdb/image/upload/t_cover_big/co1hop.jpg")
Own.create(user_id: graham.id, game_id: 427, game_name: "Final Fantasy VII", game_cover: "https://images.igdb.com/igdb/image/upload/t_cover_big/idzdf1alxvetz3ow2ugy.jpg")
Own.create(user_id: graham.id, game_id: 425, game_name: "Final Fantasy VIII", game_cover: "https://images.igdb.com/igdb/image/upload/t_cover_big/w2yteagrractpjc47zey.jpg")
Own.create(user_id: graham.id, game_id: 421, game_name: "Final Fantasy IX", game_cover: "https://images.igdb.com/igdb/image/upload/t_cover_big/xk2z8col2eam01gaytkh.jpg")
Own.create(user_id: morgan.id, game_id: 428, game_name: "Final Fantasy Tactics", game_cover: "https://images.igdb.com/igdb/image/upload/t_cover_big/ixg3weuxboiuvqx2aaqh.jpg")
Own.create(user_id: morgan.id, game_id: 423, game_name: "Final Fantasy Anthology", game_cover: "https://images.igdb.com/igdb/image/upload/t_cover_big/fogfldfn2y6itapmjkz0.jpg")
Own.create(user_id: morgan.id, game_id: 420, game_name: "Final Fantasy Chronicles", game_cover: "https://images.igdb.com/igdb/image/upload/t_cover_big/pnjinsxiy4ewsrkhvdme.jpg")

Want.create(user_id: morgan.id, game_id: 427, game_name: "Final Fantasy VII", game_cover: "https://images.igdb.com/igdb/image/upload/t_cover_big/idzdf1alxvetz3ow2ugy.jpg")
Want.create(user_id: morgan.id, game_id: 425, game_name: "Final Fantasy VIII", game_cover: "https://images.igdb.com/igdb/image/upload/t_cover_big/w2yteagrractpjc47zey.jpg")
Want.create(user_id: morgan.id, game_id: 421, game_name: "Final Fantasy IX", game_cover: "https://images.igdb.com/igdb/image/upload/t_cover_big/xk2z8col2eam01gaytkh.jpg")
Want.create(user_id: graham.id, game_id: 428, game_name: "Final Fantasy Tactics", game_cover: "https://images.igdb.com/igdb/image/upload/t_cover_big/ixg3weuxboiuvqx2aaqh.jpg")
Want.create(user_id: graham.id, game_id: 423, game_name: "Final Fantasy Anthology", game_cover: "https://images.igdb.com/igdb/image/upload/t_cover_big/fogfldfn2y6itapmjkz0.jpg")
Want.create(user_id: graham.id, game_id: 420, game_name: "Final Fantasy Chronicles", game_cover: "https://images.igdb.com/igdb/image/upload/t_cover_big/pnjinsxiy4ewsrkhvdme.jpg")