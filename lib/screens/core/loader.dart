import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mobilvizee/core/stroge.dart';

class LoaderScreen extends StatefulWidget {
  const LoaderScreen({super.key});

  @override
  State<LoaderScreen> createState() => _LoaderScreenState();
}

class _LoaderScreenState extends State<LoaderScreen> {
  loadApp() async {
    final storage = Storage();
    final firstLaunch = await storage.isFirstLaunch();
    if (firstLaunch) {
      //tanıtıma gönder
      // ignore: use_build_context_synchronously
      GoRouter.of(context).replace("/boarding");
    } else {
      // ignore: use_build_context_synchronously
      GoRouter.of(context).replace("/home");
    }
  }

  @override
  void initState() {
    super.initState();
    loadApp();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
