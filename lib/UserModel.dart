class UserModel {
  String? uid;
  String? email;
  String? mobno;
  String? password;
  String? gender;
  String? dob;
  String? hobby;

  UserModel(
      {this.uid,
      this.email,
      this.mobno,
      this.password,
      this.gender,
      this.hobby,
      this.dob});

  UserModel.fromMap(Map<String, dynamic> map) {
    uid = map["uid"];
    email = map["email"];
    mobno = map["mobno"];
    password = map["password"];
    gender = map["gender"];
    hobby = map["hobby"];
    dob = map["dob"];
  }

  Map<String, dynamic> toMap() {
    return {
      "uid": uid,
      "email": email,
      "mobno": mobno,
      "password": password,
      "gender": gender,
      "hobby": hobby,
      "dob": dob,
    };
  }
}
