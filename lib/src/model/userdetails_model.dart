class UserDetailsMOdel {
  final int id;
  final String name;
  final Map<String, dynamic> address;
  final String userName;
  final String number;

  UserDetailsMOdel({
    required this.name,
    required this.address,
    required this.userName,
    required this.id,
    required this.number,
  });

  factory UserDetailsMOdel.fromJson(Map<String, dynamic> json) {
    return UserDetailsMOdel(
        name: json['name'],
        address: json['address'],
        userName: json['username'],
        id: json['id'],
        number: json['phone']);
  }
}
