import 'package:flutter/material.dart';
import 'package:hk_police/widgets/custom_appbar.dart';


class HelpScreen extends StatelessWidget {
  const HelpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(title: 'Help'),
    );
  }
}