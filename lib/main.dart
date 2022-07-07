import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'module/splash/splash_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: 'https://sfhdyonjsigvmnotdmxn.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InNmaGR5b25qc2lndm1ub3RkbXhuIiwicm9sZSI6ImFub24iLCJpYXQiOjE2NTcxMDA4MjQsImV4cCI6MTk3MjY3NjgyNH0._qiEIOA4nzcEdO2JqvkTC4ZK-gVlyNLlP4ewXFM15Y8',
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat With Supabase',
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.blue,
      ),
      home: const SplashPage(),
    );
  }
}
