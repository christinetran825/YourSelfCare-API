# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

behavior_list = [
  ["Sleep", "Sleep Details"],
  ["Mood", "Mood Details"],
  ["Energy", "Energy Details"],
  ["Mental", "Mental Details"],
  ["Drinks", "Drinks Details"],
  ["Medication", "Medication Details"],
]

behavior_list.each do |behavior|
  Behavior.create( name: behavior[0], details: behavior[1])
end

sleeping = Behavior.find_by(id: 1)
mood = Behavior.find_by(id: 2)
energy = Behavior.find_by(id: 3)
mental = Behavior.find_by(id: 4)
drinks = Behavior.find_by(id: 5)
medication = Behavior.find_by(id: 6)

sleep_condition = ["Good", "OK", "Bad"]
mood_condition = ["Happy", "Sad", "Anxious", "Guilty", "Inferior", "Lonely", "Embarrassed", "Sensitive", "Hopeless", "Angry", "Frustrated", "Empty", "Tired"]
energy_condition = ["Very High", "High", "Low", "Very Low"]
mental_condition = ["Calm", "Stressed", "Distracted", "Focused"]
drink_condition = ["Water", "Coffee", "Tea", "Alcohol"]
medication_condition = [""]


sleep_condition.each do |condition|
  sleeping.conditions << Condition.create( name: condition)
end

mood_condition.each do |condition|
  mood.conditions << Condition.create( name: condition)
end

energy_condition.each do |condition|
  energy.conditions << Condition.create( name: condition)
end

mental_condition.each do |condition|
  mental.conditions << Condition.create( name: condition)
end

drink_condition.each do |condition|
  drinks.conditions << Condition.create( name: condition)
end

medication_condition.each do |condition|
  medication.conditions << Condition.create
end

# condition_list = [
#   ["Good", "OK", "Bad"],
#   ["Happy", "Sad", "Anxious", "Sensitive", "Hopeless", "Angry", "Irritable", "Empty", "Tired"],
#   ["Very High", "High", "Low", "Very Low"],
#   ["Calm", "Stressed", "Distracted", "Focused"],
#   ["Water", "Coffee", "Tea", "Alcohol"],
#   [""]
# ]
#
# condition_list.each do |category_condition|
#   category_condition.each do |condition|
#     Conditions.create( name: condition )
#   end
# end

# Behaviors {
#   [ name: "Sleep",
#     details: "Sleep Details",
#     conditions: {
#       [ { id: 0, name: "Good" },
#        { id: 1, name: "OK" },
#        { id: 2, name: "Bad" }]
#     },
#     name: "Mood",
#     details: "Mood Details",
#     conditions: {
#       [ { id: 0, name: "Happy" },
#        { id: 1, name: "Sad" },
#        { id: 2, name: "Anxious" },
#        { id: 3, name: "Sensitive" },
#        { id: 4, name: "Hopeless" },
#        { id: 5, name: "Angry" },
#        { id: 6, name: "Irritable" },
#        { id: 7, name: "Empty" },
#        { id: 8, name: "Tired" },
#       ]
#     },
#     name: "Energy",
#     details: "Energy Details",
#     conditions: {
#       [ { id: 0, name: "Very High" },
#        { id: 1, name: "High" },
#        { id: 2, name: "Low" },
#        { id: 3, name: "Very Low" },
#     },
#     name: "Mental",
#     details: "Mental Details",
#     conditions: {
#       [ { id: 0, name: "Calm" },
#         { id: 1, name: "Stressed" },
#         { id: 2, name: "Distracted" },
#         { id: 3, name: "Focused" },
#       ]
#     },
#     name: "Drinks",
#     details: "Drinks Details",
#     conditions: {
#       [ { id: 0, name: "Water" },
#         { id: 1, name: "Coffee" },
#         { id: 2, name: "Tea" },
#         { id: 3, name: "Alcohol" },
#       ]
#     },
#     name: "Medication",
#     details: "Medication Details",
#     conditions: {
#       [ { id: 0, name: "", dose: integer }]
#     }
#   ]
# }
