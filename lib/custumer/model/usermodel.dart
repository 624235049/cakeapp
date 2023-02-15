class usertable {
  List<CUsertable> cUsertable;

  usertable({this.cUsertable});

  usertable.fromJson(Map<String, dynamic> json) {
    if (json['c_usertable'] != null) {
      cUsertable = <CUsertable>[];
      json['c_usertable'].forEach((v) {
        cUsertable.add(new CUsertable.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.cUsertable != null) {
      data['c_usertable'] = this.cUsertable.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class CUsertable {
  String id;
  String chooseType;
  String name;
  String user;
  String password;
  String phone;
  String address;
  String lat;
  String lng;
  String token;

  CUsertable(
      {this.id,
        this.chooseType,
        this.name,
        this.user,
        this.password,
        this.phone,
        this.address,
        this.lat,
        this.lng,
        this.token});

  CUsertable.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    chooseType = json['chooseType'];
    name = json['Name'];
    user = json['User'];
    password = json['Password'];
    phone = json['Phone'];
    address = json['Address'];
    lat = json['Lat'];
    lng = json['Lng'];
    token = json['Token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['chooseType'] = this.chooseType;
    data['Name'] = this.name;
    data['User'] = this.user;
    data['Password'] = this.password;
    data['Phone'] = this.phone;
    data['Address'] = this.address;
    data['Lat'] = this.lat;
    data['Lng'] = this.lng;
    data['Token'] = this.token;
    return data;
  }
}
