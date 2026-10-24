import 'package:flutter/material.dart';
import 'core/di/injection_container.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  await di.init(); 
  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Course Platform',
      home: Scaffold(
        appBar: AppBar(title: const Text('Training Platform')),
      ),
    );
  }
}