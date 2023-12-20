import 'dart:convert';

List<User> userFromJson(String str) => List<User>.from(json.decode(str).map((x) => User.fromJson(x)));

String userToJson(List<User> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class User {
    int id;
    String firstName;
    String lastName;
    String image;
    String email;
    String phone;
    String university;

    User({
        required this.id,
        required this.firstName,
        required this.lastName,
        required this.image,
        required this.email,
        required this.phone,
        required this.university,
    });

    factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        firstName: json["firstName"],
        lastName: json["lastName"],
        image: json["image"],
        email: json["email"],
        phone: json["phone"],
        university: json["university"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "firstName": firstName,
        "lastName": lastName,
        "image": image,
        "email": email,
        "phone": phone,
        "university": university,
    };
}