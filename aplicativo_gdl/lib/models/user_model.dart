class User {
  String? name;
  String? email;
  String? senha;

  User({this.name, this.email, this.senha});

  User.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    email = json['email'];
    senha = json['senha'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['email'] = this.email;
    data['senha'] = this.senha;
    return data;
  }
}
