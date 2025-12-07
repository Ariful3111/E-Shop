import 'package:flutter/material.dart';

class CustomScaffold extends StatelessWidget {
  final PreferredSizeWidget? appbar;
  final Widget child;
  final Widget ?drawer;
  final Widget ?bottomNav;
  final Color ?scaffoldBG;
  final Color ?bgColor;
  final LinearGradient ?gradient;
  final double ?height;
  final double ?width;
  final EdgeInsets ?padding;
  final EdgeInsets ?margin;
  const CustomScaffold({super.key, this.appbar, required this.child, this.drawer, this.bottomNav, this.scaffoldBG, this.bgColor, this.gradient, this.height, this.width, this.padding, this.margin});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar,
      drawer: drawer,
      backgroundColor: scaffoldBG,
      body: Container(
        padding: padding,
        margin: margin,
        height: height,
        width: width,
        decoration: BoxDecoration(
          gradient: gradient,
        ),
        child: SafeArea(child: child),
      ),
      bottomNavigationBar: bottomNav,
    );
  }
}