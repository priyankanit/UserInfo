import 'package:flutter/material.dart';
import 'package:userinfo_assignment/models/info.dart';
import 'package:userinfo_assignment/pages/userinfodetailpage.dart';

class UserListItem extends StatelessWidget {
  final Info user;
  const UserListItem({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical:8, horizontal: 16),
      elevation: 4,
      child: ListTile(
        contentPadding: const EdgeInsets.all(16),
        leading: CircleAvatar(
          backgroundColor: Colors.purple,
          child: Text(user.name[0], style: const TextStyle(color:Colors.white, fontWeight: FontWeight.bold ),),
        ),
        title: Text(user.name, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
        subtitle: Text(user.email, style: TextStyle(color: Colors.grey[600]),),
        onTap: (){
          //print('Info tapped: ${user.name}');
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=> UserInfoDetailPage(user: user),
          ),
          );
        },
      ),
    );
  }
}