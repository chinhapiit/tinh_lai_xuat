import '../models/finance_model.dart';
import '../services/finance_service.dart';

class FinanceController {
  final FinanceService _service = FinanceService();

  String calculate(FinanceModel model) {
    if (model.principal <= 0 || model.monthlyRate <= 0) {
      return "Dữ liệu không hợp lệ!";
    }

    final years = _service.calculateYearsToDouble(model.monthlyRate);

    return "Cần ${years.toStringAsFixed(2)} năm để tiền gấp đôi";
  }
}