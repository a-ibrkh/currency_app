import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class Currency extends Equatable {
  final String title;
  final String code;
  final String cbPrice;
  final String nbuSellPrice;
  final String nbuBuyPrice;
  final String date;

  const Currency(
      {required this.title,
      required this.code,
      required this.cbPrice,
      required this.nbuSellPrice,
      required this.nbuBuyPrice,
      required this.date});

  @override
  List<Object> get props {
    return [
      title,
      code,
      cbPrice,
      nbuSellPrice,
      nbuBuyPrice,
      date,
    ];
  }
}
