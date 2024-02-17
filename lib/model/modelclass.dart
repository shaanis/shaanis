class UserModel{

  final String? id;
  final String name;
  final String email;
  final String password;
  final String phoneno;
  const UserModel({
    this.id,
    required this.name,
    required this.email,
    required this.password,
    required this.phoneno,
});
  toJson(){
    return {
      "id":id,
      "name":name,
      "email":email,
      "password":password,
      "phoneno":phoneno,
    };
  }


}