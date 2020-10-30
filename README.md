# Winter Reads

#### Created by Alma Frankenstein for Epicodus, 2020

## Description

This is a demo API that uses the Faker gem to seed a database with book titles, authors, and prices. The titles are coffee blend names from Faker preceded by 'The'.

The '/books' endpoint will display a json object of all the books in the database. Visiting the '/paginate' endpoint will display the first three entries. To see the next three, append '?page=2' (or '?page=3', etc.) to the '/paginate' url. 

It's also possible to search by the titles and authors of books. To search, append '?title=' or '?author=' to the index url, followed by a search term. Incomplete terms will work, and it's not case sensitive. For instance, searching 'http://localhost:3000/books?title=sol' will return all books with the word 'Solstice' in the title. If there aren't any matches, the API will return an empty array.

The '/titles' endpoint will return an array of just the titles.

Visit the endpoint '/bargain' to see three of the least expensive books.

The API can also return a random selection, using the '/random' endpoint.

## Specs

* Seeds a database with fake book info
* Allows a user to make API calls to the books database
* Allows a user to post new entries to the database
* Can return a random database entry

## Setup

This app is deployed to Heroku; you can view it or make API calls from [https://winter-reading-api.herokuapp.com/](https://winter-reading-api.herokuapp.com/)


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