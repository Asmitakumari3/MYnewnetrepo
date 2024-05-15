namespace netflixApp_Routing
{
    public class MovieDetail
    {
        #region Properties
        public int movieId { get; set; }
        public string movieName { get; set; }
        public string movieCategory { get; set; }
        public string movieState { get; set; }
        public string movieActorName { get; set; }
        public string movieActress { get; set; }
        #endregion

        static List<MovieDetail> movieList = new List<MovieDetail>()
        {

            new MovieDetail { movieId = 1, movieName = "Titanic", movieCategory = "Romance", movieState = "Hollywood", movieActorName = "Leonardo DiCaprio", movieActress = "Kate Winslet" },
            new MovieDetail { movieId = 2, movieName = "The Matrix", movieCategory = "SciFic", movieState = "Hollywood", movieActorName = "Keanu Reeves", movieActress = "Carrie-Anne Moss" },
            new MovieDetail { movieId = 3, movieName = "Get Out", movieCategory = "Horror", movieState = "Hollywood", movieActorName = "Daniel Kaluuya", movieActress = "Allison Williams" },
            new MovieDetail { movieId = 4, movieName = "Guardians of the Galaxy", movieCategory = "Comic", movieState = "Hollywood", movieActorName = "Chris Pratt", movieActress = "Zoe Saldana" },
            new MovieDetail { movieId = 5, movieName = "John Wick", movieCategory = "Action", movieState = "Hollywood", movieActorName = "Keanu Reeves", movieActress = "Not Applicable - No lead actress" },
            new MovieDetail { movieId = 6, movieName = "Gone Girl", movieCategory = "Thriller", movieState = "Hollywood", movieActorName = "Ben Affleck", movieActress = "Rosamund Pike" },
            new MovieDetail { movieId = 7, movieName = "The Wolf of Wall Street", movieCategory = "Comic", movieState = "Hollywood", movieActorName = "Leonardo DiCaprio", movieActress = "Margot Robbie" },
            new MovieDetail { movieId = 8, movieName = "La La Land", movieCategory = "Romance", movieState = "Hollywood", movieActorName = "Ryan Gosling", movieActress = "Emma Stone" },
            new MovieDetail { movieId = 9, movieName = "Hereditary", movieCategory = "Horror", movieState = "Hollywood", movieActorName = "Alex Wolff", movieActress = "Toni Collette" },
            new MovieDetail { movieId = 10,movieName = "The Social Network", movieCategory = "Drama", movieState = "Hollywood", movieActorName = "Jesse Eisenberg", movieActress = "Rooney Mara" },
            // 10 Bollywood movies
            new MovieDetail { movieId = 11, movieName = "Dangal", movieCategory = "Drama", movieState = "Bollywood", movieActorName = "Aamir Khan", movieActress = "Fatima Sana Shaikh" },
            new MovieDetail { movieId = 12, movieName = "Lagaan", movieCategory = "Drama", movieState = "Bollywood", movieActorName = "Aamir Khan", movieActress = "Gracy Singh" },
            new MovieDetail { movieId = 13, movieName = "Gully Boy", movieCategory = "Drama", movieState = "Bollywood", movieActorName = "Ranveer Singh", movieActress = "Alia Bhatt" },
            new MovieDetail { movieId = 14, movieName = "Barfi!", movieCategory = "Comedy", movieState = "Bollywood", movieActorName = "Ranbir Kapoor", movieActress = "Priyanka Chopra" },
            new MovieDetail { movieId = 15, movieName = "Queen", movieCategory = "Comedy", movieState = "Bollywood", movieActorName = "Rajkummar Rao", movieActress = "Kangana Ranaut" },
            new MovieDetail { movieId = 16, movieName = "Dil Chahta Hai", movieCategory = "Drama", movieState = "Bollywood", movieActorName = "Aamir Khan", movieActress = "Preity Zinta" },
            new MovieDetail { movieId = 17, movieName = "Pink", movieCategory = "Drama", movieState = "Bollywood", movieActorName = "Amitabh Bachchan", movieActress = "Taapsee Pannu" },
            new MovieDetail { movieId = 18, movieName = "Bajrangi Bhaijaan", movieCategory = "Drama", movieState = "Bollywood", movieActorName = "Salman Khan", movieActress = "Kareena Kapoor" },
            new MovieDetail { movieId = 19, movieName = "Padmaavat", movieCategory = "Drama", movieState = "Bollywood", movieActorName = "Shahid Kapoor", movieActress = "Deepika Padukone" },
            new MovieDetail { movieId = 20, movieName = "Uri: The Surgical Strike", movieCategory = "Action", movieState = "Bollywood", movieActorName = "Vicky Kaushal", movieActress = "Not Applicable - No lead actress" },
            
            // 10 Tollywood movies
            new MovieDetail { movieId = 21, movieName = "Baahubali: The Beginning", movieCategory = "Action", movieState = "Tollywood", movieActorName = "Prabhas", movieActress = "Tamannaah" },
            new MovieDetail { movieId = 22, movieName = "Baahubali: The Conclusion", movieCategory = "Action", movieState = "Tollywood", movieActorName = "Prabhas", movieActress = "Anushka Shetty" },
            new MovieDetail { movieId = 23, movieName = "Arjun Reddy", movieCategory = "Drama", movieState = "Tollywood", movieActorName = "Vijay Deverakonda", movieActress = "Shalini Pandey" },
            new MovieDetail { movieId = 24, movieName = "Rangasthalam", movieCategory = "Drama", movieState = "Tollywood", movieActorName = "Ram Charan", movieActress = "Samantha Akkineni" },
            new MovieDetail { movieId = 25, movieName = "Eega", movieCategory = "Fantasy", movieState = "Tollywood", movieActorName = "Nani", movieActress = "Samantha Akkineni" },
            new MovieDetail { movieId = 26, movieName = "Magadheera", movieCategory = "Action", movieState = "Tollywood", movieActorName = "Ram Charan", movieActress = "Kajal Aggarwal" },
            new MovieDetail { movieId = 27, movieName = "Srimanthudu", movieCategory = "Drama", movieState = "Tollywood", movieActorName = "Mahesh Babu", movieActress = "Shruti Haasan" },
            new MovieDetail { movieId = 28, movieName = "Geetha Govindam", movieCategory = "Romance", movieState = "Tollywood", movieActorName = "Vijay Deverakonda", movieActress = "Rashmika Mandanna" },
            new MovieDetail { movieId = 29, movieName = "Syeraa Narasimha Reddy", movieCategory = "Action", movieState = "Tollywood", movieActorName = "Chiranjeevi", movieActress = "Nayanthara" },
            new MovieDetail { movieId = 30, movieName = "Ala Vaikunthapurramuloo", movieCategory = "Drama", movieState = "Tollywood", movieActorName = "Allu Arjun", movieActress = "Pooja Hegde" },
        };

        #region GET Movie Methods 
        public List<MovieDetail> ViewAllMovies()
        {
            return movieList;
        }
        public List<MovieDetail> GetMovieByCategory(string category)
        {
            var data = (from m in movieList
                        where m.movieCategory == category
                        select m).ToList();
            return data;
        }
        public List<MovieDetail> GetMovieByState(string state)
        {
            var data = (from m in movieList
                        where m.movieState == state
                        select m).ToList();
            return data;
        }
        public MovieDetail GetMovieByName(string name)
        {
            var data = (from m in movieList
                        where m.movieName == name
                        select m).Single();
            return data;
        }

        #endregion

        #region Add Movie 
        public string AddNewMovie(MovieDetail newMovie)
        {
            newMovie.movieId = movieList.Max(x => x.movieId) + 1;
            movieList.Add(newMovie);
            return "Movie Added";
        }
        #endregion

        #region Delete Movie 
        public string DeleteMovie(int id)
        {
            var data = (from m in movieList
                        where m.movieId == id
                        select m).Single();

            movieList.Remove(data);
            return "Movie Deleted Successfully";
        }
        #endregion

        #region Update Movie 
        public string UpdateMovie(MovieDetail movie)
        {
            var data = (from m in movieList
                        where m.movieId == movie.movieId
                        select m).Single();

            data.movieName = movie.movieName;
            data.movieCategory = movie.movieCategory;
            data.movieState = movie.movieState;
            data.movieActorName = movie.movieActorName;
            data.movieActress = movie.movieActress;
            return "Movie Detail updated";

        }
        #endregion
    }


}


