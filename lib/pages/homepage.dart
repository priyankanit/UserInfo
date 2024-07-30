import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:userinfo_assignment/provider/provider.dart';
import 'package:userinfo_assignment/widgets/userlistitemwidget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});


  @override
  Widget build(BuildContext context) {
    final userInfoProvider = Provider.of<UserInfoProvider>(context);
    TextEditingController searchController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text('User Info'),
        backgroundColor: Colors.purple.shade400,
        elevation: 0,
         bottom: PreferredSize(
          preferredSize: const Size.fromHeight(56.0),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: searchController,
              decoration: InputDecoration(
                hintText: 'Search by name...',
                prefixIcon: IconButton(
                  icon: const Icon(Icons.search),
                  onPressed: (){
                    userInfoProvider.searchUsers(searchController.text);
                  },),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Colors.white,
                contentPadding: const EdgeInsets.all(16.0),
              ),
              // onChanged: (value) {
              //   userInfoProvider.searchUsers(value);
              // },
            ),
          ),
        ),
      ),
      body: userInfoProvider.isLoading ? const Center(
        child: CircularProgressIndicator())
        : userInfoProvider.errorMessage != null
        ? Center(child: 
        Text(userInfoProvider.errorMessage!, style: const TextStyle(color:Colors.red, fontSize: 16),))
        : RefreshIndicator(
          onRefresh: userInfoProvider.fetchInfo,
          child: ListView.builder(
            itemCount: userInfoProvider.userinfo.length,
            itemBuilder: (context, index)  
            {
              final user = userInfoProvider.userinfo[index];
              return UserListItem(user: user);
            },
           
              ),
            ),
            floatingActionButton: FloatingActionButton(onPressed: userInfoProvider.fetchInfo,
            backgroundColor: Colors.purple,
            child: const Icon(Icons.refresh),
            
     
            ),
            );
  }
}