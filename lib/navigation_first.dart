import 'package:flutter/material.dart';
import 'package:books/navigation_second.dart';

class NavigationFirst extends StatefulWidget {
  const NavigationFirst({super.key});

  @override
  State<NavigationFirst> createState() => _NavigationFirstState();
}

class _NavigationFirstState extends State<NavigationFirst> {
  Color color = const Color.fromARGB(255, 196, 99, 136);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      appBar: AppBar(
        title: const Text('Annisa Tri Amalia'),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              _navigateAndGetColor(context);
            },
            child: const Text('Change Color')),
      ),
    );
  }

   Future _navigateAndGetColor(BuildContext context) async {
    color = await Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const NavigationSecond()),) ??
        const Color.fromARGB(255, 255, 68, 140);
    setState(() {});
  }
}