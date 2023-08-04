part of 'screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final int duration = 2;
  @override
  void initState() {
    // TODO: implement initState
    Future.delayed(Duration(seconds: duration), () async {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => HomeScreen(),
          ));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.grey1Color(),
      body: Center(
        child: Image.asset(
          'assets/logo.png',
          width: 100,
        ),
      ),
    );
  }
}
