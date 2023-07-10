import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String>profileimages=[
         "images/1.jpeg",
         "images/2.jpeg",
         "images/3.jpeg",
         "images/4.jpeg",
         "images/5.jpeg",
         "images/6.jpeg",
         "images/7.jpeg",
         "images/8.jpeg",
  ];
  List<String>posts=[
    "images/post1.jpeg",
    "images/post2.jpeg",
    "images/post3.jpeg",
    "images/post4.jpeg",
    "images/post5.jpeg",
    "images/post6.jpeg",
    "images/post7.jpeg",
    "images/post8.jpeg",
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset("images/instatitle.png",
        height: 50),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.add_circle_outline)),
          IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border)),
          IconButton(onPressed: (){}, icon: Icon(Icons.chat_bubble_outline))
        ],

      ),
     body: SingleChildScrollView(
       child: Column(
         children: [
           SingleChildScrollView(
             scrollDirection: Axis.horizontal,
             child: Row(
               children:List.generate(
                 8,
                   (index)=>Container(padding:EdgeInsets.all(10),
                     child: Column(
                       children: [
                         CircleAvatar(
                           backgroundImage: AssetImage("images/instagrad.jpeg"),
                         child: CircleAvatar(
                           radius: 32,
                           backgroundImage: AssetImage(profileimages[index]),
                         ),
                   ),
                         SizedBox(height: 10),
                         Text("Profile Name",
                         style: TextStyle(
                           fontSize: 12,
                           color: Colors.black87
                         ),),


                       ],
                     ),
               ),
             ),
           )
           ),
           Divider(),
           Column(
             children: List.generate(8, (index) => Column(

               children: [
                 Row(
                   children: [
                     Container(padding: EdgeInsets.all(10),
                       child: CircleAvatar(
                         radius: 14,
                         backgroundImage: AssetImage("images/instagrad.jpeg"),
                         child: CircleAvatar(
                           radius: 12,
                           backgroundImage: AssetImage(profileimages[index]),
                         ),
                       ),

                     ),
                     Text("Profile Name"),
                     Spacer(),
                     IconButton(onPressed: (){}, icon: Icon(Icons.more_vert)
                     ),
                   ],
                 ),
                 Image.asset(posts[index]),
                 Row(
                   children: [
                     IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border),),
                     IconButton(onPressed: (){}, icon: Icon(Icons.chat_bubble_outline),),
                     IconButton(onPressed: (){}, icon: Icon(Icons.label_outline),),
                     Spacer(),IconButton(onPressed: (){}, icon: Icon(Icons.bookmark_border),),
                   ],
                 ),
                 Container(
                   padding: EdgeInsets.all(15),
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       RichText(text: TextSpan(
                         style: TextStyle(color: Colors.black),
                         children: [TextSpan(text: "Liked by "),
                           TextSpan(text: "Profile Name",style:TextStyle(
                             fontWeight: FontWeight.bold
                           ) )

                         ]
                       ))
                     ],
                   ),
                 )
               ],
             )),
           )



         ],
       ),
     ),
    );
  }
}
