import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:star_wars_application/home/main_page.dart';
import 'package:star_wars_application/providers/people_api_provider.dart';
import 'package:star_wars_application/providers/people_provider.dart';
import 'package:star_wars_application/providers/wishlist_provider.dart';

import 'pages/sign_in_page.dart';
import 'pages/sign_up_page.dart';
import 'providers/page_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => PageProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => PeopleProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => WishlistProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => SignInPage(),
          '/sign-up': (context) => SignUpPage(),
          '/home': (context) => MainPage(),
          //'/cart': (context) => CartPage(),
        },
      ),
    );
  }
}
