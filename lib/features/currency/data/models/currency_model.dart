import 'package:currency_app/features/currency/domain/entities/currency.dart';

class CurrencyModel extends Currency {
  const CurrencyModel(
      {required String title,
      required String code,
      required String cbPrice,
      required String nbuSellPrice,
      required String nbuBuyPrice,
      required String date})
      : super(
            title: title,
            cbPrice: cbPrice,
            code: code,
            nbuSellPrice: nbuSellPrice,
            nbuBuyPrice: nbuBuyPrice,
            date: date);
  factory CurrencyModel.fromJson(Map<String, dynamic> json) {
    return CurrencyModel(
        title: json["title"],
        code: json["code"],
        cbPrice: json["cb_price"],
        nbuSellPrice: json["nbu_cell_price"],
        nbuBuyPrice: json["nbu_buy_price"],
        date: json["date"]);
  }

  Map<String, dynamic> toJson() {
    return {
      "title": title,
      "code": code,
      "cb_price": cbPrice,
      "nbu_cell_price": nbuSellPrice,
      "nbu_buy_price": nbuBuyPrice,
      "date": date,
    };
  }
}
