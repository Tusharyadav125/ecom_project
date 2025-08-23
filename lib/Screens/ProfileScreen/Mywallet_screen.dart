import 'package:flutter/material.dart';

class MywalletScreen extends StatelessWidget {
  const MywalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white, // light background for whole page
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          "My wallet",
          style: TextStyle(
            color: Colors.black,
            fontSize: width * 0.05,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: false,
      ),



      body: SingleChildScrollView(
        padding: EdgeInsets.all(width * 0.04),
        child: Container(
          child: Column(
            children: [
              // Profile Avatar
              CircleAvatar(
                radius: width * 0.12,
                backgroundColor: Colors.purple.shade100,
              ),
              SizedBox(height: height * 0.015),

              // Name
              Text(
                "Stassed customerss",
                style: TextStyle(
                  fontSize: width * 0.045,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: height * 0.025),

              // Balance & Recharge Buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [


                  // Balance Card  Function
                  _walletActionCard(
                    context,
                    title: "Balance",
                    value: "21,571,751\$",
                    valueColor: Colors.red,
                    icon: null,
                  ),

                  // Recharge Card
                  _walletActionCard(
                    context,
                    title: "Recharge",
                    value: "+",
                    valueColor: Colors.green,
                    icon: Icons.add,
                  ),
                ],
              ),
              SizedBox(height: height * 0.03),



              // Transactions List Fucntion

              _transactionCard(context, date: "17 Jul 2024", amount: "0\$"),
              SizedBox(height: height * 0.015),
              _transactionCard(context, date: "17 Jul 2024", amount: "0\$"),
              SizedBox(height: height * 0.015),
              _transactionCard(context, date: "17 Jul 2024", amount: "0\$"),
              SizedBox(height: height * 0.015),
              _transactionCard(context, date: "17 Jul 2024", amount: "0\$"),
            ],
          ),
        ),
      ),
    );
  }

  // Balance / Recharge Card Widget
  Widget _walletActionCard(BuildContext context,
      {required String title,
        required String value,
        Color? valueColor,
        IconData? icon}) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      width: width * 0.4,
      padding: EdgeInsets.symmetric(vertical: width * 0.05),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(width * 0.03),
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 4, offset: Offset(0, 2)),
        ],
      ),
      child: Column(
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: width * 0.04,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: width * 0.02),
          icon != null
              ? Icon(icon, color: valueColor, size: width * 0.08)
              : Text(
            value,
            style: TextStyle(
              color: valueColor,
              fontSize: width * 0.045,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  // Transaction Card Widget
  Widget _transactionCard(BuildContext context,
      {required String date, required String amount}) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.all(width * 0.04),
      decoration: BoxDecoration(
        color: Colors.purple.shade50,
        borderRadius: BorderRadius.circular(width * 0.03),
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 4, offset: Offset(0, 2)),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Top Row: Order Total + Amount
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Order Total Amount",
                style: TextStyle(
                  fontSize: width * 0.04,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                amount,
                style: TextStyle(
                  fontSize: width * 0.04,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(height: width * 0.03),

          // Bottom Row: Date + Wallet & Approved labels
          Row(
            children: [
              Text(
                date,
                style: TextStyle(
                  fontSize: width * 0.035,
                  color: Colors.black54,
                ),
              ),
              SizedBox(width: width * 0.03),
              _statusLabel(context, "Wallet", Colors.blue.shade100),
              SizedBox(width: width * 0.02),
              _statusLabel(context, "Approved", Colors.green.shade100),
            ],
          ),
        ],
      ),
    );
  }

  // Small status labels (Wallet / Approved)
  Widget _statusLabel(BuildContext context, String text, Color bgColor) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: width * 0.03,
        vertical: width * 0.015,
      ),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(width * 0.02),
      ),
      child: Text(
        text,
        style: TextStyle(
          fontSize: width * 0.03,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
