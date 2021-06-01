# README

## Project Specifications
**Here are the instructions I was given by the client prior to creating the app:**

>Create a new Rails app that keeps track of the user agents used to access it.
>
>The user agent string should be saved in a table in the database, one entry for each unique user agent string.  The table >should also have a counter and 2 timestamps, one for the first time the user agent was seen, and one for the last time.
>
>For each page request, increment the counter and set the timestamps appropriately.  (Do not worry about the extra db overhead >to access the user agent table on each request; this is an artificial scenario.)
>
>Add an index page that shows a sorted list of user agents and their timestamps and counters.
>
>Add a button to the index page that uses ajax to refresh the table from the server without doing a complete page refresh.


## Getting Started
To run app:

* Create a local database named useragents_development
* Run `bundle install`
* Run `rake db:migrate`
* Run `rails s`
