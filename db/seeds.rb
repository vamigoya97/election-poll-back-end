# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

trump = Candidate.create(name: 'Trump', party: 'Republican')
biden = Candidate.create(name: 'Biden', party: 'Democrat')

q1 = Question.create(body: 'Who do you want as the next POTUS?', trump_votes: 0, biden_votes: 0, candidate_1_id: trump.id, candidate_2_id: biden.id)
q2 = Question.create(body: 'Who do you think will win the 2020 Presidetial Election?', trump_votes: 0, biden_votes: 0, candidate_1_id: trump.id, candidate_2_id: biden.id)
q3 = Question.create(body: 'Who do you think won the first Presidential  Debate?', trump_votes: 0, biden_votes: 0, candidate_1_id: trump.id, candidate_2_id: biden.id)
    
user1 = User.create(name: 'Victor Amigo', email: 'amigo.victor.97@gmail.com')
user2 = User.create(name: 'Alberto Yanes', email: 'ayanes@gmail.com')
user3 = User.create(name: 'Carolina Yanes', email: 'carolinayanes@hotmail.com')
user4 = User.create(name: 'Cecibel Jaramillo', email: 'cecijara23@gmail.com')
user5 = User.create(name: 'Daniel Figueroa', email: 'dfigueroa@yahoo.com')
user6 = User.create(name: 'Gabriel Solorzano', email: 'gsolorzano@nd.edu')
    
Response.create(answer: 'Biden', question: q1, user: user1)
Response.create(answer: 'Biden', question: q1, user: user2)
Response.create(answer: 'Biden', question: q1, user: user3)
Response.create(answer: 'Trump', question: q1, user: user4)
Response.create(answer: 'Trump', question: q1, user: user5)
Response.create(answer: 'Trump', question: q1, user: user6)
    
Response.create(answer: 'Biden', question: q2, user: user1)
Response.create(answer: 'Biden', question: q2, user: user2)
Response.create(answer: 'Biden', question: q2, user: user3)
Response.create(answer: 'Trump', question: q2, user: user4)
Response.create(answer: 'Trump', question: q2, user: user5)
Response.create(answer: 'Trump', question: q2, user: user6)
    
Response.create(answer: 'Biden', question: q3, user: user1)
Response.create(answer: 'Biden', question: q3, user: user2)
Response.create(answer: 'Biden', question: q3, user: user3)
Response.create(answer: 'Trump', question: q3, user: user4)
Response.create(answer: 'Trump', question: q3, user: user5)
Response.create(answer: 'Trump', question: q3, user: user6)