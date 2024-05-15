
using linq1;



List<FlightDetails> flightList = new List<FlightDetails>()
{
    new FlightDetails(){flightNo=1, flightName="1AirIndia", flightSource="Patna", flightDestination="Punjab", flightFare=50000},
    new FlightDetails(){flightNo=2, flightName="Spice2 ", flightSource="Bangalore", flightDestination="Kolkata", flightFare=6000},
    new FlightDetails(){flightNo=3, flightName="Indigo3", flightSource="Kochi", flightDestination="Chennai", flightFare=7000},
    new FlightDetails(){flightNo=4, flightName="Airways4", flightSource="Mumbai", flightDestination="Delhi", flightFare=5500},
    new FlightDetails(){flightNo=5, flightName="Ethy5", flightSource="Mohali", flightDestination="Dubai", flightFare=25000},
    new FlightDetails(){flightNo=6, flightName="AirIndia6", flightSource="Kolkata", flightDestination="Pune", flightFare=5900},
    new FlightDetails(){flightNo=7, flightName="Indigo7", flightSource="Chandigarh", flightDestination="Goa", flightFare=4000},
    new FlightDetails(){flightNo=8, flightName="AirIndia8", flightSource="Chennai", flightDestination="Banaglore", flightFare=4200},
    new FlightDetails(){flightNo=9, flightName="Spice9", flightSource="Kochi", flightDestination="Kolkata", flightFare=6600},
    new FlightDetails(){flightNo=10, flightName="Indigo10", flightSource="Kolkata", flightDestination="Paris", flightFare=70000},


};

var flightQ1 = from a in flightList
               where a.flightSource == "Kolkata" && a.flightDestination == "Paris"
               select a;

foreach (var item in flightQ1)
{
    Console.WriteLine("Flight No " + item.flightNo);
    Console.WriteLine("Flight Name " + item.flightName);
    Console.WriteLine("Flight Fare " + item.flightFare);
    Console.WriteLine("-----------------------------------");
}


var flightQ2 = from a in flightList
          orderby a.flightFare descending
         select a;

foreach (var item in flightQ2)
{
    Console.WriteLine("Flight No " + item.flightNo);
    Console.WriteLine("Flight Name " + item.flightName);
    Console.WriteLine("Flight Fare " + item.flightFare);
    Console.WriteLine("Flight Source "+item.flightSource);
    Console.WriteLine("Flight Source " + item.flightDestination);
    Console.WriteLine("-----------------------------------");
}








