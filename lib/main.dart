import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/widgets/bottom_bar.dart';
import 'package:flutter_application_1/constants/global_variables.dart';
import 'package:flutter_application_1/pages/admin/screens/add_product.dart';
import 'package:flutter_application_1/pages/admin/screens/admin.dart';
import 'package:flutter_application_1/pages/admin/screens/post.dart';
import 'package:flutter_application_1/pages/auth/screens/auth_screen.dart';
import 'package:flutter_application_1/pages/auth/services/auth_service.dart';
import 'package:flutter_application_1/pages/home/screens/home_screen.dart';
import 'package:flutter_application_1/provider/user_provider.dart';
import 'package:flutter_application_1/router.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (context) => UserProvider(),
    ),
  ], child: const MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final AuthService authService = AuthService();

  @override
  void initState() {
    super.initState();
    authService.getUserData(context);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ecommerce',
      theme: ThemeData(
        scaffoldBackgroundColor: GlobalVariables.backgroundColor,
        colorScheme: const ColorScheme.light(
          primary: GlobalVariables.secondaryColor,
        ),
        appBarTheme: const AppBarTheme(
          elevation: 0,
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
        ),
      ),
      onGenerateRoute: (settings) => generateRoute(settings),
      home: Provider.of<UserProvider>(context).user.token.isNotEmpty
          ? Provider.of<UserProvider>(context).user.type == 'user'
              ? const BottomBar()
              : const AdminScreen()
          : const AuthScreen(),
    );
  }
}
