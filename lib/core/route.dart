import 'package:go_router/go_router.dart';
import 'package:mobilvizee/screens/home.dart';
import 'package:mobilvizee/screens/kullanici/login.dart';
import 'package:mobilvizee/screens/kullanici/profile.dart';
import 'package:mobilvizee/screens/kullanici/register.dart';
import 'package:mobilvizee/screens/product.dart/product.dart';
import 'package:mobilvizee/screens/product.dart/search.dart';
import 'package:mobilvizee/screens/static/about.dart';
import 'package:mobilvizee/screens/static/contact.dart';

// GoRouter configuration
final _routes = GoRouter(
  routes: [
    GoRoute(
      path: '/home',
      builder: (context, state) => HomeScreen(),
    ),
    GoRoute(
      path: '/login',
      builder: (context, state) => LoginScreen(),
    ),
    GoRoute(
      path: '/profile',
      builder: (context, state) => ProfileScreen(),
    ),
    GoRoute(
      path: '/register',
      builder: (context, state) => RegisterScreen(),
    ),
    GoRoute(
      path: '/product',
      builder: (context, state) => ProductScreen(),
    ),
    GoRoute(
      path: '/search',
      builder: (context, state) => SearchScreen(),
    ),
    GoRoute(
      path: '/about',
      builder: (context, state) => AboutScreen(),
    ),
    GoRoute(
      path: '/contact',
      builder: (context, state) => ContactScreen(),
    ),
  ],
);
