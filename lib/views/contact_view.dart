import 'package:flutter/material.dart';
import '../core/app_theme.dart';

class ContactView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Liên hệ")),

      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [

            // 📇 Card thông tin
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: AppTheme.card,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [

                  // 👤 Avatar
                  CircleAvatar(
                    radius: 40,
                    backgroundColor: AppTheme.primary,
                    child: Icon(
                      Icons.person,
                      size: 40,
                      color: Colors.white,
                    ),
                  ),

                  SizedBox(height: 15),

                  // 🧑 Tên
                  Text(
                    "Chính Nguyễn",
                    style: TextStyle(
                      color: AppTheme.text,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(height: 5),

                  // 📧 Email
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.email, color: AppTheme.primary),
                      SizedBox(width: 8),
                      Text(
                        "chinhapiit@gmail.com",
                        style: TextStyle(
                          color: AppTheme.text,
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 10),

                  // 📱 SĐT (fake cho đẹp 😎)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.phone, color: AppTheme.primary),
                      SizedBox(width: 8),
                      Text(
                        "0388674883",
                        style: TextStyle(color: AppTheme.text),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            SizedBox(height: 30),

            // 🔘 Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.email),
                label: Text("Gửi Email"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppTheme.primary,
                  padding: EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}