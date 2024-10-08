class Login {
  int? code;
  bool? status;
  String? token;
  int? userID;
  String? userEmail;

  Login({
    this.code,
    this.status,
    this.token,
    this.userID,
    this.userEmail,
  });

  factory Login.fromJson(Map<String, dynamic> obj) {
    return Login(
      code: int.tryParse(obj['code'].toString()),
      status: obj['status'],
      token: obj['data']['token'],
      userID: int.tryParse(obj['data']['user']['id'].toString()),
      userEmail: obj['data']['user']['email'],
    );
  }
}
