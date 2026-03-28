// services/finance_service.dart
import 'dart:math';

class FinanceService {
  double calculateYearsToDouble(double yearlyRate) {
    return log(2) / log(1 + yearlyRate);
  }
}