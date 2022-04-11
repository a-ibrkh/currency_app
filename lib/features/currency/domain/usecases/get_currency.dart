import 'package:currency_app/core/error/failures.dart';
import 'package:currency_app/features/currency/domain/entities/currency.dart';
import 'package:currency_app/features/currency/domain/repositories/currency_repository.dart';
import 'package:dartz/dartz.dart';

class GetCurrency {
  final CurrencyRepository repository;

  GetCurrency(this.repository);

  Future<Either<FailureImpl, Currency>> call() async {
    return await repository.getCurrency();
  }
}
