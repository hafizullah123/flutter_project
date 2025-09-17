import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SharePage(),
    );
  }
}

class SharePage extends StatelessWidget {
  const SharePage({super.key});

  void _shareWithFriend() {
    Share.share(
      'سلام 👋 این اپلیکیشن درمان را دانلود کن:\nhttps://example.com/app',
      subject: 'اپلیکیشن درمان',
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("اشتراک با دوستان"),
        backgroundColor: const Color(0xFF1DC39D),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton.icon(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF1DC39D),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          icon: const Icon(Icons.share, color: Colors.white),
          label: const Text(
            "اشتراک با دوستان",
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
          onPressed: _shareWithFriend,
        ),
      ),
    );
  }
}
