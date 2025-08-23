import 'package:flutter/material.dart';

class ProductdetailsScreen extends StatelessWidget{
  const ProductdetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Colors.white,
    body: 
    SafeArea(child: 
    Container(
      child:
      Column(
        children: [
          SizedBox(height: 10,),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                // Back button
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context); // Goes back to previous screen
                  },
                  child: Icon(Icons.arrow_back),
                ),

                // Title
                Text(
                  "    Product Details",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                ),

                // Cart and Star icons
                Row(
                  children: [
                    Icon(Icons.shopping_cart, color: Colors.black),
                    SizedBox(width: 10),
                    Icon(Icons.star_rate_outlined, color: Colors.yellow, size: 30),
                  ],
                ),
              ],
            )

          ),
          SizedBox(height: 10,),

          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
             SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Image.asset("assets/images/banner.png"),
          ),



             Padding(
             padding: const EdgeInsets.all(15.0),
              child: Container(
              padding: EdgeInsets.all(12),
                   decoration: BoxDecoration(
                     color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(12),
                      ),
                  child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("HRX",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 22),),
                      Row(
                        children: [
                          Icon(Icons.star,color: Color(0xFFEAC400),),
                          SizedBox(width: 5,),
                          Text("3",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 22),),
                        ],
                      ),

                    ],
                  ),
                  SizedBox(width: 10,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text("  ₹4300",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 22),),
                          SizedBox(width: 30,),
                        ],
                      ),

                      Row(
                        children: [
                          Icon(Icons.remove,color: Colors.black,),
                          SizedBox(width: 5,),
                          Text("1",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,),),
                          SizedBox(width: 5,),
                          Icon(Icons.add,color: Colors.black,),
                        ],
                      ),

                    ],
                  ),
                  SizedBox(height: 15,),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                       Text("Delivery: 0days, 10 days return",style: TextStyle(color: Colors.black,),),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 15,),

                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(Icons.shield_sharp,color: Colors.blue,),
                          SizedBox(width: 5,),
                          Text(" eCommerce Refund Protection 30 \n Days cash back Guarantee",style: TextStyle(color: Colors.black,),),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 15,),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                         Image.asset('assets/images/Logo.png',height: 30, width: 30,),
                          SizedBox(width: 7,),
                          Image.asset('assets/images/Logo.png',height: 30, width: 30,),
                          SizedBox(width: 7,),
                          Image.asset('assets/images/Logo.png',height: 30, width: 30,),
                          SizedBox(width: 7,),
                          Image.asset('assets/images/Logo.png',height: 30, width: 30,),

                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 15,),

                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Specification :",style: TextStyle(color: Colors.black,),),
                          Icon(Icons.add,color: Colors.black,)
                        ],
                      ),
                    ),
                  ),

                  SizedBox(height: 15,),

                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Specification :",style: TextStyle(color: Colors.black,),),
                          Icon(Icons.add,color: Colors.black,)
                        ],
                      ),
                    ),
                  ),

                ],
              ),
            ),
          ),

                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Header
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Review (2)", style: TextStyle(fontWeight: FontWeight.bold)),
                              Text("edit Review", style: TextStyle(color: Colors.blue)),
                            ],
                          ),
                          SizedBox(height: 10),

                          // First Review
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 25,
                                backgroundImage: AssetImage('assets/images/user_avatar.png'), // replace with actual image
                              ),
                              SizedBox(width: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Mohit", style: TextStyle(fontWeight: FontWeight.bold)),
                                  Row(
                                    children: List.generate(5, (index) {
                                      return Icon(Icons.star_border, size: 16, color: Colors.grey);
                                    }),
                                  ),
                                ],
                              ),
                              Spacer(),
                              Text("17-5-24", style: TextStyle(color: Colors.black54)),
                            ],
                          ),
                          SizedBox(height: 10),

                          // Second Review
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 25,
                                backgroundImage: AssetImage('assets/images/user_avatar.png'), // same here
                              ),
                              SizedBox(width: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Mohit", style: TextStyle(fontWeight: FontWeight.bold)),
                                  Row(
                                    children: List.generate(5, (index) {
                                      return Icon(Icons.star_border, size: 16, color: Colors.grey);
                                    }),
                                  ),
                                ],
                              ),
                              Spacer(),
                              Text("17-5-24", style: TextStyle(color: Colors.black54)),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )


                ],
    ),
    ),
    ),






          Container(
            color:Color(0xFFEAEAEA),
            width: double.infinity,
            height: 80,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Total:₹4300",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                    ],
                  )
                ),
                Container(
                    height: 50,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black,
                    ),
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.shopping_bag_rounded,color: Colors.white,),
                        Text("Add to Cart",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                      ],
                    )
                )
              ],
            ),
          ),




        ],
      ),

    )),
    );
  }

}