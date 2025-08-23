import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

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
          "Settings",
          style: TextStyle(
            color: Colors.black,
            fontSize: width * 0.05,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),

      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: width * 0.05),
        child: Column(
          children: [
            _settingItem(context, "Share this App"),
            _settingItem(context, "Address"),
            _settingItem(context, "Rate this App"),

            Divider(color: Colors.grey.shade300, thickness: 1),

            _settingItem(context, "Term Condition"),
            _settingItem(context, "Privacy Policy"),
            _settingItem(context, "About this App"),
            _settingItem(context, "Contact Us"),
          ],
        ),
      ),
    );
  }

  Widget _settingItem(BuildContext context, String title) {
    final width = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: () {
        // Handle tap
      },
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: width * 0.035),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: width * 0.042,
                color: Colors.black,
              ),
            ),
            Icon(Icons.arrow_forward_ios,
                size: width * 0.045, color: Colors.black54),
          ],
        ),
      ),
    );
  }
}
