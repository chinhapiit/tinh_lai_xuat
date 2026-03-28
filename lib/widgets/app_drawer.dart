import 'package:flutter/material.dart';
import '../views/about_view.dart';
import '../views/contact_view.dart';
import '../core/app_theme.dart';
import 'package:url_launcher/url_launcher.dart';

class AppDrawer extends StatelessWidget {
  void openWebsite() async {
    final url = Uri.parse("https://chinhapi.com");
    await launchUrl(url);
  }

  Widget buildItem({
    required IconData icon,
    required String title,
    required VoidCallback onTap,
  }) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      child: ListTile(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        tileColor: AppTheme.card,
        leading: Icon(icon, color: AppTheme.text),
        title: Text(
          title,
          style: TextStyle(
            color: AppTheme.text,
            fontSize: 16,
          ),
        ),
        onTap: onTap,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppTheme.bg, // nền đen
      child: Column(
        children: [

          // 🔥 Header iOS style
          Container(
            width: double.infinity,
            padding: EdgeInsets.fromLTRB(20, 50, 20, 20),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  AppTheme.primary,
                  Colors.deepOrange,
                ],
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.account_circle,
                    size: 50, color: Colors.white),
                SizedBox(height: 10),
                Text(
                  "Nguyễn Chính",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "chinhapiit@gmail.com",
                  style: TextStyle(color: Colors.white70),
                ),
              ],
            ),
          ),

          SizedBox(height: 10),

          // 📋 Menu items
          buildItem(
            icon: Icons.home,
            title: "Trang chủ",
            onTap: () {
              Navigator.pop(context);
            },
          ),

          buildItem(
            icon: Icons.info,
            title: "Giới thiệu",
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => AboutView()),
              );
            },
          ),

          buildItem(
            icon: Icons.contact_mail,
            title: "Liên hệ",
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => ContactView()),
              );
            },
          ),

          buildItem(
            icon: Icons.language,
            title: "Website",
            onTap: openWebsite,
          ),
        ],
      ),
    );
  }
}