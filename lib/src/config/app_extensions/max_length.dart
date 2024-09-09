import 'package:flutter/material.dart';

extension MaxLength on BuildContext {
  double maxWidth() {
    return MediaQuery.sizeOf(this).width;
  }
  double maxHeight() {
    return MediaQuery.sizeOf(this).height;
  }
}
