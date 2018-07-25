# Gather.ly
##### Potluck Event Planner Web Application

Gather.ly is a web application written with *Ruby on Rails* to organize group meals.

![Home Page Screen](https://i.imgur.com/6tlgdhf.jpg)

The application permits users to create an account, book potluck events along with recipes, explore all events created by other users, able to join/leave events as they wish and add recipes/ingredients to their list. Gather.ly effectively uses CRUD functionality, RESTful routing and MVC architecture.

This application implements the core concept of relational database as a foundation to relate data to one another so that information can be efficiently retrieved. The relationships are formed using ActiveRecord associations.

![Main Screen](https://i.imgur.com/HC8sdbl.png)*Home Page, to see upcoming & previous events and your recipes*

![Event Sceen](https://i.imgur.com/7K109PF.png)*See who is joining an event and choose the recipe you want to bring*

![Recipe Screen](https://i.imgur.com/2MPlV3a.png)*Add a new recipe with description and ingredients*



#### To get started:
1. Pull down this repo
2. In the terminal, run `rails db:migrate`, and `rails db:seed`
3. To run on a local server, run `rails s`

##### Notable tools:
* Paperclip - a Ruby gem provided by thoughtbot which allows easy file attachment management.
* Bootstrap - a front-end framework which allows to build more responsive, user-friendly web applications.
* Bcrypt - a Ruby gem provided by The OpenBSD project which allows to safely handle passwords by hashing the passwords.
* RSpec - a Ruby behavior-driven development framework which allows to create unit tests.

##### DEMO
[![DEMO](https://i.imgur.com/KqzEAmS.jpg)](https://www.youtube.com/watch?v=oSjy-GMO8X0&feature=youtu.be)
[Link to Youtube Demo](https://www.youtube.com/watch?v=oSjy-GMO8X0&feature=youtu.be)
