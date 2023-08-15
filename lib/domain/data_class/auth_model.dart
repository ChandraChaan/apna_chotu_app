class AuthModel {
  var error;
  String? responseOther;
  var results;

  AuthModel({this.results, this.error, this.responseOther});

  static AuthModel fromJson(json) => AuthModel(
      results: json['user_data'],
      responseOther: json['status'],
      error: json['message']);

  static AuthModel withError(error) =>
      AuthModel(results: null, responseOther: null, error: error);

  static AuthModel fromJsonError(json) => AuthModel(
      results: null,
      responseOther: json['message'],
      error: json['message']);
}
