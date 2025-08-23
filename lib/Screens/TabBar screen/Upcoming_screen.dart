import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UpcomingScreen extends StatefulWidget{
  const UpcomingScreen({super.key});
  @override
  State<UpcomingScreen> createState() => _UpcomingScreenState();
}
var arrupcoming=[
  {"img":"banner2.png","productname":"Athlete shoe" ,"Qty":"Qty: 1" ,"price":"₹459.61"},
  {"img":"banner.png","productname":"Athlete shoe" ,"Qty":"Qty: 1" ,"price":"₹484.31"   },
  {"img":"banner2.png","productname":"Athlete shoe" ,"Qty":"Qty: 1" ,"price":"₹459.61"},
  {"img":"banner.png","productname":"Athlete shoe" ,"Qty":"Qty: 1" ,"price":"₹484.31"   },
  {"img":"banner2.png","productname":"Athlete shoe" ,"Qty":"Qty: 1" ,"price":"₹459.61"},
  {"img":"banner.png","productname":"Athlete shoe" ,"Qty":"Qty: 1" ,"price":"₹484.31"   },
  {"img":"banner2.png","productname":"Athlete shoe" ,"Qty":"Qty: 1" ,"price":"₹459.61"},
  {"img":"banner.png","productname":"Athlete shoe" ,"Qty":"Qty: 1" ,"price":"₹484.31"   },
];

class _UpcomingScreenState extends State<UpcomingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView.builder( itemCount: arrupcoming.length ,scrollDirection: Axis.vertical,itemBuilder:  (context,index){
        return Column(
          children: [
            Container(
              padding: EdgeInsets.all(8),
              margin: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black38,
                    blurRadius: 6,
                    offset: Offset(2, 3),
                  )
                ],
              ),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      'assets/images/${arrupcoming[index]['img']}',
                      width: MediaQuery.of(context).size.width*0.20,
                      height: MediaQuery.of(context).size.width * 0.20,
                      fit: BoxFit.cover,
                    ),
                  ),

                  SizedBox(width: 10),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("${arrupcoming[index]['productname']}",style: TextStyle(color: Colors.black54,fontSize: MediaQuery.of(context).size.width * 0.045,
                      ),),
                      Text("${arrupcoming[index]['Qty']}",style: TextStyle(color: Colors.grey,  fontSize: MediaQuery.of(context).size.width * 0.035,
                      ),),
                      Text("${arrupcoming[index]['price']}",style: TextStyle(color: Colors.grey,fontSize: MediaQuery.of(context).size.width * 0.045,
                      ),)
                    ],
                  ),
                  SizedBox(width: 40,),

                  Row(
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0x9E6AD1FF),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        onPressed: () {
                          // Handle Reorder
                        },
                        child: Text(
                          "Cancel",
                          style: TextStyle(
                              fontSize: MediaQuery.of(context).size.width * 0.035,
                              fontWeight: FontWeight.bold,color: Colors.black),
                        ),
                      ),
                    ],
                  ),



                ],
              ),
            )



          ],
        );
      }),
    );
  }
}