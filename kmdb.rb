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
movie["studio_id"] = studio.id
movie.save

movie = Movie.new
movie["title"] = "The Dark Knight"
movie["year_released"] = 2008
movie["rated"] = "PG 13"
movie["studio_id"] = studio.id
movie.save

movie = Movie.new
movie["title"] = "The Dark Knight Rises"
movie["year_released"] = 2012
movie["rated"] = "PG 13"
movie["studio_id"] = studio.id
movie.save

#Actor list Batman Begins

christian_bale = Actor.new
christian_bale["name"] = "Christian Bale"
christian_bale.save

michael_caine = Actor.new
michael_caine["name"] = "Michael Caine"
michael_caine.save

liam_neeson = Actor.new
liam_neeson["name"] = "Liam Neeson"
liam_neeson.save

katie_holmes = Actor.new
katie_holmes["name"] = "Katie Holmes"
katie_holmes.save

gary_oldman = Actor.new
gary_oldman["name"] = "Gary Oldman"
gary_oldman.save

#Actor list The Dark Knight

heath_ledger = Actor.new
heath_ledger["name"] = "Heath Ledger"
heath_ledger.save

aaron_eckhart = Actor.new
aaron_eckhart["name"] = "Aaron Eckhart"
aaron_eckhart.save

maggie_gyllenhaal = Actor.new
maggie_gyllenhaal["name"] = "Maggie Gyllenhaal"
maggie_gyllenhaal.save

#Actor list The Dark Knight Rises

tom_hardy = Actor.new
tom_hardy["name"] = "Tom Hardy"
tom_hardy.save

joseph_gordon_levitt = Actor.new
joseph_gordon_levitt["name"] = "Joseph Gordon-Levitt"
joseph_gordon_levitt.save

anne_hathaway = Actor.new
anne_hathaway["name"] = "Anne Hathaway"
anne_hathaway.save


#Batman Begins Roles

role = Role.new
role["movie_id"] = Movie.find_by("title" => "Batman Begins").id
role["actor_id"] = Actor.find_by("name" => "Christian Bale").id
role["character_name"] = "Bruce Wayne"
role.save

role = Role.new
role["movie_id"] = Movie.find_by("title" => "Batman Begins").id
role["actor_id"] = Actor.find_by("name" => "Michael Caine").id
role["character_name"] = "Alfred"
role.save

role = Role.new
role["movie_id"] = Movie.find_by("title" => "Batman Begins").id
role["actor_id"] = Actor.find_by("name" => "Liam Neeson").id
role["character_name"] = "Ra's Al Ghul"
role.save

role = Role.new
role["movie_id"] = Movie.find_by("title" => "Batman Begins").id
role["actor_id"] = Actor.find_by("name" => "Katie Holmes").id
role["character_name"] = "Rachel Dawes"
role.save

role = Role.new
role["movie_id"] = Movie.find_by("title" => "Batman Begins").id
role["actor_id"] = Actor.find_by("name" => "Gary Oldman").id
role["character_name"] = "Commissioner Gordon"
role.save


#The Dark Knight Roles

role = Role.new
role["movie_id"] = Movie.find_by("title" => "The Dark Knight").id
role["actor_id"] = Actor.find_by("name" => "Christian Bale").id
role["character_name"] = "Bruce Wayne"
role.save

role = Role.new
role["movie_id"] = Movie.find_by("title" => "The Dark Knight").id
role["actor_id"] = Actor.find_by("name" => "Heath Ledger").id
role["character_name"] = "Joker"
role.save

role = Role.new
role["movie_id"] = Movie.find_by("title" => "The Dark Knight").id
role["actor_id"] = Actor.find_by("name" => "Aaron Eckhart").id
role["character_name"] = "Harvey Dent"
role.save

role = Role.new
role["movie_id"] = Movie.find_by("title" => "The Dark Knight").id
role["actor_id"] = Actor.find_by("name" => "Michael Caine").id
role["character_name"] = "Alfred"
role.save

role = Role.new
role["movie_id"] = Movie.find_by("title" => "The Dark Knight").id
role["actor_id"] = Actor.find_by("name" => "Maggie Gyllenhaal").id
role["character_name"] = "Rachel Dawes"
role.save

#The Dark Knight Rises Roles

role = Role.new
role["movie_id"] = Movie.find_by("title" => "The Dark Knight Rises").id
role["actor_id"] = Actor.find_by("name" => "Christian Bale").id
role["character_name"] = "Bruce Wayne"
role.save

role = Role.new
role["movie_id"] = Movie.find_by("title" => "The Dark Knight Rises").id
role["actor_id"] = Actor.find_by("name" => "Gary Oldman").id
role["character_name"] = "Commissioner Gordon"
role.save

role = Role.new
role["movie_id"] = Movie.find_by("title" => "The Dark Knight Rises").id
role["actor_id"] = Actor.find_by("name" => "Tom Hardy").id
role["character_name"] = "Bane"
role.save

role = Role.new
role["movie_id"] = Movie.find_by("title" => "The Dark Knight Rises").id
role["actor_id"] = Actor.find_by("name" => "Joseph Gordon-Levitt").id
role["character_name"] = "John Blake"
role.save

role = Role.new
role["movie_id"] = Movie.find_by("title" => "The Dark Knight Rises").id
role["actor_id"] = Actor.find_by("name" => "Anne Hathaway").id
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
    #studio = Studio.find(movie["studio_id"])
    puts "#{title.ljust(30)}#{year}"
end


#studio is an association test

# Prints a header for the cast output
puts ""
puts "Top Cast"
puts "========"
puts ""

# Query the cast data and loop through the results to display the cast output for each movie.
# TODO!

roles = Role.all

roles.each do |role|
    movie_title = Movie.find(role["movie_id"])["title"]
    actor_name = Actor.find(role["actor_id"])["name"]
    character_name = role["character_name"]
    puts "#{movie_title.ljust(30)} #{actor_name.ljust(25)} #{character_name}"
end


#This didn't work
#roles.each do |role|
 #   movie = Movie.find_by(id: role.movie_id)
  #  actor = Actor.find_by(id: role.actor_id)
   # if movie && actor
    #  puts "- #{movie.title.ljust(30)} #{actor.name.ljust(25)} #{role.character_name}"
  #end

  #This almost worked
#roles = Role.all
#for #role in roles
    #character = role["character_name"]
    #need movie title - have character point to this
    #movie = Movie.find_by({"id" => role["movie_id"]})
    #need actor name - have character point to this
    #actor = Actor.find_by({"id" => role["actor_id"]})
    #puts "#{character.ljust(30)}#{movie}#{actor}"
#end


# Tests
#puts "Roles: #{Role.all.count}"