# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Response.destroy_all
AnswerChoice.destroy_all
Question.destroy_all
Poll.destroy_all
User.destroy_all

bob = User.create(username: "UncleBob123")
gary = User.create(username: "TheRealGary")
amy = User.create(username: "amys<3read")
tina = User.create(username: "tinytina666")
roy = User.create(username: "royatholon0")
users = [bob, gary, amy, tina, roy]

bread_poll = Poll.create(title: "Baker's Therapy", user_id: amy.id)
exercise_poll = Poll.create(title: "Quarantine Fitness", user_id: roy.id)

bread_question1 = Question.create(title: "Baking Bread", text: "How often do you bake bread at home?", poll_id: bread_poll.id)
bread_question2 = Question.create(title: "Favorite Type", text: "What's your favorite type of bread to bake?", poll_id: bread_poll.id)
bread_question3 = Question.create(title: "Tastiest Recipe", text: "What type of bread do you make best?", poll_id: bread_poll.id)

bread_question1_ac1 = AnswerChoice.create(text: "Every day!", question_id: bread_question1.id)
bread_question1_ac2 = AnswerChoice.create(text: "Not every day, but regularly.", question_id: bread_question1.id)
bread_question1_ac3 = AnswerChoice.create(text: "On occasion, but not regularly.", question_id: bread_question1.id)
bread_question1_ac4 = AnswerChoice.create(text: "Only in my dreams!", question_id: bread_question1.id)

bread_question2_ac1 = AnswerChoice.create(text: "Flat breads", question_id: bread_question2.id)
bread_question2_ac2 = AnswerChoice.create(text: "Ryes and sourdoughs", question_id: bread_question2.id)
bread_question2_ac3 = AnswerChoice.create(text: "Baguettes", question_id: bread_question2.id)
bread_question2_ac4 = AnswerChoice.create(text: "Whole wheat and multigrain", question_id: bread_question2.id)
bread_question2_ac5 = AnswerChoice.create(text: "Other", question_id: bread_question2.id)

bread_question3_ac1 = AnswerChoice.create(text: "Flat breads", question_id: bread_question3.id)
bread_question3_ac2 = AnswerChoice.create(text: "Ryes and sourdoughs", question_id: bread_question3.id)
bread_question3_ac3 = AnswerChoice.create(text: "Baguettes", question_id: bread_question3.id)
bread_question3_ac4 = AnswerChoice.create(text: "Whole wheat and multigrain", question_id: bread_question3.id)
bread_question3_ac5 = AnswerChoice.create(text: "Other", question_id: bread_question3.id)

(1..14).each do |response|
    Response.create(choice_id: response, user_id: users.first.id)
    users.rotate(1)
end

exercise_question1 = Question.create(title: "When" text:"How often do you exercise at home during quarantine?", poll_id: exercise_poll.id)
exercise_question2 = Question.create(title: "How" text:"How do you exercise at home?", poll_id: exercise_poll.id)
exercise_question3 = Question.create(title: "Squat!" text:"How many squats can you do right now?", poll_id: exercise_poll.id)

exercise_question1_ac1 = AnswerChoice.create(text: "At least once a day.")
exercise_question1_ac2 = AnswerChoice.create(text: "Almost every day.")
exercise_question1_ac3 = AnswerChoice.create(text: "A few times a week.")
exercise_question1_ac4 = AnswerChoice.create(text: "Some weeks I don't exercise at all.")
exercise_question1_ac5 = AnswerChoice.create(text: "NEVER!! Couch potato 4 life.")

exercise_question2_ac1 = AnswerChoice.create(text: "Mostly free weights")
exercise_question2_ac2 = AnswerChoice.create(text: "Mostly body weight exercises")
exercise_question2_ac3 = AnswerChoice.create(text: "Mostly running or cardio machine")
exercise_question2_ac4 = AnswerChoice.create(text: "All of the above")
exercise_question2_ac5 = AnswerChoice.create(text: "None of the above")

exercise_question3_ac1 = AnswerChoice.create(text: "100+")
exercise_question3_ac2 = AnswerChoice.create(text: "50-99")
exercise_question3_ac3 = AnswerChoice.create(text: "20-49")
exercise_question3_ac4 = AnswerChoice.create(text: "10-19")
exercise_question3_ac5 = AnswerChoice.create(text: "0-9")

(15..29).each do |response|
    Response.create(choice_id: response, user_id: users.first.id)
    users.rotate(1)
end
