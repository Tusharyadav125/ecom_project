import 'package:ecom/Screens/TabBar%20screen/Cencelled_screen.dart';
import 'package:ecom/Screens/TabBar%20screen/Comleted_screen.dart';
import 'package:ecom/Screens/TabBar%20screen/Upcoming_screen.dart';
import 'package:ecom/main.dart';
import 'package:flutter/material.dart';

import '../bottomnev/Bottomnev_screen.dart';

class MyorderScreen extends StatelessWidget {
  const MyorderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 1,
            title: Text('My Order',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
            centerTitle: true,
            leading: IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> BottomnevScreen()));
              },
              icon: Icon(Icons.arrow_back),
            ),

          ),
          body: Column(
            children: [
              TabBar(
                indicatorColor: Colors.deepOrange,
               tabs:[
                Tab(
                  child:  Text('Upcoming',style: TextStyle(color: Colors.black,),),
                ),
                Tab(
                  child:  Text('Comleted',style: TextStyle(color: Colors.black,),),
                ),
                Tab(
                  child:  Text('Cencelled',style: TextStyle(color: Colors.black,),),
                ),

          ]

              ),


              Expanded(
                child: TabBarView(
                  children: [
                    //TAB 1
                    Container(
                      child: Center(
                        child: UpcomingScreen(),
                      ),
                    ),

                    // TAB 2
                    Container(
                      child: Center(
                        child: ComletedScreen(),
                      ),
                    ),

                    // TAB 3
                    Container(
                      child: Center(
                        child: CencelledScreen(),
                      ),
                    ),
                  ],
                ),
              )

            ],
          )
      ),
    );


  }

}