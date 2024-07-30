import 'package:flutter/foundation.dart';
import 'package:userinfo_assignment/data/userdata.dart';
import 'package:userinfo_assignment/models/info.dart';

class UserInfoProvider with ChangeNotifier{
  List<Info> _userinfo = [];
  List<Info> _filteredUsers = [];
  bool _isLoading = false;
  String? _errorMessage;

  List<Info>get userinfo => _userinfo;
  List<Info>get filteredUsers => _filteredUsers;
  bool get isLoading => _isLoading;
  String? get errorMessage => _errorMessage;

  UserInfoProvider(){
    fetchInfo();
  }
  Future<void> fetchInfo() async {
    _isLoading = true;
    _errorMessage = null;
    notifyListeners();

    try{
      _userinfo = await UserData().fetchInfo();
    }catch(e){
      if(kDebugMode){
        print(e);
      }
    }
   
    _isLoading = false;
    notifyListeners();
   }
    

void searchUsers(String query){
  if(query.isEmpty){
    _filteredUsers = _userinfo;
  } else{
    _filteredUsers = _userinfo.where((user){
      return user.name.toLowerCase().contains(query.toLowerCase());
    }).toList();
  }
  notifyListeners();
}
}
  
