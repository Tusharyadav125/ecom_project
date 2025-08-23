import 'package:flutter/material.dart';

class MyDownloadScreen extends StatelessWidget {
  const MyDownloadScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    // Example data
    final List<Map<String, String>> downloads = [
      {
        "title": "Microsoft Windows 7 Professional 64 Bits",
        "date": "05 Dec 2022"
      },
      {
        "title": "Microsoft Windows 7 Professional 64 Bits",
        "date": "05 Dec 2022"
      },
      {
        "title": "Microsoft Windows 7 Professional 64 Bits",
        "date": "05 Dec 2022"
      },
      {
        "title": "Microsoft Windows 7 Professional 64 Bits",
        "date": "05 Dec 2022"
      },
      {
        "title": "Microsoft Windows 7 Professional 64 Bits",
        "date": "05 Dec 2022"
      },
      {
        "title": "Microsoft Windows 7 Professional 64 Bits",
        "date": "05 Dec 2022"
      },
      {
        "title": "Microsoft Windows 7 Professional 64 Bits",
        "date": "05 Dec 2022"
      },

    ];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          "My Download",
          style: TextStyle(
            color: Colors.black,
            fontSize: width * 0.05,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),


      body: Padding(
        padding: EdgeInsets.all(width * 0.04),
        child: ListView.builder(
          itemCount: downloads.length,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.only(bottom: width * 0.04),
              padding: EdgeInsets.all(width * 0.04),
              decoration: BoxDecoration(
                color: Colors.red.shade50,
                borderRadius: BorderRadius.circular(width * 0.03),
                boxShadow: [
                  BoxShadow(color: Colors.black12, blurRadius: 1, offset: Offset(2, 3))
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Left Section - Title & Date
                  Text(
                    downloads[index]['title']!,
                    style: TextStyle(
                      fontSize: width * 0.04,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: width * 0.015),
                  Row(
                    children: [
                      Text(
                        downloads[index]['date']!,
                        style: TextStyle(
                          fontSize: width * 0.035,
                          color: Colors.black54,
                        ),
                      ),
                      Spacer(),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: width * 0.015,
                          vertical: width * 0.015,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.red.shade200,
                          borderRadius: BorderRadius.circular(width * 0.02),
                        ),
                        child: Text(
                          "Download",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: width * 0.035,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),

                  // Right Section - Download label

                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
