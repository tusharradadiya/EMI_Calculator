import 'dart:js';

import 'package:emi/emi.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => Emi_calculator(),
      },
    ),
  );
}
