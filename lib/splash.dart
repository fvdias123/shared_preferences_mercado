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
    
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => home()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
        backgroundColor: Theme.of(context).colorScheme.outline,
      
      
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           
            Image.asset(
              'assets/imagem/imagem1',
              width: 200, 
            ),
            Text('CEOS',style: TextStyle(fontWeight: FontWeight.bold )),           
            SizedBox(height: 20), 
            CircularProgressIndicator( 
              valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
            ),
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
        title: Text(''),
      ),
      body: Center(
        child: Text(
          '!',
          style: TextStyle(fontSize: 24.0),
        ),
      ),
    );
  }
}