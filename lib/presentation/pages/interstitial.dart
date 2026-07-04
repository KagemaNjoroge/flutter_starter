import 'package:flutter/material.dart';

class InterstitialPage extends StatelessWidget {
  const InterstitialPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: CircularProgressIndicator.adaptive());
  }
}
