# ADVENTURE 

This is a rails application that assumes an sqlite database.
Adventure is a web-application that allows a user to build an itinerary for travel. The user will be able to create a schedule with locations and each schedule will have activities. 



## Framework

Rails is a web-application framework that includes everything needed to create database-backed web applications according to the Model-View-Controller (MVC) pattern.

To install Rails:

https://github.com/rails/rails/blob/master/README.md

Clone repo and then:

## development environment setup
```
bundle install
rails db:create:all
rails db:migrate
rails g rspec:install
```

## testing
```
rails g rspec:install
```
run suites:
```
rspec
```

(c) Brad Cook, Kyleen Gonzalez
