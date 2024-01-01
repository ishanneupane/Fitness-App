class UserResponse {
  String? sId;
  String? firstname;
  String? lastname;
  String? username;
  int? age;
  String? password;
  String? email;
  int? weight;
  int? height;
  String? gender;
  int? calorieIngested;
  int? stepsWalked;
  int? streaks;
  int? iV;

  UserResponse({
    this.sId,
    this.firstname,
    this.lastname,
    this.username,
    this.age,
    this.password,
    this.email,
    this.weight,
    this.height,
    this.gender,
    this.calorieIngested,
    this.stepsWalked,
    this.streaks,
    this.iV,
  });

  UserResponse.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    firstname = json['firstname'];
    lastname = json['lastname'];
    username = json['username'];
    age = json['age'];
    password = json['password'];
    email = json['email'];
    weight = json['weight'];
    height = json['height'];
    gender = json['gender'];
    calorieIngested = json['calorieIngested'];
    stepsWalked = json['stepsWalked'];
    streaks = json['streaks'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = sId;
    data['firstname'] = firstname;
    data['lastname'] = lastname;
    data['username'] = username;
    data['age'] = age;
    data['password'] = password;
    data['email'] = email;
    data['weight'] = weight;
    data['height'] = height;
    data['gender'] = gender;
    data['calorieIngested'] = calorieIngested;
    data['stepsWalked'] = stepsWalked;
    data['streaks'] = streaks;
    data['__v'] = iV;
    return data;
  }

  @override
  String toString() {
    return 'UserResponse{sId: $sId, firstname: $firstname, lastname: $lastname, username: $username, age: $age, password: $password, email: $email, weight: $weight, height: $height, gender: $gender, calorieIngested: $calorieIngested, stepsWalked: $stepsWalked, streaks: $streaks, iV: $iV}';
  }
}
