# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# Seed the RottenPotatoes DB with some movies.
more_movies = [
  {:title => 'My Neighbor Totoro', :rating => 'G',
    :release_date => '1988-04-16'},
  {:title => 'Green Book', :rating => 'PG-13',
    :release_date => '2018-11-16'},
  {:title => 'Parasite', :rating => 'R',
    :release_date => '2019-05-30'},
  {:title => 'Nomadland', :rating => 'R',
    :release_date => '2021-02-19'},
  {:title => 'CODA', :rating => 'PG-13',
    :release_date => '2021-08-13'},
  {:title => 'Inception', :rating => 'PG-13',
    :release_date => '2010-07-16'},
  {:title => 'Interstellar', :rating => 'PG-13',
    :release_date => '2014-11-07'},
  {:title => 'Fight Club', :rating => 'R',
    :release_date => '1999-10-15'}
]

more_movies.each do |movie|
  Movie.find_or_create_by!(title: movie[:title]) do |m|
    m.rating = movie[:rating]
    m.release_date = movie[:release_date]
  end
end
