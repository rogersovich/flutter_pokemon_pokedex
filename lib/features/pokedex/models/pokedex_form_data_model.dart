class FormDataModel {
  String name;
  String? email;
  String? password;

  FormDataModel({required this.name, this.email, this.password});

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'email': email,
      'password': password,
    };
  }
}
