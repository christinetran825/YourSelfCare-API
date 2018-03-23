SELFCARE - RAILS

GET /api/
GET /api/behavior/:id
POST /api/behavior
PUT /api/behavior/:id
DELETE /api/behavior/:id

# Behavior Model
name :string
details :string
type_of :string

behavior name
  type_of


Behaviors {
  [ Sleep {
      [Good,
       OK,
       Bad]
    },
    Mood {
      [ { id: 0, name: "Happy" },
       { id: 1, name: "Sad" },
       { id: 2, name: "Anxious" },
       { id: 3, name: "Sensitive" },
       { id: 4, name: "Hopeless" },
       { id: 5, name: "Angry" },
       { id: 6, name: "Irritable" },
       { id: 7, name: "Empty" },
       { id: 8, name: "Tired" },
      ]
    },
    Energy {
      [ { id: 0, name: "Very High" },
       { id: 1, name: "High" },
       { id: 2, name: "Low" },
       { id: 3, name: "Very Low" },
    },
    Mental {
      [ { id: 0, name: "Calm" },
        { id: 1, name: "Stressed" },
        { id: 2, name: "Distracted" },
        { id: 3, name: "Focused" },
      ]
    },
    Drinks {
      [ { id: 0, name: "Water" },
        { id: 1, name: "Coffee" },
        { id: 2, name: "Tea" },
        { id: 3, name: "Alcohol" },
      ]
    },
    Medication {
      [ { id: 0, name: "", dose: integer }]
    }
  ]
}



User has many Behaviors
Behavior belong_to User

User has many Dates
Behavior have many Dates

Dates belong_to User and behavior

behavior have many categories
Category belong_to behavior

Categories have many conditions and qualities
Condition and Quality belong_to Category

# User Model
id (automatic)
name: string
username: string
password: auth


# Dates Model
id (automatic)
daily
weekly
monthly


# User can login, signup, edit profile, delete profile

# User can add, edit, delete a Medication
Medication has a name, dose (in mg)

# Medication
id (automatic)
name :string
dose (in mg) :number

Delete event gives alert for confirmation
