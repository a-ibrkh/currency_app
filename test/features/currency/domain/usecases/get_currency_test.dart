import 'package:currency_app/features/currency/domain/entities/currency.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import 'package:currency_app/features/currency/domain/repositories/currency_repository.dart';
import 'package:currency_app/features/currency/domain/usecases/get_currency.dart';

class MockCurrencyRepository extends Mock implements CurrencyRepository {}

void main() {
  late GetCurrency usecase;
  late MockCurrencyRepository mockCurrencyRepository;

  setUp(() {
    mockCurrencyRepository = MockCurrencyRepository();
    usecase = GetCurrency(mockCurrencyRepository);
  });

  const tCurrency = Currency(
    title: "Aqsh Dollari",
    code: "USD",
    nbuSellPrice: "11200",
    nbuBuyPrice: "11230",
    date: "09.09.2021", cbPrice: '11300',
  );

  test(
    'should get currency rate when call is successful',
    () async {
      //arrange
      when(() => mockCurrencyRepository.getCurrency())
          .thenAnswer((_) async => const Right(tCurrency));
      //act
      final result = await usecase();
      //assert

      expect(result, const Right(tCurrency));
      verify(() => mockCurrencyRepository.getCurrency());
      verifyNoMoreInteractions(mockCurrencyRepository);
    },
  );
}
