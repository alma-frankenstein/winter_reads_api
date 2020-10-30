# Winter Reads

#### Created by Alma Frankenstein for Epicodus, 2020

## Description

This is a demo API that uses the Faker gem to seed a database with book titles, authors, and prices. 

The '/books' endpoint will display a json object of all the books in the database. Visiting the '/paginate' endpoint will display the first three entries. To see the next three, append '?page=2' (or '?page=3', etc.) to the '/paginate' url. 

The API can also return a random selection, using the '/random' endpoint.

## Specs

* Seeds a database with fake book info
* Allows a user to make API calls to the books database
* Allows a user to post new entries to the database
* Can return a random database entry

## Setup

To run on your localhost, clone this repo using:

```git clone https://github.com/alma-frankenstein/winter_reads_api reads```

Cd to the reads directory.

Install gems with with ```gem install bundler```

Each time the Gemfile is changed, run ```bundle install```

Migrate the database and test database with ```rake db:migrate``` and ```rake db:test:prepare```

Seed the databases: ```rake db:seed```

View the app in the server: ```rails s```


## Technologies Used

* Ruby
* rspec
* Rails
* Postgresql
* FactoryBot
* Faker

## Contact Details

For questions or to suggestions, please email A.Q.Frankenstein@gmail.com

### License

This software is licensed under the MIT license.

Copyright (c) 2020 Alma Frankenstein