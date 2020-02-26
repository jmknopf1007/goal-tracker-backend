User.delete_all
User.reset_pk_sequence
Objective.delete_all
Objective.reset_pk_sequence
Goal.delete_all
Goal.reset_pk_sequence

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

jacob = User.create(fullname: "Jacob Knopf", username: "jmknopf1007", password: "j", password_confirmation: "j")
tia = User.create(fullname: "Tia Simmons", username: "tiann1025", password: "t", password_confirmation: "t")
matt = User.create(fullname: "Matt Knopf", username: "mattman07", password: "m", password_confirmation: "m")

o1 = Objective.create(title: "Learn Python", user_id: jacob.id)
o2 = Objective.create(title: "Learn Spanish", user_id: jacob.id)
o3 = Objective.create(title: "Learn Hebrew", user_id: jacob.id)
o4 = Objective.create(title: "Learn Ruby", user_id: tia.id)
o5 = Objective.create(title: "Learn Javascript", user_id: tia.id)
o6 = Objective.create(title: "Learn React", user_id: tia.id)
o7 = Objective.create(title: "Learn Java", user_id: matt.id)
o8 = Objective.create(title: "Learn French", user_id: matt.id)

g1 = Goal.create(description: "Complete 5 labs", category: "daily", day_count: 0, objective_id: o1.id)
g2 = Goal.create(description: "Complete 3 quizzes", category: "daily", day_count: 0, objective_id: o1.id)
g3 = Goal.create(description: "Complete 1 mini coding project", category: "daily", day_count: 0, objective_id: o1.id)
g4 = Goal.create(description: "Complete next unit test", category: "weekly", day_count: 0, objective_id: o1.id)
g5 = Goal.create(description: "Complete 3 labs", category: "daily", day_count: 0, objective_id: o4.id)
g6 = Goal.create(description: "Complete 2 quizzes", category: "daily", day_count: 0, objective_id: o4.id)
g7 = Goal.create(description: "Learn 5 new coding concepts", category: "daily", day_count: 0, objective_id: o4.id)
g8 = Goal.create(description: "Complete next unit test", category: "weekly", day_count: 0, objective_id: o4.id)



