import 'package:flutter/material.dart';

void main() {
  runApp(LocalStorageApp());
}

class LocalStorageApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Local Storage',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: LocalStorageScreen(),
    );
  }
}

class LocalStorageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Empty state message when there are no time entries
    return Scaffold(
      appBar: AppBar(title: Text("Local Storage")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.hourglass_empty, size: 100, color: Colors.grey),
            SizedBox(height: 20),
            Text(
              "No time entries found.",
              style: TextStyle(fontSize: 18, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
