import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:personal_info/screens/home.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    DevicePreview(
      enabled: true,
      tools: const [
        ...DevicePreview.defaultTools,
      ],
      builder: (context) => const IDcard(), // Wrap your app
    ),
  );
}

final Logger console = Logger();
