import 'package:flutter/material.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: BackButton(color: Colors.black),
        centerTitle: true,
        title: Text(
          "Order History",
          style: TextStyle(
            fontSize: width * 0.05,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: 5, // Change based on your data
        padding: EdgeInsets.symmetric(horizontal: width * 0.04),
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.symmetric(vertical: height * 0.015),
            padding: EdgeInsets.all(width * 0.04),
            decoration: BoxDecoration(
              color: Color(0xC0F8F8F8),
              borderRadius: BorderRadius.circular(width * 0.04),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12.withOpacity(0.1),
                  blurRadius: 1,
                  offset: Offset(2, 4),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Invoice: #YR-5473837404",
                  style: TextStyle(fontSize: width * 0.038, fontWeight: FontWeight.w500),
                ),
                SizedBox(height: height * 0.01),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Order Date: 08 Apr, 2024 11:04 AM",
                      style: TextStyle(fontSize: width * 0.035, color: Colors.grey[700]),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                        vertical: height * 0.005,
                        horizontal: width * 0.03,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(width * 0.02),
                      ),
                      child: Text(
                        "PDF",
                        style: TextStyle(
                          color: Colors.redAccent,
                          fontWeight: FontWeight.bold,
                          fontSize: width * 0.035,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: height * 0.015),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Amount ₹", style: TextStyle(fontSize: width * 0.035)),
                        SizedBox(height: 2),
                        Text(
                          "2,868.39",
                          style: TextStyle(
                            fontSize: width * 0.042,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "unpaid",
                          style: TextStyle(
                            color: Colors.redAccent,
                            fontSize: width * 0.038,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: width * 0.03),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue.shade100,
                            padding: EdgeInsets.symmetric(
                              vertical: height * 0.015,
                              horizontal: width * 0.05,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(width * 0.025),
                            ),
                          ),
                          onPressed: () {
                            // Handle pay now
                          },
                          child: Text(
                            "Pay Now",
                            style: TextStyle(
                              color: Colors.blueAccent,
                              fontWeight: FontWeight.bold,
                              fontSize: width * 0.035,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
