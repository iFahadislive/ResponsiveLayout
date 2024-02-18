import 'package:flutter/material.dart';

class ResponsiveUI extends StatelessWidget {

  final Widget mobileView;
  final Widget tabletView;
  final Widget desktopView;

  ResponsiveUI({
    required this.mobileView,
    required this.tabletView,
    required this.desktopView,
});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context, constraints){
          if(constraints.maxWidth < 600){
            return mobileView;
          }
          else if(constraints.maxWidth < 800){
            return tabletView;
          }
          else{
            return desktopView;
          }
        }
    );
  }
}
