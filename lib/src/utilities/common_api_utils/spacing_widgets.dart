import 'package:flutter/material.dart';
import 'size_config.dart';

class VSpace extends StatelessWidget {
  const VSpace(this.height, {super.key});
  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: (height).vdp());
  }
}

class HSpace extends StatelessWidget {
  const HSpace(this.width, {super.key});
  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: (width).hdp());
  }
}
