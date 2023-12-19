import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color.fromARGB(255, 247, 116, 107),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.black,
        ),
      ),
      home: const MyHomePage(title: 'iPhone 14 - 3'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/figma final.png', // Replace with your image path
            fit: BoxFit.cover, // Cover the entire area
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Your content here',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24.0,
                        ),
                      ),
                      // Other widgets or content here
                    ],
                  ),
                ),
              ),
              Container(
                color: Color.fromARGB(255, 251, 125,
                    116), // Set the background color of the footer to red
                height: 60.0, // Set the height of the footer
                child: Center(
                  child: ElevatedButton(
                    onPressed: () {
                      // Action for the "Get Started" button
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue,
                      minimumSize: Size(80.0, 30.0), // Make the button smaller
                    ),
                    child: Text(
                      'Get Started',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12.0, // Reduce the text size
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
