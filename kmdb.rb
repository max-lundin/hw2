# In this assignment, you'll be using the domain model from hw1 (found in the hw1-solution.sql file)
# to create the database structure for "KMDB" (the Kellogg Movie Database).
# The end product will be a report that prints the movies and the top-billed
# cast for each movie in the database.

# To run this file, run the following command at your terminal prompt:
# `rails runner kmdb.rb`

# Requirements/assumptions
#
# - There will only be three movies in the database – the three films
#   that make up Christopher Nolan's Batman trilogy.
# - Movie data includes the movie title, year released, MPAA rating,
#   and studio.
# - There are many studios, and each studio produces many movies, but
#   a movie belongs to a single studio.
# - An actor can be in multiple movies.
# - Everything you need to do in this assignment is marked with TODO!

# Rubric
# 
# There are three deliverables for this assignment, all delivered within
# this repository and submitted via GitHub and Canvas:
# - Generate the models and migration files to match the domain model from hw1.
#   Table and columns should match the domain model. Execute the migration
#   files to create the tables in the database. (5 points)
# - Insert the "Batman" sample data using ruby code. Do not use hard-coded ids.
#   Delete any existing data beforehand so that each run of this script does not
#   create duplicate data. (5 points)
# - Query the data and loop through the results to display output similar to the
#   sample "report" below. (10 points)

# Submission
# 
# - "Use this template" to create a brand-new "hw2" repository in your
#   personal GitHub account, e.g. https://github.com/<USERNAME>/hw2
# - Do the assignment, committing and syncing often
# - When done, commit and sync a final time before submitting the GitHub
#   URL for the finished "hw2" repository as the "Website URL" for the 
#   Homework 2 assignment in Canvas

# Successful sample output is as shown:

# Movies
# ======

# Batman Begins          2005           PG-13  Warner Bros.
# The Dark Knight        2008           PG-13  Warner Bros.
# The Dark Knight Rises  2012           PG-13  Warner Bros.

# Top Cast
# ========

# Batman Begins          Christian Bale        Bruce Wayne
# Batman Begins          Michael Caine         Alfred
# Batman Begins          Liam Neeson           Ra's Al Ghul
# Batman Begins          Katie Holmes          Rachel Dawes
# Batman Begins          Gary Oldman           Commissioner Gordon
# The Dark Knight        Christian Bale        Bruce Wayne
# The Dark Knight        Heath Ledger          Joker
# The Dark Knight        Aaron Eckhart         Harvey Dent
# The Dark Knight        Michael Caine         Alfred
# The Dark Knight        Maggie Gyllenhaal     Rachel Dawes
# The Dark Knight Rises  Christian Bale        Bruce Wayne
# The Dark Knight Rises  Gary Oldman           Commissioner Gordon
# The Dark Knight Rises  Tom Hardy             Bane
# The Dark Knight Rises  Joseph Gordon-Levitt  John Blake
# The Dark Knight Rises  Anne Hathaway         Selina Kyle

# Delete existing data, so you'll start fresh each time this script is run.
# Use `Model.destroy_all` code.
# TODO!

Studio.destroy_all
Movie.destroy_all
Actor.destroy_all
Role.destroy_all

# Generate models and tables, according to the domain model.
# TODO!

#Completed and migrated
#File.rb names not capitalized for some reason.....

# Insert data into the database that reflects the sample data shown above.
# Do not use hard-coded foreign key IDs.
# TODO!

#input data for studios

studio = Studio.new
studio["name"] = "Warner Bros."
studio.save

#input data for movies

movie = Movie.new
movie["title"] = "Batman Begins"
movie["year_released"] = 2005
movie["rated"] = "PG 13"
movie["studio_id"] = 1
movie.save

movie = Movie.new
movie["title"] = "The Dark Knight"
movie["year_released"] = 2008
movie["rated"] = "PG 13"
movie["studio_id"] = 1
movie.save

movie = Movie.new
movie["title"] = "The Dark Knight Rises"
movie["year_released"] = 2012
movie["rated"] = "PG 13"
movie["studio_id"] = 1
movie.save



#Batman Begins Casting

