import 'package:flutter/material.dart';
import 'package:todoapp/home/view/home_view.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 25, right: 25, bottom: 25, top: 50),
        child: HomeView(),
      ),
    );
  }
}
