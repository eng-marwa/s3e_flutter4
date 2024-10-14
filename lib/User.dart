class User {
  String name;
  String email;
  String phone;

  User(this.name, this.email, this.phone);

  //convert user object to Map
  Map<String, dynamic> toMap() =>
      {'name': name, 'email': email, 'phone': phone};

  //convert Map to user object
  factory User.fromMap(Map<String, dynamic> map) {
    return User(map['name'], map['email'], map['phone']);
  }
}
