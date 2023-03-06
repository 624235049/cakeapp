import 'dart:convert';

CakeNModel cakeNModelFromJson(String str) => CakeNModel.fromJson(json.decode(str));

String cakeNModelToJson(CakeNModel data) => json.encode(data.toJson());

class CakeNModel {
  List<Cakens> cakens;

  CakeNModel({this.cakens});

  CakeNModel.fromJson(Map<String, dynamic> json) {
    if (json['cakens'] != null) {
      cakens = new List<Cakens>();
      json['cakens'].forEach((v) {
        cakens.add(new Cakens.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.cakens != null) {
      data['cakens'] = this.cakens.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Cakens {
  int cnId;
  String cnPrice;
  String cnImages;

  Cakens({this.cnId, this.cnPrice, this.cnImages});

  Cakens.fromJson(Map<String, dynamic> json) {
    cnId = json['cn_id'];
    cnPrice = json['cn_price'];
    cnImages = json['cn_images'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['cn_id'] = this.cnId;
    data['cn_price'] = this.cnPrice;
    data['cn_images'] = this.cnImages;
    return data;
  }
}