import 'package:flutter/material.dart';
import 'package:responsive_layout/responsive/desktopView.dart';
import 'package:responsive_layout/responsive/mobileView.dart';
import 'package:responsive_layout/responsive/responsive.dart';
import 'package:responsive_layout/responsive/tabletView.dart';

void main(){
  runApp(ResponsiveApp());
}

class ResponsiveApp extends StatefulWidget {
  const ResponsiveApp({super.key});

  @override
  State<ResponsiveApp> createState() => _ResponsiveAppState();
}

class _ResponsiveAppState extends State<ResponsiveApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:  ThemeData(
        primarySwatch: Colors.red
      ),
      // here call the responsive ui class
      home: ResponsiveUI(
          mobileView: MobileView(),
          tabletView: TabletView(),
          desktopView: DeskTopView()),


    );
  }
}
