import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late TextEditingController _firstController;
  late TextEditingController _secondController;
  String _firstText = '';

  @override
  void initState() {
    super.initState();
    _firstController = TextEditingController();
    _secondController = TextEditingController();
  }

  @override
  void dispose() {
    _firstController.dispose();
    _secondController.dispose();
    super.dispose();
  }

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("6-amaliy ish"),
          backgroundColor: Colors.blue,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 65,
              backgroundImage: AssetImage("rasm/1.jpg"),
            ),
            SizedBox(height: 12),
            TextField(
              controller: _firstController,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.red,
                hintText: "Matn kiriting✍...",
              ),
              onChanged: (text) {
                setState(() {
                  _firstText = text;
                });
              },
            ),
            SizedBox(height: 12),
            TextField(
              controller: _secondController,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.green,
                hintText: "takrorlanuvchi matn👆...",
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _secondController.text = _firstText;
                });
              },
              child: Text("Yuborish👌"),
            )
          ],
        ),
        bottomNavigationBar: Theme(
          data: ThemeData(canvasColor: Colors.black54),
          child: BottomNavigationBar(
            backgroundColor: Colors.black54,
            iconSize: 24,
            currentIndex: currentIndex,
            onTap: (index) {
              setState(() {
                currentIndex = index;
              });
            },
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home_filled),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.wallet),
                label: "Wallet",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.pie_chart),
                label: "Pie chart",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: "Person",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
