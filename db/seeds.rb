# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


behavior = Behavior.create([{ name: "Sleep", details: "Sleep Details", type_of: ["Good", "OK", "Bad"] }, { name: "Mood", details: "Mood Details", type_of: ["Happy", "Sad", "Anxious", "Sensitive", "Hopeless", "Angry", "Irritable", "Empty", "Tired"] }, { name: "Energy", details: "Energy Details", type_of: ["Very High", "High", "Low", "Very Low"] }, { name: "Mental", details: "Mental Details", type_of: ["Calm", "Stressed", "Distracted", "Focused"] }, { name: "Drinks", details: "Drinks Details", type_of: ["Water", "Coffee", "Tea", "Alcohol"] }, { name: "Medication", details: "Medication Details", type_of: [""] }])


# Behaviors {
#   [ Sleep {
#       [Good,
#        OK,
#        Bad]
#     },
#     Mood {
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
#     Energy {
#       [ { id: 0, name: "Very High" },
#        { id: 1, name: "High" },
#        { id: 2, name: "Low" },
#        { id: 3, name: "Very Low" },
#     },
#     Mental {
#       [ { id: 0, name: "Calm" },
#         { id: 1, name: "Stressed" },
#         { id: 2, name: "Distracted" },
#         { id: 3, name: "Focused" },
#       ]
#     },
#     Drinks {
#       [ { id: 0, name: "Water" },
#         { id: 1, name: "Coffee" },
#         { id: 2, name: "Tea" },
#         { id: 3, name: "Alcohol" },
#       ]
#     },
#     Medication {
#       [ { id: 0, name: "", dose: integer }]
#     }
#   ]
# }
