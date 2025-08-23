import 'package:flutter/material.dart';

class EditprofileScreen extends StatelessWidget {
  const EditprofileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFFFFFFFF),
        elevation: 1, // this creates the shadow *under* the AppBar
        shadowColor: Colors.black.withOpacity(0.2),
        title: Text(
          "Profile",
          style: TextStyle(
            color: Colors.black,
            fontSize: w * 0.05,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
      ),


      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: w * 0.06, vertical: h * 0.02),
        child: Column(
          children: [

            // Profile Picture
            CircleAvatar(
              radius: w * 0.15,
              backgroundColor: Colors.black12,
              child: Icon(Icons.person, size: w * 0.2, color: Colors.black),
            ),
            SizedBox(height: h * 0.03),

            // Each field
            _buildTextField(context, Icons.person, "Name", "Enter your name"),
            _buildTextField(context, Icons.phone, "Phone", "Enter your phone number"),
            _buildTextField(context, Icons.email, "Email", "Enter your email address"),
            _buildTextField(context, Icons.person_outline, "Gender", "Enter your gender"),
            _buildTextField(context, Icons.calendar_today, "Date of Birth", "Select your birth date"),

            SizedBox(height: h * 0.03),

            // Update Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  padding: EdgeInsets.symmetric(vertical: h * 0.018),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  "Update Profile",
                  style: TextStyle(fontSize: w * 0.045,color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField(BuildContext context, IconData icon, String label, String hint) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: w * 0.04, vertical: h * 0.01),
      margin: EdgeInsets.only(bottom: h * 0.02),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: const [
          BoxShadow(color: Colors.black12, blurRadius: 4, offset: Offset(2, 3)),
        ],
      ),
      child: Row(
        children: [
          Icon(icon, size: w * 0.06, color: Colors.grey[700]),
          SizedBox(width: w * 0.04),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(label,
                    style: TextStyle(
                      fontSize: w * 0.035,
                      color: Colors.grey[600],
                    )),
                TextFormField(
                  style: TextStyle(fontSize: w * 0.04),
                  decoration: InputDecoration(
                    isDense: true,
                    hintText: hint,
                    hintStyle: const TextStyle(color: Colors.black54),
                    border: InputBorder.none,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
