import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: const Text("Profile", style: TextStyle(color: Colors.white)),
        leading: const Icon(Icons.arrow_back, color: Colors.white),
        actions: [
          IconButton(
            icon: const Icon(Icons.support_agent, color: Colors.white),
            onPressed: () {},
          )
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Profile Header
            Row(
              children: [
                const CircleAvatar(
                  radius: 35,
                  backgroundImage: AssetImage('assets/images/myp.jpg'),
                ),
                const SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text("shivani singh",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold)),
                    Text("member since Dec, 2020",
                        style: TextStyle(color: Colors.grey)),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),

            // CRED garage
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: const [
                  Icon(Icons.directions_car, color: Colors.white),
                  SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("get to know your vehicles, inside out",
                            style: TextStyle(color: Colors.white)),
                        Text("CRED garage →",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),

            // Stats
            _buildInfoTile("credit score", "757", refresh: true),
            Divider(color: Colors.grey),
            _buildInfoTile("lifetime cashback", "₹3"),
            Divider(color: Colors.grey),
            _buildInfoTile("bank balance", "check"),
            const SizedBox(height: 24),

            // Rewards & Benefits
            const Text("YOUR REWARDS & BENEFITS",
                style: TextStyle(color: Colors.grey, letterSpacing: 1.2)),
            SizedBox(height: 12),
            _buildInfoTile("cashback balance", "₹0"),
            _buildInfoTile("coins", "26,46,583"),
            _buildInfoTile("win upto Rs 1000", "refer and earn"),
            const SizedBox(height: 24),

            // Transactions & Support
            const Text("TRANSACTIONS & SUPPORT",
                style: TextStyle(color: Colors.grey, letterSpacing: 1.2)),
            SizedBox(height: 12),
            _buildInfoTile("all transactions", "", trailing: Icons.arrow_forward_ios),
          ],
        ),
      ),
    );
  }

  static Widget _buildInfoTile(String title, String value,
      {bool refresh = false, IconData? trailing}) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: Text(title,
          style: const TextStyle(color: Colors.white, fontSize: 16)),
      subtitle: refresh
          ? const Text("REFRESH AVAILABLE",
          style: TextStyle(color: Colors.green, fontSize: 12))
          : null,
      trailing: trailing != null
          ? Icon(trailing, color: Colors.white)
          : Text(value,
          style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16)),
    );
  }
}
