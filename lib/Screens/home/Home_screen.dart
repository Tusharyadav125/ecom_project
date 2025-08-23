import 'package:ecom/Screens/ProfileScreen/Notification_screen.dart';
import 'package:ecom/Screens/product%20Details/ProductDetails_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget{
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  var arrNewArrival=[
    {"img":"banner2.png","text":"Product Name" ,"Price":"₹120.00" ,"discontprice":"₹90.00"   },
    {"img":"banner.png","text":"Product Name" ,"Price":"₹120.00" ,"discontprice":"₹90.00"   },
    {"img":"banner2.png","text":"Product Name" ,"Price":"₹120.00" ,"discontprice":"₹90.00"   },
    {"img":"banner.png","text":"Product Name" ,"Price":"₹120.00" ,"discontprice":"₹90.00"   },
  ];

  var arrHotDeal=[
    {"img":"shoe.png","text":"Rollz white\nMen's Running","Price":"₹45.89"},
    {"img":"shoe.png","text":"Rollz white\nMen's Running","Price":"₹45.89"},
    {"img":"shoe.png","text":"Rollz white\nMen's Running","Price":"₹45.89"},
    {"img":"shoe.png","text":"Rollz white\nMen's Running","Price":"₹45.89"},

  ];

  var arrFlashsale=[
    {"img":"shoe.png","text":"Rollz white\nMen's Running","Price":"₹65.89"},
    {"img":"shoe.png","text":"Rollz white\nMen's Running","Price":"₹65.89"},
    {"img":"shoe.png","text":"Rollz white\nMen's Running","Price":"₹65.89"},
    {"img":"shoe.png","text":"Rollz white\nMen's Running","Price":"₹65.89"},

  ];
  
  int quantity = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
    body:SafeArea(
      child: SingleChildScrollView(


      child: Column(
      children: [
        Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height*0.1,
          color: Colors.white54,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(9.0),
                child: Row(
                  children: [
                    Image.asset('assets/images/Logo.png',
                    height: 40,
                      width: 40,
                    ),
                  SizedBox(width: 10,),
                  Expanded(
                    child: SizedBox(
                      height: 35, // ✅ Set height here
                      child: TextField(
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          hintText: "Search",
                          contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 0),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(17),
                            borderSide: BorderSide(color: Color(0xFFD7D7D7)),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(17),
                            borderSide: BorderSide(color: Color(0xFFD7D7D7)),
                          ),
                        ),
                      ),
                    ),
                  ),
                    SizedBox(width: 10,),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>NotificationScreen()));
                      },
                    child:
                    Icon(Icons.notifications,)),
                    SizedBox(width: 10,),
                    Icon(Icons.add_shopping_cart)
                  ],
                ),
              )
            ],
          ),
        ),



        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            'assets/images/banner2.png',
          ),
        ),

        SizedBox(height: 10,),

        Row(
          children: [
            SizedBox(width: 10,),
             Text(
                "New arrivals",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 17
                ),
              ),
          ],
        ),

        SizedBox(height: 10,),

            SizedBox(
              height: 250,
              child: ListView.builder( itemCount: 4 ,scrollDirection: Axis.horizontal,itemBuilder: (context,index){
                return
                  Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(        //to make container clickable for navigate
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductdetailsScreen()));
                    },
                    child: Container(
                      height: 218,
                      width: 160,
                      decoration: BoxDecoration(
                        color: Color(0xA8F6F6F6),
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(color: Colors.black12, blurRadius: 1, offset: Offset(0, 3))
                        ],
                      ),

                      child: Column(
                        children: [
                          Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
                                child: Image.asset(
                                  'assets/images/${arrNewArrival[index]['img']}',
                                  width: double.infinity,
                                  height: 130,
                                  fit: BoxFit.cover,
                                ),
                              ),

                              Positioned(
                                top: 5,
                                left: 3,
                                child: Container(
                                  padding: EdgeInsets.symmetric(horizontal: 4, vertical: 1),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.red
                                  ),
                                  child:
                                  Text("50% OFF",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ), ),

                              Positioned(
                                  bottom: -1,
                                  right: -1,
                                  child: Row(
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            if (quantity > 1) quantity--; // prevent going below 1
                                          });
                                        },
                                        child: const Icon(Icons.remove, color: Colors.black),
                                      ),
                                      const SizedBox(width: 5),
                                      Text(
                                        "$quantity",
                                        style: const TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const SizedBox(width: 5),
                                      GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            quantity++;
                                          });
                                        },
                                        child: const Icon(Icons.add, color: Colors.black),
                                      ),
                                    ],
                                  ),
                              ),
                            ],
                          ),

                          SizedBox(height: 8,),
                          Text("${arrNewArrival[index]['text']}",style: TextStyle(color: Color(0xE8A1A1A1,),fontSize: 16),),
                          SizedBox(height: 8,),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("${arrNewArrival[index]['Price']}",style: TextStyle(color: Colors.red,),),
                                Text("${arrNewArrival[index]['discontprice']}",style: TextStyle(color:Color(0xE8A1A1A1,)),),

                              ],
                            ),
                          )
                        ],
                      ),),
                  ),
                );
              }),
            ),


         SizedBox(height: 17,),

        Row(
          children: [
            SizedBox(width: 10,),
            Text(
              "Hot Deals",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 17
              ),
            ),
          ],
        ),

        SizedBox(height: 10,),


        SizedBox(
          height: 100,
          child: ListView.builder(scrollDirection:Axis.horizontal,itemCount:arrHotDeal.length,itemBuilder: (context,index){
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 90,
                width: 190,
                color: Colors.white54,
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/${arrHotDeal[index]['img']}',
                      height: 90,
                      width: 90,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(width: 5),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start, // Align text to start
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          '${arrHotDeal[index]['text']}',
                          style: TextStyle(fontWeight: FontWeight.w500,color: Colors.black),
                        ),
                        SizedBox(height: 5),
                        Text(
                          '${arrHotDeal[index]['Price']}',
                          style: TextStyle(color: Colors.redAccent),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            );
          }),
        ),



        Row(
          children: [
            SizedBox(width: 10,),
            Text(
              "Popular categories",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 17
              ),
            ),
          ],
        ),

        Container(
          height: 130,
          width: double.infinity,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
            children: [
              SizedBox(width: 10,),
              Column(
                children: [
                  Image.asset( 'assets/images/machinery.png',
                    height: 80,
                    width: 90,
                  ),
                  SizedBox(height: 10,),
                  Text("Machinery", style: TextStyle(color: Colors.black,),)
                ],
              ),

              Column(
                children: [
                  Image.asset( 'assets/images/machinery2.png',
                    height: 80,
                    width: 90,
                  ),
                  SizedBox(height: 10,),
                  Text("Machinery", style: TextStyle(color: Colors.black,),)
                ],
              ),
              Column(
                children: [
                  Image.asset( 'assets/images/machinery3.png',
                    height: 80,
                    width: 90,
                  ),
                  SizedBox(height: 10,),
                  Text("Machinery", style: TextStyle(color: Colors.black,),)
                ],
              ),
              Column(
                children: [
                  Image.asset( 'assets/images/machinery4.png',
                    height: 80,
                    width: 90,
                  ),
                  SizedBox(height: 10,),
                  Text("Machinery", style: TextStyle(color: Colors.black,),)
                ],
              ),
              Column(
                children: [
                  Image.asset( 'assets/images/machinery5.png',
                    height: 80,
                    width: 90,
                  ),
                  SizedBox(height: 10,),
                  Text("Machinery", style: TextStyle(color: Colors.black,),)
                ],
              ),
              SizedBox(width: 5,),
            ],
          ),
        )
        ),



        Row(
          children: [
            SizedBox(width: 10,),
            Text(
              "Flash sale",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 17
              ),
            ),
          ],
        ),

        SizedBox(height: 10,),

        SizedBox(
          height: 100,
          child: ListView.builder(scrollDirection:Axis.horizontal,itemCount:arrHotDeal.length,itemBuilder: (context,index){
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 90,
                width: 190,
                color: Colors.white54,
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/${arrFlashsale[index]['img']}',
                      height: 90,
                      width: 90,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(width: 5),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start, // Align text to start
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          '${arrFlashsale[index]['text']}',
                          style: TextStyle(fontWeight: FontWeight.w500,color: Colors.black),
                        ),
                        SizedBox(height: 5),
                        Text(
                          '${arrFlashsale[index]['Price']}',
                          style: TextStyle(color: Colors.redAccent),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            );
          }),
        ),

      ],
    )
      )
      )
    );
  }
}