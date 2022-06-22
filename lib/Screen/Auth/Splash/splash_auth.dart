import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SplashAuthPage extends StatefulWidget {
  const SplashAuthPage({Key? key}) : super(key: key);

  @override
  State<SplashAuthPage> createState() => _SplashAuthPageState();
}

class _SplashAuthPageState extends State<SplashAuthPage> {
  int time = 3;

  @override
  void initState() {
    super.initState();
    Future.delayed(
      Duration(seconds: time),
      () => Navigator.pushReplacementNamed(context, "/sing_in"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SvgPicture.asset('assets/icons/Logo.svg'),
      ),
    );
  }
}
