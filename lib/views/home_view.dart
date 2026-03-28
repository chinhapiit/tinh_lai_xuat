import 'package:flutter/material.dart';
import '../controllers/finance_controller.dart';
import '../models/finance_model.dart';
import '../widgets/app_drawer.dart';

class HomeView extends StatefulWidget {
  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final moneyController = TextEditingController();
  final rateController = TextEditingController();
  final controller = FinanceController();

  String result = "";

  void handleCalculate() {
    final model = FinanceModel(
      principal: double.tryParse(moneyController.text) ?? 0,
      monthlyRate: (double.tryParse(rateController.text) ?? 0) / 100,
    );

    setState(() {
      result = controller.calculate(model);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      drawer: AppDrawer(),
      appBar: AppBar(
        title: Text(
          "Máy Tính Lãi",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.white),

        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFFFF9500),
                Colors.deepOrange,
              ],
            ),
          ),
        ),
      ),

      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [

            // 💰 Display kiểu iOS
            Container(
              alignment: Alignment.centerRight,
              padding: EdgeInsets.all(20),
              child: Text(
                result.isEmpty ? "0" : result,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.w300,
                ),
                textAlign: TextAlign.right,
              ),
            ),

            SizedBox(height: 20),

            // 💳 Input Card
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Color(0xFF1C1C1C), // xám đậm iOS
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [

                  // Số tiền
                  TextField(
                    controller: moneyController,
                    style: TextStyle(color: Colors.white),
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: "Số tiền",
                      labelStyle: TextStyle(color: Colors.grey),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                    ),
                  ),

                  SizedBox(height: 15),

                  // Lãi suất
                  TextField(
                    controller: rateController,
                    style: TextStyle(color: Colors.white),
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: "Lãi suất năm (%)",
                      labelStyle: TextStyle(color: Colors.grey),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 30),

            // 🔘 Nút iOS style
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: handleCalculate,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFFF9500), // cam iOS
                  padding: EdgeInsets.symmetric(vertical: 18),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: Text(
                  "TÍNH TOÁN",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            SizedBox(height: 20),

            // 📊 Kết quả phụ
            if (result.isNotEmpty)
              Text(
                "Kết quả hiển thị phía trên",
                style: TextStyle(color: Colors.grey),
              )
          ],
        ),
      ),
    );
  }
}