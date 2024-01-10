import 'package:bmicalcul/main.dart';
import 'package:flutter/material.dart';


class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(
      Duration(seconds: 4),
          () {},
    );
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => Wacall()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white60,
      body: Center(
        child: Image(
          fit: BoxFit.fill,
          image: AssetImage(
            'images/bmiima.jpeg',
          ),
        ),
      ),
    );
  }
}
