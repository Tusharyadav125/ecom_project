import 'package:ecom/Screens/ProfileScreen/Editprofile_screen.dart';
import 'package:ecom/Screens/ProfileScreen/Mydownload_screen.dart';
import 'package:ecom/Screens/ProfileScreen/Mywallet_screen.dart';
import 'package:ecom/Screens/ProfileScreen/Notification_screen.dart';
import 'package:ecom/Screens/ProfileScreen/Setting_screen.dart';
import 'package:ecom/Screens/ProfileScreen/Trackorder_screen.dart';
import 'package:ecom/Screens/ProfileScreen/changepassword_screen.dart';
import 'package:ecom/Screens/home/Home_screen.dart';
import 'package:ecom/Screens/login%20and%20sign%20up/Login_screen.dart';
import 'package:ecom/Screens/myOrder/Myorder_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../ProfileScreen/History_screen.dart';
import '../bottomnev/Bottomnev_screen.dart';

class ProfileScreen extends StatelessWidget{
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        title: Text('Profile',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=> BottomnevScreen()));
          },
          icon: Icon(Icons.arrow_back),
        ),

      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Center(
            child: Column(
              children: [
                SizedBox(height:30,),
                Image.asset(
                  'assets/images/profile.png',
                  width: MediaQuery.of(context).size.width*0.40,
                  height: MediaQuery.of(context).size.width * 0.30,
                ),

                TextButton(onPressed: (){},
                    child: Text('Tushar',style: TextStyle(color: Colors.black,fontSize: MediaQuery.of(context).size.width * 0.05,),)),

                Padding(
                  padding: const EdgeInsets.all(17.0),
                  child: Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.1,
                    decoration: BoxDecoration(
                      color: Color(0xA8F6F6F6),
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(color: Colors.black12, blurRadius: 1, offset: Offset(2, 3))
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(11.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              SizedBox(width: 6,),
                              Icon(Icons.call,color: Colors.green,),
                              SizedBox(width: 20,),
                              Text('94948*****',style: TextStyle(color: Colors.black,fontSize: MediaQuery.of(context).size.width * 0.04,),),
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              SizedBox(width: 6,),
                              Icon(Icons.mail_outline_rounded,color: Colors.black,),
                              SizedBox(width: 20,),
                              Text('tu****@gamil.com',style: TextStyle(color: Colors.black,fontSize: MediaQuery.of(context).size.width * 0.04,),),
                            ],
                          ),

                        ],
                      ),
                    ),
                  ),
                ),

            Padding(
              padding: const EdgeInsets.all(17.0),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xA8F6F6F6),
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(color: Colors.black12, blurRadius: 1, offset: Offset(2, 3))
                  ],
                ),
                  child:Padding(
                    padding: const EdgeInsets.all(11.0),
                    child: Column(
                      children: [
                        SizedBox(height: 10,),
                        InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>MywalletScreen()));
                          },
                          child: Row(
                            children: [
                              SizedBox(width: 15,),
                              Image.asset(
                                'assets/images/wallet.png',
                                width: MediaQuery.of(context).size.width*0.08,
                                height: MediaQuery.of(context).size.width * 0.08,
                              ),
                              SizedBox(width: 20,),
                              Text('My Wallet',style: TextStyle(color: Colors.black,fontSize: MediaQuery.of(context).size.width * 0.05,),),
                            ],
                          ),
                        ),
                        // Divider b
                         SizedBox(height: 3,),
                        Divider(
                          color: Color(0xC9B9B9B9), // line color
                          thickness: 1,                 // line thickness
                          height: 20,                   // space between rows
                        ),
                        SizedBox(height: 3,),
                        InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>MyDownloadScreen()));
                          },
                          child: Row(
                            children: [
                              SizedBox(width: 15,),
                              Image.asset(
                                'assets/images/download.png',
                                width: MediaQuery.of(context).size.width*0.08,
                                height: MediaQuery.of(context).size.width * 0.08,
                              ),
                              SizedBox(width: 20,),
                              Text('My Download',style: TextStyle(color: Colors.black,fontSize: MediaQuery.of(context).size.width * 0.05,),),
                            ],
                          ),
                        ),

                        SizedBox(height: 3,),
                        Divider(
                          color: Color(0xC9B9B9B9), // line color
                          thickness: 1,                 // line thickness
                          height: 20,                   // space between rows
                        ),
                        SizedBox(height: 3,),
                        InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>NotificationScreen()));

                          },
                          child: Row(
                            children: [
                              SizedBox(width: 15,),
                              Image.asset(
                                'assets/images/notification.png',
                                width: MediaQuery.of(context).size.width*0.08,
                                height: MediaQuery.of(context).size.width * 0.08,
                              ),
                              SizedBox(width: 20,),
                              Text('Notification',style: TextStyle(color: Colors.black,fontSize: MediaQuery.of(context).size.width * 0.05,),),
                            ],
                          ),
                        ),

                        SizedBox(height: 3,),
                        Divider(
                          color: Color(0xC9B9B9B9), // line color
                          thickness: 1,                 // line thickness
                          height: 20,                   // space between rows
                        ),
                        SizedBox(height: 3,),
                        InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>EditprofileScreen()));

                          },
                          child: Row(
                            children: [
                              SizedBox(width: 15,),
                              Image.asset(
                                'assets/images/edit.png',
                                width: MediaQuery.of(context).size.width*0.08,
                                height: MediaQuery.of(context).size.width * 0.08,
                              ),
                              SizedBox(width: 20,),
                              Text('Edit Profile',style: TextStyle(color: Colors.black,fontSize: MediaQuery.of(context).size.width * 0.05,),),
                            ],
                          ),
                        ),

                        SizedBox(height: 3,),
                        Divider(
                          color: Color(0xC9B9B9B9), // line color
                          thickness: 1,                 // line thickness
                          height: 20,                   // space between rows
                        ),
                        SizedBox(height: 3,),
                        InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>TrackorderScreen()));

                          },
                          child: Row(
                            children: [
                              SizedBox(width: 15,),
                              Image.asset(
                                'assets/images/track.png',
                                width: MediaQuery.of(context).size.width*0.08,
                                height: MediaQuery.of(context).size.width * 0.08,
                              ),
                              SizedBox(width: 20,),
                              Text('Track Order',style: TextStyle(color: Colors.black,fontSize: MediaQuery.of(context).size.width * 0.05,),),
                            ],
                          ),
                        ),

                        SizedBox(height: 3,),
                        Divider(
                          color: Color(0xC9B9B9B9), // line color
                          thickness: 1,                 // line thickness
                          height: 20,                   // space between rows
                        ),
                        SizedBox(height: 3,),
                        InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>HistoryScreen()));

                          },
                          child: Row(
                            children: [
                              SizedBox(width: 15,),
                              Image.asset(
                                'assets/images/basket.png',
                                width: MediaQuery.of(context).size.width*0.08,
                                height: MediaQuery.of(context).size.width * 0.08,
                              ),
                              SizedBox(width: 20,),
                              Text('Order History',style: TextStyle(color: Colors.black,fontSize: MediaQuery.of(context).size.width * 0.05,),),
                            ],
                          ),
                        ),

                        SizedBox(height: 3,),
                        Divider(
                          color: Color(0xC9B9B9B9), // line color
                          thickness: 1,                 // line thickness
                          height: 20,                   // space between rows
                        ),
                        SizedBox(height: 3,),
                        InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>ChangepasswordScreen()));
                          },
                          child: Row(
                            children: [
                              SizedBox(width: 15,),
                              Image.asset(
                                'assets/images/password.png',
                                width: MediaQuery.of(context).size.width*0.08,
                                height: MediaQuery.of(context).size.width * 0.08,
                              ),
                              SizedBox(width: 20,),
                              Text('Change Password',style: TextStyle(color: Colors.black,fontSize: MediaQuery.of(context).size.width * 0.05,),),
                            ],
                          ),
                        ),

                        SizedBox(height: 3,),
                        Divider(
                          color: Color(0xC9B9B9B9), // line color
                          thickness: 1,                 // line thickness
                          height: 20,                   // space between rows
                        ),
                        SizedBox(height: 3,),
                        InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>SettingScreen()));
                          },
                          child: Row(
                            children: [
                              SizedBox(width: 15,),
                              Image.asset(
                                'assets/images/setting.png',
                                width: MediaQuery.of(context).size.width*0.08,
                                height: MediaQuery.of(context).size.width * 0.08,
                              ),
                              SizedBox(width: 20,),
                              Text('Settings',style: TextStyle(color: Colors.black,fontSize: MediaQuery.of(context).size.width * 0.05,),),
                            ],
                          ),
                        ),

                        SizedBox(height: 3,),
                        Divider(
                          color: Color(0xC9B9B9B9), // line color
                          thickness: 1,                 // line thickness
                          height: 20,                   // space between rows
                        ),
                        SizedBox(height: 3,),
                        InkWell(
                          onTap: (){
                            // Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
                            showLogoutDialog(context);

                          },
                          child: Row(
                            children: [
                              SizedBox(width: 15,),
                              Image.asset(
                                'assets/images/logout.png',
                                width: MediaQuery.of(context).size.width*0.08,
                                height: MediaQuery.of(context).size.width * 0.08,
                              ),
                              SizedBox(width: 20,),
                              Text('LogOut',style: TextStyle(color: Colors.black,fontSize: MediaQuery.of(context).size.width * 0.05,),),
                            ],
                          ),
                        ),
                        SizedBox(height: 10,),
                      ],
                    ),
                  ),
                ),
            ),

                TextButton(onPressed: (){},
                    child: Text('Delete Your Account',style: TextStyle(color: Colors.red,fontSize: MediaQuery.of(context).size.width*0.04,)),),

                SizedBox(height: 5,),

              ],
            ),
          ),
        ),
      ),
    );
  }

}

void showLogoutDialog(BuildContext context) {
  showDialog(context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: Colors.white,
        title: Text("Log Out"),
        content: Text("Are you sure you want to log out?"),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop(); // Close dialog
            },
            child: Text("Cancel"),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pop(); // Close dialog
              // Add your logout code here
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => LoginScreen()),
              );
            },
            child: Text("Log Out"),
          ),
        ],
      );
    },
  );
}
