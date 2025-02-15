import 'package:flutter/material.dart';
import 'package:novely/screens/home.dart';

void main() {
  runApp(const Splash());
}

void setState(Null Function() param0) {}

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  // var splash = 'assets/splash.gif';

  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(const Duration(milliseconds: 2500), () {});
    Navigator.pushReplacement(
         context, MaterialPageRoute(builder: (context) => const Home_Page())
        );
  }

  @override
  build(context) {
    return MaterialApp(
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.system,
      home: const Scaffold(
          body: Padding(
              padding: EdgeInsets.all(16),
              child: Center(
                // mainAxisAlignment: MainAxisAlignment.center,
                child:
                    // Container(height: 10),
                    Text("NOVELY"),
              ))),
      debugShowCheckedModeBanner: false,
    );
  }

  State<StatefulWidget> createState() => throw UnimplementedError();
}