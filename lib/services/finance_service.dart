import 'dart:math';

class FinanceService {
  double TinhNhanh(double yearlyRate) {
    return log(2) / log(1 + yearlyRate);
  }
}