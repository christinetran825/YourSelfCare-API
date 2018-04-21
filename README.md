# README

# YourSelfCare
This is the RAILS API for SelfCare- C.

Mental Health is a big issue and something I'm familiar with. The goal of this app is to help track daily habits that would help those affected by mental health better manage their symptoms and find possible trigger points.

I've built this app using React, Redux, and Rails API for my Flatiron School Final Project. I plan to build this app with more details and functionality.

* Blog = https://medium.com/@christinetran_81275/portfolio-project-5-react-redux-rails-api-selfcare-42aa58311d3f

## Video Walkthrough
My video walkthrough of SelfCare: https://youtu.be/6Py4HcsAqNQ

## Installation
This app requires Ruby 2.3.1, Rails 5.1.4, and npm install. I've separated my Client and API into two repos. Please use these repos together.

* API = https://github.com/christinetran825/YourSelfCare-API
* Client = https://github.com/christinetran825/SelfCare-C

Once you have Ruby 2.3.1 and Rails 5.1.4 installed,

* fork https://github.com/christinetran825/YourSelfCare-API & clone locally
* cd selfcare-api from your local directory
* bundle install
* rails db:migrate
* rails db:seed (to seed the database)
* run rails server -p 3001
* open browser to http://localhost:3001

* fork https://github.com/christinetran825/SelfCare-C & clone locally
* cd client from your local directory
* run npm install
* npm install should automatically open a new tab in your browser to http://localhost:3000

## Future Revisions
Future inclusion of:

* User authentication
* Updating Provider Form to include Department association and radio button functionality
* Entries of Behavior logs
* Adding more imagery

## Contributing
Bug reports and pull requests are welcome on GitHub at https://github.com/christinetran825/Artphilia. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the Contributor Covenant code of conduct.

## License
The gem is available as open source under the terms of the MIT License.
