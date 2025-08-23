import 'package:ecom/Screens/login%20and%20sign%20up/Login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class signupscreen extends StatelessWidget{
  const signupscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
      ) ,
      debugShowCheckedModeBanner: false,
      home: mysignupbody(), // function
    );
  }

}
class mysignupbody extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
        child: Column(
        children: [
          SizedBox(height: 30,),
        Image.asset('assets/images/Logo.png',width: 160 , height: 150,),
          Text("Welcome",style: TextStyle(
            color: Colors.black,fontWeight: FontWeight.bold,fontSize: 30
          ),),
          Text("Sign Up to Continue",style: TextStyle(
              color: Colors.black,fontWeight: FontWeight.bold,fontSize: 13
          ),),

          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [

                TextField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      hintText: "First name ", 
                      prefixIcon: Icon(Icons.person,color: Colors.black,),
                      enabledBorder:OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6),
                          borderSide: BorderSide(
                              color: Colors.black,
                              width: 1.3
                          )
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.black,
                            width: 1.3
                        ),
                      )
                  ),
                ),

                SizedBox(height: 18,),

                TextField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      hintText: "Last name ",
                      prefixIcon: Icon(Icons.person,color: Colors.black,),
                      enabledBorder:OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6),
                          borderSide: BorderSide(
                              color: Colors.black,
                              width: 1.3
                          )
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.black,
                            width: 1.3
                        ),
                      )
                  ),
                ),

                SizedBox(height: 18,),

                TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: "Email",
                  prefixIcon: Icon(Icons.email,color: Colors.black,),
                  enabledBorder:OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6),
                    borderSide: BorderSide(
                      color: Colors.black,
                        width: 1.3
                    )
                  ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                        width: 1.3
                      ),
                    )
                  ),
                ),

                SizedBox(height: 18,),

                TextField(
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                    hintText: "Password",
                    prefixIcon: Icon(Icons.lock,color: Colors.black,),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6),
                      borderSide: BorderSide(
                        color: Colors.black,
                          width: 1.3
                      )
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                        width: 1.3
                      ) ,
                    ),

                  ),
                ),
                
                SizedBox(height: 18,),

                TextField(
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                    hintText: "Phone Number",
                    prefixIcon: Icon(Icons.phone,color: Colors.black,),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6),
                        borderSide: BorderSide(
                            color: Colors.black,
                          width: 1.3
                        )
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.black,
                          width: 1.3
                      ) ,
                    ),

                  ),
                )

              ],
            ),
          ),


          Container(
            width: MediaQuery.of(context).size.width*0.9,
            height: 60,
            child: ElevatedButton(
                onPressed: (){},
               style: ElevatedButton.styleFrom(
                 backgroundColor: Colors.black,
                 shape:RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(12)
                 )
               )
                , child: Text("SIGN UP",style: TextStyle(color: Colors.white,),)),
          ),

          SizedBox(height: 10,),

          TextButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginScreen()),);
          }, child: Text("Already hava an Account? Log In" , style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),)),

        ],
      ),
    ),
        ),
      ),
    );
  }

}