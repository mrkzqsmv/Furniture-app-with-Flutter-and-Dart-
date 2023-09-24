import 'package:flutter/material.dart';
import 'package:furniture_app/models/phone.dart';

class PhoneDetailPage extends StatefulWidget {
  final Phone phone;
  const PhoneDetailPage({super.key, required this.phone});

  @override
  State<PhoneDetailPage> createState() => _PhoneDetailPageState();
}

class _PhoneDetailPageState extends State<PhoneDetailPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
