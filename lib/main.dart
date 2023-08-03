import 'package:flutter/material.dart';
import 'package:m2_exam/data/local_data.dart';
import 'package:m2_exam/routes/app_routes.dart';
import 'package:m2_exam/routes/name_routes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  StorageRepository.getInstance();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: AppRoutes.initial,
      routes: NameRoutes.routes,
      //  onGenerateRoute: AppRoutes.generateRoute,
      debugShowCheckedModeBanner: false,
      title: 'm2 exam',
      // home: HomePage(),
    );
  }
}
