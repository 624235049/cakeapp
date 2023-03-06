import 'dart:convert';

CakerecommenModel cakerecommenModelFromJson(String str) => CakerecommenModel.fromJson(json.decode(str));

String cakerecommenModelToJson(CakerecommenModel data) => json.encode(data.toJson());

class CakerecommenModel {
    CakerecommenModel({
        this.cakerecommens,
    });

    List<Cakerecommen> cakerecommens;

    factory CakerecommenModel.fromJson(Map<String, dynamic> json) => CakerecommenModel(
        cakerecommens: List<Cakerecommen>.from(json["cakerecommens"].map((x) => Cakerecommen.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "cakerecommens": List<dynamic>.from(cakerecommens.map((x) => x.toJson())),
    };
}

class Cakerecommen {
    Cakerecommen({
        this.rmId,
        this.rmImge,
        this.rmPirec,
    });

    String rmId;
    String rmImge;
    String rmPirec;

    factory Cakerecommen.fromJson(Map<String, dynamic> json) => Cakerecommen(
        rmId: json["rm_id"],
        rmImge: json["rm_imge"],
        rmPirec: json["rm_pirec"],
    );

    Map<String, dynamic> toJson() => {
        "rm_id": rmId,
        "rm_imge": rmImge,
        "rm_pirec": rmPirec,
    };
}