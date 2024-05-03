import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          actions: [],
          title: Text("6-mustaqil ish"),
          backgroundColor: Colors.green,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 65,
              backgroundImage: AssetImage("rasm/images.jpg"),
            ),
            SizedBox(height: 12),
            TextField(
              decoration: InputDecoration(
                errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.green,
                    width: 2,
                  ),
                ),
                errorText: "Maydonni tuldiring",
              ),
            ),
            SizedBox(height: 12),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                "Jo'natish",
              ),
            )
          ],
        ),
        bottomNavigationBar: Theme(
          data: ThemeData(canvasColor: Colors.yellow),
          child: BottomNavigationBar(
            backgroundColor: Colors.black54,
            fixedColor: Colors.red,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home_filled), label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.wallet), label: "Wallet"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.pie_chart), label: "Pie chart"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: "Person"),
            ],
          ),
        ),
      ),
    );
  }
}
