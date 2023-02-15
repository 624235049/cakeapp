class CartModel {
  int id;
  String cake_id;
  String cake_type;
  String cake_size;
  String cake_date;
  String cake_taxt;
  String price;
  String amount;
  String sum;
  String distance;
  String transport;

  CartModel(
      {this.id,
      this.cake_id,
      this.cake_type,
      this.cake_size,
      this.cake_date,
      this.cake_taxt,
      this.price,
      this.amount,
      this.sum,
      this.distance,
      this.transport
      });

  CartModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    cake_id = json['cake_id'];
    cake_type = json['cake_type'];
    cake_size = json['cake_size'];
    cake_date = json['cake_date'];
    price = json['price'];
    amount = json['amount'];
    sum = json['sum'];
    distance = json['distance'];
    transport = json['transport'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['cake_id'] = this.cake_id;
    data['cake_type'] = this.cake_type;
    data['cake_size'] = this.cake_size;
    data['cake_date'] = this.cake_date;
    data['cake_taxt'] = this.cake_taxt;
    data['price'] = this.price;
    data['amount'] = this.amount;
    data['sum'] = this.sum;
    data['distance'] = this.distance;
    data['transport'] = this.transport;
    return data;
  }
}