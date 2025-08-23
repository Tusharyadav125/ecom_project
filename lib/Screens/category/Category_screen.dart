import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../bottomnev/Bottomnev_screen.dart';

class CategoryScreen extends StatefulWidget{
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  var arrNewArrival=[
    {"img":"banner2.png","text":"Product Name" ,"Price":"₹120.00" ,"discontprice":"₹90.00"   },
    {"img":"banner.png","text":"Product Name" ,"Price":"₹120.00" ,"discontprice":"₹90.00"   },
    {"img":"banner2.png","text":"Product Name" ,"Price":"₹120.00" ,"discontprice":"₹90.00"   },
    {"img":"banner.png","text":"Product Name" ,"Price":"₹120.00" ,"discontprice":"₹90.00"   },
    {"img":"banner2.png","text":"Product Name" ,"Price":"₹120.00" ,"discontprice":"₹90.00"   },
    {"img":"banner.png","text":"Product Name" ,"Price":"₹120.00" ,"discontprice":"₹90.00"   },
    {"img":"banner2.png","text":"Product Name" ,"Price":"₹120.00" ,"discontprice":"₹90.00"   },
    {"img":"banner.png","text":"Product Name" ,"Price":"₹120.00" ,"discontprice":"₹90.00"   },
  ];

  int quantity = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child: Container(
          color: Colors.white,
          child:Column(
            children: [
              SizedBox(height: 10,),
              Container(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      IconButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> BottomnevScreen()));
                      }, icon: Icon(Icons.arrow_back,),),
                      SizedBox(width: 80,),
                      Text("Category",style: TextStyle( color: Colors.black,fontWeight: FontWeight.bold,fontSize:22)),
                    ],
                  ),
                ),
              ),

              Expanded(
                child: GridView.builder(
                    padding: const EdgeInsets.all(8),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                      childAspectRatio: 0.75, // Adjust card height/width ratio
                    ),
                    itemCount: arrNewArrival.length,shrinkWrap: true,itemBuilder: (context,index){
                      return
                        Padding(
                          padding: const EdgeInsets.all(8.0),
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
                        );
                }),
              ),


            ],
          )
        ),
      )
    );
  }
}