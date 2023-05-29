import 'package:flutter/material.dart';
import 'package:hk_police/widgets/custom_appbar.dart';

class TermsScreen extends StatelessWidget {
  const TermsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(title: 'Terms & Conditions'),
    )
    ;
  }
}