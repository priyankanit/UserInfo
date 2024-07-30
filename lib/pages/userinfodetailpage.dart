import 'package:flutter/material.dart';
import 'package:userinfo_assignment/models/info.dart';

class UserInfoDetailPage extends StatelessWidget {
  final Info user;
  const UserInfoDetailPage({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    //print('UserinfoDetailPage received user: ${user.name}');
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple.shade400,
        title: Text(user.name),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           Center(
              child: CircleAvatar(
                radius: 50,
                backgroundColor: Colors.purple,
                child: Text(
                  user.name[0],
                  style: const TextStyle(
                    fontSize: 40,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Text(
              user.name,
              style: const TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),
           const  Divider(color: Colors.purple),
            const SizedBox(height: 10),
            buildDetailItem(Icons.person, 'Username', user.username),
            buildDetailItem(Icons.email, 'Email', user.email),
            buildDetailItem(Icons.phone, 'Phone', user.phone),
            buildDetailItem(Icons.web_asset_rounded, 'Website', user.website),
          ],
        ),
        ),
      ),
    );
  }
   Widget buildDetailItem(IconData icon, String title, String detail) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: Colors.purple),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const  TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  detail,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey[700],
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
