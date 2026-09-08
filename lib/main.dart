import 'package:faisal_alanazi_proj1/screens/splash/splash_screen.dart';
import 'package:faisal_alanazi_proj1/service/database.dart';

import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: 'https://limvieaorumriikaffvq.supabase.co',
    publishableKey: 'sb_publishable_MXqb_RcVSmOXHIuQTQgGZg_s4Y8Hwun',
  );
// Database().inset() ; 
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: SplashScreen());
  }
}
