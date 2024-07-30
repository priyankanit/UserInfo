class Info{
  final int id;
  final String name;
  final String username;
  final String email;
  //final String address;
  final String phone;
  final String website;
  //final String company;

  Info({
    required this.id, 
    required this.name, 
    required this.username, 
    required this.email, 
    //required this.address, 
    required this.phone, 
    required this.website, 
    //required this.company
    });

    factory Info.fromJson(Map<String, dynamic> json){
      return Info(
        id: json['id'], 
        name: json['name'], 
        username: json['username'], 
        email: json['email'], 
        //address: json['address'], 
        phone: json['phone'], 
        website: json['website'], 
        //company: json['company'],
        );
    }

    Map<String, dynamic>toJson(){
      return {
        'id': id,
        'name': name,
        'username': username,
        'email': email,
        //'address': address,
        'phone': phone,
        'website': website,
        //'company': company,
      };
    }
}