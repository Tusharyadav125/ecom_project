
import 'package:ecom/Screens/bottomnev/Bottomnev_screen.dart';
import 'package:ecom/Screens/login%20and%20sign%20up/signup_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget{
    LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  var emailcontroller = TextEditingController();
  var passcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     title: 'Flutter Demo',
     theme: ThemeData() ,
     debugShowCheckedModeBanner: false,
     home: mybody() , // function
   );
  }
}


ValueNotifier<bool> isCheckedNotifier = ValueNotifier(false);
class mybody extends StatelessWidget{
  get isChecked => null;

  var emailcontroller = TextEditingController();
  var passcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     backgroundColor: Colors.white,
     body: SafeArea(
      child: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 50,),
              Image.asset(
                'assets/images/Logo.png',
                width: 160,
                height: 150,
              ),
              SizedBox(height: 20,),
              Text("Welcome" , style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 30
              ),),
              SizedBox(height: 8,),
              Text("Login to Continue" , style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),),

              SizedBox(height: 50,),

              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [

                    TextField(
                      controller: emailcontroller,


                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.email),
                          hintText: 'Email',
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.black,
                                  width: 1.3
                              )
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(6),
                              borderSide: BorderSide(
                                color: Colors.black,
                              )
                          )
                      ),
                    ),

                    SizedBox(height: 20,),

                    TextField(
                      controller: passcontroller,
                     keyboardType: TextInputType.visiblePassword,
                      obscureText: true ,
                      decoration: InputDecoration(
                          hintText: 'Password',
                          prefixIcon: Icon(Icons.lock),
                          suffixIcon: IconButton(onPressed:(){
                          }, icon: Icon(Icons.remove_red_eye),color: Colors.grey,),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.black,
                                  width: 1.3
                              )
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(6),
                              borderSide: BorderSide(
                                color: Colors.black,
                              )
                          )
                      ),
                    ),
                    SizedBox(height: 7,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        Row(
                          children: [
                            ValueListenableBuilder<bool>(
                              valueListenable: isCheckedNotifier,
                              builder: (context, value, _) {
                                return Checkbox(
                                  value: value,
                                  onChanged: (bool? newValue) {
                                    isCheckedNotifier.value = newValue ?? false;
                                  },
                                  activeColor: Colors.blue, // optional styling
                                );
                              },
                            ),
                            GestureDetector(
                              onTap: () {
                                isCheckedNotifier.value = !isCheckedNotifier.value;
                              },
                              child: const Text(
                                "Remember me",
                                style: TextStyle(color: Colors.black, fontSize: 16),
                              ),
                            ),
                          ],
                        ),


                        TextButton(onPressed: () {}, child: Text("Forget Password", style: TextStyle(color: Colors.red),),),
                        
                      ],
                    ),

                    SizedBox(height: 20,),

                    Container(
                      width: MediaQuery.of(context).size.width * 0.9, // 👈 80% of screen width
                      height: 60,
                      child: ElevatedButton(
                        onPressed: () {
                          String email = emailcontroller.text.trim();
                          String password = passcontroller.text.trim();

                          if(email.isEmpty || password.isEmpty || !isCheckedNotifier.value){
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text("Please fill all fields")),
                            );
                          } else if (!email.contains("@") || !email.contains(".")) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text("Enter a valid email")),
                            );
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text("✅ Login Successful")),);
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>BottomnevScreen()),);
                          }

                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child: Text(
                          "LOG IN",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    )

                  ],
                ),
              ),


              TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> signupscreen()),);
              },

                  child: Text("New User SignUp" , style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),)),

              SizedBox(height: 10,),

              TextButton(
                onPressed: () {},
                child: Text(
                  "By Signing Up you indicate that you have read\n   and agreed to the Terms and Conditions",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 13
                  ),
                ),
              ),



            ],
          ),
        ),
      ),

     ),

 );
  }

}