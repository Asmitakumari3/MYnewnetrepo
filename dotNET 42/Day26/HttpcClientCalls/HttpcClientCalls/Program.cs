

using HttpcClient_Calls;


#region postdata

//using HttpcClient_Calls;

//PostDataAPI postData = new PostDataAPI();


//var data = postData.ConsumePostData();

//foreach (var item in data)
//{
//    Console.WriteLine(item.userId);
//    Console.WriteLine(item.id);
//    Console.WriteLine(item.title);
//    Console.WriteLine(item.body);
//    Console.WriteLine("---------------------");
//}

#endregion


#region Comment1
//using HttpcClientCalls;

//CommentAPI commentData = new CommentAPI();

//var data = commentData.ConsumePostData();

//foreach (var item in data)
//{
//    Console.WriteLine(item.postId);
//    Console.WriteLine(item.id);
//    Console.WriteLine(item.name);
//    Console.WriteLine(item.email);
//    Console.WriteLine(item.body);
//    Console.WriteLine("----------------------------------");
//}

#endregion

#region fakestore
//using HttpcClientCalls;

FakestoreAPI commentData = new FakestoreAPI();

var data = commentData.ConsumePostData();

foreach (var item in data)
{
    Console.WriteLine(item.id);
    Console.WriteLine(item.title);
    Console.WriteLine(item.price);
    Console.WriteLine(item.description);
    Console.WriteLine(item.image);
    Console.WriteLine("----------------------------------");
}

#endregion





#region GetPostDataByID

//PostDataAPI postData = new PostDataAPI();
//Console.WriteLine("Enter Post ID");
//int id = Convert.ToInt32(Console.ReadLine());
//try
//{
//    PostDataAPI post = postData.GetPostById(id);
//    Console.WriteLine(post.id);
//    Console.WriteLine(post.userId);
//    Console.WriteLine(post.title);
//    Console.WriteLine(post.body);
//}
//catch (Exception es)
//{
//    Console.WriteLine(es.Message);
//}

#endregion
