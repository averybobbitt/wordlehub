// ignore_for_file: prefer_const_constructors

import 'dart:js';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

// Driver
void main() => runApp(const App());

// App
class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'wordle hub',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const Home(),
    );
  }
}

// Home
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  final String title = "games";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: ListView(
          children: [
            _game(context, "wordle", Wordle()),
            _game(context, "dordle", Dordle()),
            _game(context, "quordle", Quordle())
          ],
        ));
  }
}

// Game tile (list entry)
ListTile _game(BuildContext context, String title, Widget newGame) {
  // this context workaround is shit
  return ListTile(
      leading: Icon(Icons.chevron_right),
      title: Text(title,
          style: const TextStyle(fontWeight: FontWeight.normal, fontSize: 20)),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => newGame),
        );
      });
}

// Wordle
class Wordle extends StatelessWidget {
  const Wordle({Key? key}) : super(key: key);
  final String title = "wordle";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: const WebView(
        initialUrl: 'https://flutter.dev',
      ),
    );
  }
}

// Dordle
class Dordle extends StatelessWidget {
  const Dordle({Key? key}) : super(key: key);
  final String title = "dordle";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: const WebView(
        initialUrl: 'https://flutter.dev',
      ),
    );
  }
}

// Quordle
class Quordle extends StatelessWidget {
  const Quordle({Key? key}) : super(key: key);
  final String title = "quordle";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: const WebView(
        initialUrl: 'https://flutter.dev',
      ),
    );
  }
}
