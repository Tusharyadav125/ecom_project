import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CencelledScreen extends StatefulWidget{
  const CencelledScreen({super.key});

  @override
  State<CencelledScreen> createState() => _CencelledScreenState();
}

class _CencelledScreenState extends State<CencelledScreen> {
  var arrcencelled=[
    {"img":"banner2.png","productname":"Athlete shoe" ,"Qty":"Qty: 1" ,"price":"₹459.61"},
    {"img":"banner.png","productname":"Athlete shoe" ,"Qty":"Qty: 1" ,"price":"₹484.31"   },
    {"img":"banner2.png","productname":"Athlete shoe" ,"Qty":"Qty: 1" ,"price":"₹459.61"},
    {"img":"banner.png","productname":"Athlete shoe" ,"Qty":"Qty: 1" ,"price":"₹484.31"   },
    {"img":"banner2.png","productname":"Athlete shoe" ,"Qty":"Qty: 1" ,"price":"₹459.61"},
    {"img":"banner.png","productname":"Athlete shoe" ,"Qty":"Qty: 1" ,"price":"₹484.31"   },
    {"img":"banner2.png","productname":"Athlete shoe" ,"Qty":"Qty: 1" ,"price":"₹459.61"},
    {"img":"banner.png","productname":"Athlete shoe" ,"Qty":"Qty: 1" ,"price":"₹484.31"   },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView.builder( itemCount: arrcencelled.length ,scrollDirection: Axis.vertical,itemBuilder:  (context,index){
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
                      'assets/images/${arrcencelled[index]['img']}',
                      width: MediaQuery.of(context).size.width*0.20,
                      height: MediaQuery.of(context).size.width * 0.20,
                      fit: BoxFit.cover,
                    ),
                  ),

                  SizedBox(width: 10),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("${arrcencelled[index]['productname']}",style: TextStyle(color: Colors.white,fontSize: MediaQuery.of(context).size.width * 0.045,
                      ),),
                      Text("${arrcencelled[index]['Qty']}",style: TextStyle(color: Colors.grey,  fontSize: MediaQuery.of(context).size.width * 0.035,
                      ),),
                      Text("${arrcencelled[index]['price']}",style: TextStyle(color: Colors.grey,fontSize: MediaQuery.of(context).size.width * 0.045,
                      ),)
                    ],
                  ),
                  SizedBox(width: 40,),

                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0x9E6AD1FF),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width * 0.05,
                        vertical: MediaQuery.of(context).size.width * 0.02,
                      ),
                    ),
                    onPressed: () {
                      // Handle Reorder
                    },
                    child: Text(
                      "R-ORDER",
                      style: TextStyle(
                        color: Colors.black,
                          fontSize: MediaQuery.of(context).size.width * 0.035,
                          fontWeight: FontWeight.bold),
                    ),
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