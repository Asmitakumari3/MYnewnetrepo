// See https://aka.ms/new-console-template for more information

using SBA4;

Product pd = new Product();

var data = pd.getAllProducts();

foreach (var item in data)
{
    Console.WriteLine(item.pId);
    Console.WriteLine(item.pName);
    Console.WriteLine(item.pPrice);
    Console.WriteLine(item.pAvailableQty);
    Console.WriteLine(item.pDescription);
    Console.WriteLine(item.pIsInStock);
    Console.WriteLine("------------------------------");

}


//ProductbyRange pds = new ProductbyRange();

//Console.WriteLine("Enter lower price ");

//int lp = Convert.ToInt32(Console.ReadLine());

//Console.WriteLine("Enter higher price ");

//int hp = Convert.ToInt32(Console.ReadLine());

//var data = pds.getProductsbyrange(lp, hp);

//foreach (var item in data)
//{
//    Console.WriteLine(item.pId);
//    Console.WriteLine(item.pName);
//    Console.WriteLine(item.pPrice);
//    Console.WriteLine(item.pAvailableQty);
//    Console.WriteLine(item.pDescription);
//    Console.WriteLine(item.pIsInStock);
//    Console.WriteLine("------------------------------");

//}

//Order od = new Order();

//var data2 = od.orderinProgress();

//foreach (var item in data2)
//{
//    Console.WriteLine(item.Oid);
//    Console.WriteLine(item.Pid);
//    Console.WriteLine(item.Cid);
//    Console.WriteLine(item.Ostatus);
//    Console.WriteLine("---------------------");
//}







