import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/presentation/product_view_model.dart';
import 'package:untitled/product_view.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple), useMaterial3: true),
      home: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: ChangeNotifierProvider(
          create: (_) => ProductViewModel(),
          builder: (_, __) {
            return const ProductView();
          }
        )
    );
  }
}
