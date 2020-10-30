# Winter Reads

#### Created by Alma Frankenstein for Epicodus, 2020

## Description

This is a demo API that uses the Faker gem to seed a database with book titles, authors, and prices. Visiting the main page will display the first three entries. To see the next three, append '?page=2' to the url. It can also return a random selection, using the '/random' endpoint.

## Specs

* Seeds a database with fake book info
* Allows a user to make API calls to the books database
* Allows a user to post new entries to the database
* Can return a random database entry

## Setup

Clone this repo using:

```git clone https://github.com/alma-frankenstein/mario_database mario```

Cd to the mario directory.

Install Bundler with ```gem install bundler```

Each time the Gemfile is changed, run ```bundle install```

Create the databases with ```rake db:create```

Migrate the database and test database with ```rake db:migrate``` and ```rake db:test:prepare```

Seed the databases: ```rake db:seed```

View the app in the server: ```rails s```

To make a certain user an admin:
run ```rails c``` to open a ruby console
```User.all``` to see the users and their IDs
```User.find(id).update :admin => true``` where 'id' is the integer of their ID number

## Technologies Used

* Ruby
* rspec
* Rails
* Capybara
* SQL
* devise

## Contact Details

For questions or to suggestions, please email A.Q.Frankenstein@gmail.com

### License

This software is licensed under the MIT license.

Copyright (c) 2020 Alma Frankenstein