import 'package:ecom/Screens/category/Category_screen.dart';
import 'package:ecom/Screens/home/Home_screen.dart';
import 'package:ecom/Screens/myOrder/Myorder_screen.dart';
import 'package:ecom/Screens/porfile/Profile_screen.dart';
import 'package:flutter/material.dart';

class BottomnevScreen extends StatelessWidget {
  const BottomnevScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Bottom Navigation",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: MyBottomNav(),
    );
  }
}

class MyBottomNav extends StatefulWidget {
  @override
  State<MyBottomNav> createState() => _MyBottomNavState();
}

class _MyBottomNavState extends State<MyBottomNav> {
  int currentIndex = 0;

  final List<Widget> pages = [
    HomeScreen(),
    CategoryScreen(),
    MyorderScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black,
        backgroundColor: Colors.white60,
        unselectedItemColor: Colors.grey,
          selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 10),
        showUnselectedLabels: false, // 👈 makes unselected labels visible too
        showSelectedLabels: true,   // 👈 hide selected label
        // showUnselectedLabels: false, // 👈 hide unselected label
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            // label: "", // 👈 leave label blank
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.category),
              label: "Category"

          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: "Order"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Profile"
          ),
        ],
      ),
    );
  }
}
