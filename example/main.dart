import 'package:flutter/material.dart';
import 'package:one_uikit/one_uikit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'One UI Kit Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('One UI Kit Demo'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ElevatedButton(
              onPressed: () {
                context.showSnackBar(message: 'Success message!');
              },
              child: const Text('Show Success SnackBar'),
            ),
            gapH16,
            ElevatedButton(
              onPressed: () {
                context.showSnackBar(
                  message: 'Error message!',
                  isError: true,
                );
              },
              child: const Text('Show Error SnackBar'),
            ),
            gapH32,
            const Text(
              'Error Widget Example:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            gapH16,
            OneError(
              error: Exception('This is a sample error'),
              stackTrace: StackTrace.current,
            ),
          ],
        ),
      ),
    );
  }
}