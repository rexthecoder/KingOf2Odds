import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:kingof2odds/presentation/core/app_widget.dart';

import 'injection.dart';


void main() {
  configureInjection(Environment.prod);
  runApp(AppWidget());
}
