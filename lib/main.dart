// ignore_for_file: prefer_const_constructors

import 'dart:js';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() => runApp(const App());

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
            _game("wordle", Wordle()),
            _game("dordle", Dordle()),
            _game("quordle", Quordle())
          ],
        ));
  }

  ListTile _game(String title, Widget newGame) {
    return ListTile(
        leading: Icon(Icons.chevron_right),
        title: Text(title,
            style:
                const TextStyle(fontWeight: FontWeight.normal, fontSize: 20)),
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => newGame),
          );
        });
  }
}

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
