movie1 = Movie.create({ name: "Cinderella", description: "When her father unexpectedly passes away, young Ella finds herself at the mercy of her cruel stepmother and her daughters. Never one to give up hope, Ella's fortunes begin to change after meeting a dashing stranger.", trailer: "https://www.youtube.com/embed/WRuHM6rLSF8", movie_poster: "http://www.fashiongonerogue.com/wp-content/uploads/2014/12/cinderella-2015-movie-posters-photos01.jpg"})
movie2 = Movie.create({ name: "Insurgent", description: "Tris and Four are now fugitives on the run, hunted by Jeanine, the leader of the Erudite elite. Racing against time, they must find out what Tris' family sacrificed their lives to protect, and why the Erudite leaders will do anything to stop them.", trailer: "https://www.youtube.com/embed/suZcGoRLXkU", movie_poster: "http://www.movienewz.com/img/gallery/insurgent/posters/insurgent_movie_poster_3.jpg"})
movie3 = Movie.create({ name: "Kingsman: The Secret Service", description: "A spy organization recruits an unrefined, but promising street kid into the agency's ultra-competitive training program, just as a global threat emerges from a twisted tech genius.", trailer: "https://www.youtube.com/embed/kl8F-8tR8to", movie_poster: "http://cdn.screenrant.com/wp-content/uploads/kingsman-secret-service-most-poster.jpg"})


# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
