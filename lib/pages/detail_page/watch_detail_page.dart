import 'package:flutter/material.dart';
import 'package:furniture_app/models/watch.dart';

class WatchDetailPage extends StatefulWidget {
  final Watch watch;
  const WatchDetailPage({super.key, required this.watch});

  @override
  State<WatchDetailPage> createState() => _WatchDetailPageState();
}

class _WatchDetailPageState extends State<WatchDetailPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
