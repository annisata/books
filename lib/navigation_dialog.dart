import 'package:flutter/material.dart';

class NavigationDialogScreen extends StatefulWidget {
  const NavigationDialogScreen({super.key});

  @override
  State<NavigationDialogScreen> createState() => _NavigationDialogScreenState();
}

class _NavigationDialogScreenState extends State<NavigationDialogScreen> {
  Color color = const Color.fromARGB(255, 196, 99, 136);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      appBar: AppBar(
        title: const Text('Navigation Dialog Screen'),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              _showColorDialog(context);
            },
            child: const Text('change color')),
      ),
    );
  }

  _showColorDialog(BuildContext context) async {
    await showDialog(
        barrierDismissible: false,
        context: context,
        builder: (_) {
          return AlertDialog(
            title: const Text('very important question'),
            content: const Text('Please choose a color'),
            actions: <Widget>[
              TextButton(
                  onPressed: () {
                    color = Colors.red.shade700;
                    Navigator.pop(context, color);
                  },
                  child: const Text('red')),
              TextButton(
                  onPressed: () {
                    color = Colors.green.shade700;
                    Navigator.pop(context, color);
                  },
                  child: const Text('green')),
              TextButton(
                  onPressed: () {
                    color = Colors.blue.shade700;
                    Navigator.pop(context, color);
                  },
                  child: const Text('blue')),
            ],
          );
        });
    setState(() {});
  }
}