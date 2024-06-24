import 'package:flutter/material.dart';

import 'home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Splash Scren',
      theme: ThemeData(
        primarySwatch: Colors.blue,
           ),
      home: SplashScreen(),

    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => home()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           
            Image.asset(
              'assets/imagem/f1.png',
              width: 200, 
            ),
            const Text('Lista Plus',style: TextStyle(fontWeight: FontWeight.bold )),           
            const SizedBox(height: 20), 
          ],
        ),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: const Center(
        child: Text(
          '!',
          style: TextStyle(fontSize: 24.0),
        ),
      ),
    );
  }
}
