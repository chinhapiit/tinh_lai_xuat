import 'package:flutter/material.dart';
import '../core/app_theme.dart';

class AboutView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Giới thiệu")),

      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [

            // 🔷 Logo / Icon
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: AppTheme.card,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Icon(
                    Icons.calculate,
                    size: 60,
                    color: AppTheme.primary,
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Máy Tính Lãi Xuất",
                    style: TextStyle(
                      color: AppTheme.text,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "Phiên bản 1.0",
                    style: TextStyle(color: AppTheme.subText),
                  ),
                ],
              ),
            ),

            SizedBox(height: 20),

            // 📄 Mô tả app
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: AppTheme.card,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(Icons.info, color: AppTheme.primary),
                      SizedBox(width: 10),
                      Text(
                        "Mô tả",
                        style: TextStyle(
                          color: AppTheme.text,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 10),

                  Text(
                    "Ứng dụng giúp tính số năm cần thiết để số tiền ban đầu tăng gấp đôi dựa trên lãi suất hàng năm.",
                    style: TextStyle(
                      color: AppTheme.text,
                      height: 1.5,
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 20),

            // ⚙️ Tính năng
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: AppTheme.card,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(Icons.star, color: AppTheme.primary),
                      SizedBox(width: 10),
                      Text(
                        "Tính năng",
                        style: TextStyle(
                          color: AppTheme.text,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 10),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("• Tính lãi kép nhanh chóng",
                          style: TextStyle(color: AppTheme.text)),
                      Text("• Giao diện đơn giản, dễ dùng",
                          style: TextStyle(color: AppTheme.text)),
                      Text("• Thiết kế hiện đại kiểu iOS",
                          style: TextStyle(color: AppTheme.text)),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}