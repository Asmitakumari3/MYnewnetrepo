// See https://aka.ms/new-console-template for more information

using netflixAPI;
using System;


#region GetAllMovies
NetflixAPIclass postData = new NetflixAPIclass();
var data = postData.ConsumePostData();

foreach (var item in data)
{
    Console.WriteLine(item.movieId);
    Console.WriteLine(item.movieName);
    Console.WriteLine(item.movieCategory);
    Console.WriteLine(item.movieState);
    Console.WriteLine(item.movieActorName);
    Console.WriteLine(item.movieActress);
    Console.WriteLine("------------------------");
}
#endregion

#region GetMovieByName

//NetflixAPIclass postData = new NetflixAPIclass();
Console.WriteLine("Enter Movie Name");
string name = Console.ReadLine();
try
{
    NetflixAPIclass item = postData.GetMovieByName(name);

    Console.WriteLine(item.movieId);
    Console.WriteLine(item.movieName);
    Console.WriteLine(item.movieCategory);
    Console.WriteLine(item.movieState);
    Console.WriteLine(item.movieActorName);
    Console.WriteLine(item.movieActress);
    Console.WriteLine("------------------------");
}
catch (Exception es)
{
    Console.WriteLine(es.Message);
}
#endregion



