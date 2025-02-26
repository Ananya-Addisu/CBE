import 'package:CBE_CLONE/constants/App_Colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:CBE_CLONE/splash_screen.dart';

// Define a custom Sizer widget
class Sizer extends StatefulWidget {
  final Widget Function(BuildContext, Orientation, DeviceType) builder;
  const Sizer({Key? key, required this.builder}) : super(key: key);

  @override
  _SizerState createState() => _SizerState();
}

class _SizerState extends State<Sizer> {
  @override
  Widget build(BuildContext context) {
    // Determine orientation
    Orientation orientation = MediaQuery.of(context).orientation;
    // You would typically implement logic here to determine the device type
    // For simplicity, I'm using a placeholder enum
    DeviceType deviceType = DeviceType.mobile;
    // Call the builder function with orientation and device type
    return widget.builder(context, orientation, deviceType);
  }
}

// Define an enum for DeviceType
enum DeviceType {
  mobile,
  tablet,
}

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (BuildContext context, Orientation orientation,
          DeviceType deviceType) {
        // You can use orientation and deviceType to customize your UI accordingly
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Clone CBE',
          theme: ThemeData(
            backgroundColor: AppColors.whitelight,
            visualDensity: VisualDensity.adaptivePlatformDensity),
          // home: Scaffold(
          //   appBar: AppBar(
          //     title: Text('Your App'),
          //   ),
          //   body: Center(
          //     child: Text('Hello, World!'),
          //   ),
          // ),
          home: const SplashScreen(),
          // home: const HomeScreen(),
        );
      },
    );
  }
}
