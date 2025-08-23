import 'package:flutter/material.dart';

class ChangepasswordScreen extends StatelessWidget {
  const ChangepasswordScreen({super.key});

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
        centerTitle: true,
        title: Text(
          "Reset Password",
          style: TextStyle(
            color: Colors.black,
            fontSize: width * 0.05,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: width * 0.07),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: width * 0.1),

              // Email Input Field
              _buildTextField(
                context,
                icon: Icons.email_outlined,
                hint: "Enter Email address",
                obscure: false,
              ),

              SizedBox(height: width * 0.05),

              // New Password Field
              _buildTextField(
                context,
                icon: Icons.lock_outline,
                hint: "Enter New Password",
                obscure: true,
              ),

              SizedBox(height: width * 0.05),

              // Confirm Password Field
              _buildTextField(
                context,
                icon: Icons.lock_outline,
                hint: "Confirm Password",
                obscure: true,
              ),

              SizedBox(height: width * 0.08),

              // Send Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black87,
                    padding: EdgeInsets.symmetric(vertical: width * 0.045),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(width * 0.03),
                    ),
                  ),
                  onPressed: () {
                    // TODO: Handle reset action
                  },
                  child: Text(
                    "SEND",
                    style: TextStyle(
                      fontSize: width * 0.04,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),

              SizedBox(height: width * 0.15),
            ],
          ),
        ),
      ),
    );
  }

  // Reusable TextField
  Widget _buildTextField(BuildContext context,
      {required IconData icon, required String hint, required bool obscure}) {
    final width = MediaQuery.of(context).size.width;
    return TextField(
      obscureText: obscure,
      decoration: InputDecoration(
        prefixIcon: Icon(icon, color: Colors.black54),
        hintText: hint,
        hintStyle: TextStyle(fontSize: width * 0.04),
        filled: true,
        fillColor: Colors.white,
        contentPadding: EdgeInsets.symmetric(
          vertical: width * 0.04,
          horizontal: width * 0.04,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(width * 0.03),
          borderSide: BorderSide(color: Colors.grey.shade300),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(width * 0.03),
          borderSide: BorderSide(color: Colors.black54),
        ),
      ),
    );
  }
}
