import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../entities/currency.dart';

abstract class CurrencyRepository {
  Future<Either<FailureImpl, Currency>> getCurrency();
}
