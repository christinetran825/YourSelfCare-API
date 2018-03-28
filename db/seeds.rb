# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

behavior_list = [
  ["Sleep", "Sleep and Energy go hand in hand. Erratic sleep patterns can affect a person's energy, mood, and mental health."],

  ["Mood", "A mood disorder is a mental health class that health professionals use to broadly describe all types of depression and bipolar disorders. Depending on age and the type of mood disorder, a person may have different symptoms of depression. "],

  ["Energy", "Energy or Fatigue levels can change depending on the level of depression. It can affect a person's sleep."],

  ["Mental", "Mental or Cognitive distortions are ways that our mind convinces us of something that isn't true. Inaccurate thoughts reinforces the negative thoughts and emotions/moods. At times, how an environment or a single event a person experiences can affect these negative thoughts."],

  ["Drinks", "It's important to drink the daily recommended amount of water. Drinking caffeinated liquids like tea and coffee can worsen anxiety and possibly worsen depression by causing headaches, fatigue, and irritability. Alcohol can lead to self-medicating symptoms and worsening the depression."],

  ["Medication", "When taken as prescribed, medications can help manage a person's symptoms. If a person comes off their medicine too soon, or if they feel better, it can lead to a relapse. Medication will not always be the first choice, especially if your depression is mild. There are a number of different types of antidepressants available. Your GP can explain which they believe is the best for you and why. What your doctor prescribes will depend on the type and severity of depression you have. If you experience problems from your medicine or have any concerns, speak to your GP."],
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



user = User.new({name: "James Peach"}, {email: "james@email.com"})

medication = ["Medication A", 10, "Doctor A", 1/1/18, "first medication ever taken"]

insurance = ["Insurance A", "123 Street, Los Angeles, CA 12345", 555-5555, "PPO insurance"]

provider = [["Doctor A", "456 Street, Los Angeles, CA 12345", 222-2222, 1/1/18, "Very patient doctor.", "Primary Care"], ["Psychiatrist A", "789 Ave, Los Angeles, CA 12345", 222-2222, 1/1/18, "Very patient doctor.", "Psychiatrist"], ["Therapist A", "10 Drive, Los Angeles, CA 12345", 222-2222, 1/1/18, "Very patient doctor.", "Therapist"]]
