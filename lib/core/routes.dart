import 'package:go_router/go_router.dart';
import 'package:mobilvizee/screens/core/error.dart';
import 'package:mobilvizee/screens/home.dart';
import 'package:mobilvizee/screens/kullanici/login.dart';
import 'package:mobilvizee/screens/kullanici/profile.dart';
import 'package:mobilvizee/screens/kullanici/register.dart';
import 'package:mobilvizee/screens/product.dart/product.dart';
import 'package:mobilvizee/screens/product.dart/search.dart';
import 'package:mobilvizee/screens/static/about.dart';
import 'package:mobilvizee/screens/static/contact.dart';

final routes = GoRouter(
  errorBuilder: (context, state) => const ErrorScreen(),
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/login',
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      path: '/profile',
      builder: (context, state) => const ProfileScreen(),
    ),
    GoRoute(
      path: '/register',
      builder: (context, state) => const RegisterScreen(),
    ),
    GoRoute(
      path: '/product',
      builder: (context, state) => const ProductScreen(),
    ),
    GoRoute(
      path: '/search',
      builder: (context, state) => const SearchScreen(),
    ),
    GoRoute(
      path: '/about',
      builder: (context, state) => const AboutScreen(),
    ),
    GoRoute(
      path: '/contact',
      builder: (context, state) => const ContactScreen(),
    ),
  ],
);
