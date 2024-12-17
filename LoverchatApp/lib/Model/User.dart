class User {
  String name;
  String email;
  String address;
  String password;
  String gender; // "male" or "female"
  String? partnerEmail;
  String? partnerName;

  User({
    required this.name,
    required this.email,
    required this.address,
    required this.password,
    required this.gender,
    this.partnerEmail,
    this.partnerName,
  });

  // Convert a User object to a Map (for saving to a database or API)
  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'email': email,
      'address': address,
      'password': password,
      'gender': gender,
      'partnerEmail': partnerEmail,
      'partnerName': partnerName,
    };
  }

  // Create a User object from a Map (for retrieving from a database or API)
  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      name: map['name'] ?? '',
      email: map['email'] ?? '',
      address: map['address'] ?? '',
      password: map['password'] ?? '',
      gender: map['gender'] ?? '',
      partnerEmail: map['partnerEmail'],
      partnerName: map['partnerName'],
    );
  }

  @override
  String toString() {
    return 'User(name: $name, email: $email, address: $address, gender: $gender, partnerEmail: $partnerEmail, partnerName: $partnerName)';
  }
}
