import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:personal_portfolio/green.dart';
import 'package:personal_portfolio/red.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Unilinking',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
     routerConfig: goRouter,
    );
  }
}

final goRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const Green(),
      routes: [
        GoRoute(
          path: 'details/:itemId',
          builder: (context, state) =>
              Details(id: state.pathParameters['itemId']!),
        )
      ],
    )
  ],
);

class InitialScreen extends StatelessWidget {
  const InitialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color:  Colors.white,
    );
  }
}
