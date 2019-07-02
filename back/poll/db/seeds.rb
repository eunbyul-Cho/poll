# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
users = User.create([{ name: 'David' }, { name: 'Sally' },{name:'Jamie'}])
votes = Vote.create([{ name: 'Color',user_id:1 }, { name: 'Movies',user_id:1 }, { name: 'Books',user_id:2 }])
candidates = Candidate.create([{ name: 'Red',count:2,vote_id: 1},
                              { name: 'Yellow',count:1 ,vote_id: 1},
                              { name: 'blue',count:3,vote_id: 1},
                              { name: "Toy Story4", count: 2, vote_id: 2},
                              { name: "Aladdin", count: 5, vote_id:2 },
                              {name: "Lord of the rings", count: 8, vote_id: 2},
                              {name: "Circle", count: 1, vote_id: 3},
                              {name: "Life of Pi", count: 1, vote_id: 3},
                              {name: "MilkMan", count: 1, vote_id: 3},
                              ])
david = User.first
sally = User.second
jamie = User.third
blue = Candidate.find(3)
yellow = Candidate.find(2)
toystory = Candidate.find(4)
rings = Candidate.find(6)

david.candidates << blue
david.candidates << toystory
sally.candidates << yellow
sally.candidates << toystory
jamie.candidates << rings
jamie.candidates << blue
