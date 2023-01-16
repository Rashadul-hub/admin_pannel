import 'dart:math';

import 'package:flutter/material.dart';

//For Users by Devices
// Custom Color Circle Status

class RadialPainter extends CustomPainter {
  const RadialPainter(
      {required this.bgColor,
      required this.lineColor,
      required this.percent,
      required this.width});

  final Color bgColor;
  final Color lineColor;
  final double percent;
  final double width;