actor = Actor.new
actor["name"] = "Christian Bale" #1
actor.save

actor = Actor.new
actor["name"] = "Michael Caine" #2
actor.save

actor = Actor.new
actor["name"] = "Liam Neeson" #3
actor.save

actor = Actor.new
actor["name"] = "Katie Holmes" #4
actor.save

actor = Actor.new
actor["name"] = "Gary Oldman" #5
actor.save

role = Role.new
role["movie_id"] = 1
role["actor_id"] = 1
role["character_name"] = "Bruce Wayne"
role.save

role = Role.new
role["movie_id"] = 1
role["actor_id"] = 2
role["character_name"] = "Alfred"
role.save

role = Role.new
role["movie_id"] = 1
role["actor_id"] = 3
role["character_name"] = "Ra's Al Ghul"
role.save

role = Role.new
role["movie_id"] = 1
role["actor_id"] = 4
role["character_name"] = "Rachel Dawes"
role.save

role = Role.new
role["movie_id"] = 1
role["actor_id"] = 5
role["character_name"] = "Commissioner Gordon"
role.save


#The Dark Knight Casting

actor = Actor.new
actor["name"] = "Heath Ledger" #6
actor.save

actor = Actor.new
actor["name"] = "Aaron Eckhart" #7
actor.save

actor = Actor.new
actor["name"] = "Maggie Gyllenhaal" #8
actor.save


role = Role.new
role["movie_id"] = 2
role["actor_id"] = 1
role["character_name"] = "Bruce Wayne"
role.save

role = Role.new
role["movie_id"] = 2
role["actor_id"] = 6
role["character_name"] = "Joker"
role.save

role = Role.new
role["movie_id"] = 2
role["actor_id"] = 7
role["character_name"] = "Harvey Dent"
role.save

role = Role.new
role["movie_id"] = 2
role["actor_id"] = 2
role["character_name"] = "Alfred"
role.save

role = Role.new
role["movie_id"] = 2
role["actor_id"] = 8
role["character_name"] = "Rachel Dawes"
role.save

#The Dark Knight Rises Casting

actor = Actor.new
actor["name"] = "Tom Hardy" #9
actor.save

actor = Actor.new
actor["name"] = "Joseph Gordon-Levitt" #10
actor.save

actor = Actor.new
actor["name"] = "Anne Hathaway" #11
actor.save


role = Role.new
role["movie_id"] = 3
role["actor_id"] = 1
role["character_name"] = "Bruce Wayne"
role.save

role = Role.new
role["movie_id"] = 3
role["actor_id"] = 5
role["character_name"] = "Commissioner Gordon"
role.save

role = Role.new
role["movie_id"] = 3
role["actor_id"] = 9
role["character_name"] = "Bane"
role.save

role = Role.new
role["movie_id"] = 3
role["actor_id"] = 10
role["character_name"] = "John Blake"
role.save

role = Role.new
role["movie_id"] = 3
role["actor_id"] = 11
role["character_name"] = "Selina Kyle"
role.save


# Prints a header for the movies output
puts "Movies"
puts "======"
puts ""

# Query the movies data and loop through the results to display the movies output.
# TODO!


movies = Movie.all

for movie in movies
    title = movie["title"]
    year = movie["year_released"]
    puts "-#{title.ljust(30)}#{year}"
end

# Prints a header for the cast output
puts ""
puts "Top Cast"
puts "========"
puts ""

# Query the cast data and loop through the results to display the cast output for each movie.
# TODO!



for role in roles

actor = Actor.find_by({"id" => role["actor_id"]})
puts "#{Role.all.count}"



#roles = Role.all

#roles.each do |role|
 #   movie = Movie.find_by(id: role.movie_id)
  #  actor = Actor.find_by(id: role.actor_id)
   # if movie && actor
    #  puts "- #{movie.title.ljust(30)} #{actor.name.ljust(25)} #{role.character_name}"
    #else
     # puts "Missing movie or actor for role ID #{role.id}"
    #end
  #end
#do I have to point to the characters in the movie?


# Tests
puts "Roles: #{Role.all.count}"