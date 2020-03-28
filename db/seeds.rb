User.delete_all
User.reset_pk_sequence
Objective.delete_all
Objective.reset_pk_sequence
Goal.delete_all
Goal.reset_pk_sequence


jacob = User.create(fullname: "Jacob Knopf", username: "jmknopf1007", password: "j", password_confirmation: "j")
tia = User.create(fullname: "Tia Simmons", username: "tiann1025", password: "t", password_confirmation: "t")
matt = User.create(fullname: "Matt Knopf", username: "mattman07", password: "m", password_confirmation: "m")

o1 = Objective.create(title: "Learn Python", complete_status: false, user_id: jacob.id)
o2 = Objective.create(title: "Learn Spanish", complete_status: false, user_id: jacob.id)
o3 = Objective.create(title: "Learn Hebrew", complete_status: false, user_id: jacob.id)
o4 = Objective.create(title: "Learn Ruby", complete_status: false, user_id: tia.id)
o5 = Objective.create(title: "Learn Javascript", complete_status: false, user_id: tia.id)
o6 = Objective.create(title: "Learn React", complete_status: false, user_id: tia.id)
o7 = Objective.create(title: "Learn Java", complete_status: false, user_id: matt.id)
o8 = Objective.create(title: "Learn French", complete_status: false, user_id: matt.id)

g1 = Goal.create(description: "Complete 5 labs", category: "daily", complete_status: false, day_count: 0, objective_id: o1.id)
g2 = Goal.create(description: "Complete 3 quizzes", category: "daily", complete_status: false, day_count: 0, objective_id: o1.id)
g3 = Goal.create(description: "Complete 1 mini coding project", category: "daily", complete_status: false, day_count: 0, objective_id: o1.id)
g4 = Goal.create(description: "Complete next unit test", category: "weekly", day_count: 0, objective_id: o1.id)
g5 = Goal.create(description: "Complete 3 labs", category: "daily", complete_status: false, day_count: 0, objective_id: o4.id)
g6 = Goal.create(description: "Complete 2 quizzes", category: "daily", complete_status: false, day_count: 0, objective_id: o4.id)
g7 = Goal.create(description: "Learn 5 new coding concepts", category: "daily", complete_status: false, day_count: 0, objective_id: o4.id)
g8 = Goal.create(description: "Complete next unit test", category: "weekly", complete_status: false, day_count: 0, objective_id: o4.id)



