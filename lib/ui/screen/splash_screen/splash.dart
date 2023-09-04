import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:green_hornet/ui/screen/dashboard_manager_screen/dashboard_manager_screen.dart';
import 'package:green_hornet/ui/widget/icon_and_image.dart';
import 'package:green_hornet/utils/images.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();


    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => DashBoardManagerScreen(),
      ));
    });
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: assetSvdImageWidget(image: DefaultImages.appleIcn, height: 100),
      ),
    );
  }
}

// class Splash extends StatefulWidget {
//   const Splash({super.key});
//
//   @override
//   State<Splash> createState() => _SplashState();
// }
//
// class _SplashState extends State<Splash> {
//
//   _navigateToDashBoard() async {
//     await Future.delayed(Duration(seconds: 10),(){});
//     Navigator.pushReplacement(context, MaterialPageRoute(
//         builder: (context) => DashBoardManagerScreen()));
//   }
//
//   @override
//   void initState() {
//     _navigateToDashBoard();
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body : Center(
//         child: Container(
//           child: Text('Splash Screen',
//           style: TextStyle(
//             fontSize: 24,
//             fontWeight: FontWeight.bold
//           ),),
//
//         ),
//       )
//     );
//   }
// }
