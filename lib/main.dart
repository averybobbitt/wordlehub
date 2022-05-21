// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:js/js.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

// Driver
void main() => runApp(const App());

// App
// TODO: WebView doesn't support JS(?) thus breaking games
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
          leading: IconButton(
            icon: Icon(Icons.stacked_bar_chart),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => Statistics()),
              );
            },
          ),
        ),
        body: ListView(children: [
          game(context, "TEST", TestGame()),
          game(context, "wordle", Wordle()),
          game(context, "dordle", Dordle()),
          game(context, "quordle", Quordle()),
          game(context, "octordle", Octordle()),
          game(context, "sedecordle", Sedecordle()),
          game(context, "lewdle", Lewdle()),
          game(context, "heardle", Heardle()),
          game(context, "squirdle", Squirdle()),
          game(context, "nerdle", Nerdle()),
          game(context, "drugdle", Drugdle()),
          game(context, "sweardle", Sweardle()),
          game(context, "worldle", Worldle()),
          game(context, "globle", Globle()),
          game(context, "hogwartle", Hogwartle())
        ]));
  }
}

class Statistics extends StatelessWidget {
  const Statistics({Key? key}) : super(key: key);
  final String title = "Player Statistics";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      // TODO: implement stats
      body: Center(
        child: Text.rich(
          TextSpan(
            children: [
              WidgetSpan(
                  child: Icon(
                Icons.warning_rounded,
                color: Colors.yellow,
              )),
              TextSpan(text: " work in progress "),
              WidgetSpan(
                  child: Icon(
                Icons.warning_rounded,
                color: Colors.yellow,
              )),
            ],
          ),
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

// Game tile (list entry)
// TODO: define generic game constructor here (ret: StatelessWidget)
ListTile game(BuildContext context, String title, Widget newGame) {
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

// TEST GAME
class TestGame extends StatelessWidget {
  const TestGame({Key? key}) : super(key: key);
  final String title = "test game";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: const WebView(
        initialUrl: 'https://bobbitt.dev',
      ),
    );
  }
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
        initialUrl: 'https://www.nytimes.com/games/wordle',
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
        initialUrl: 'https://zaratustra.itch.io/dordle',
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
        initialUrl: 'https://www.quordle.com/#/',
      ),
    );
  }
}

// Octordle
class Octordle extends StatelessWidget {
  const Octordle({Key? key}) : super(key: key);
  final String title = "octordle";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: const WebView(
        initialUrl: 'https://octordle.com/',
      ),
    );
  }
}

// Sedecordle
class Sedecordle extends StatelessWidget {
  const Sedecordle({Key? key}) : super(key: key);
  final String title = "sedecordle";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: const WebView(
        initialUrl: 'https://www.sedecordle.com/',
      ),
    );
  }
}

// Lewdle
class Lewdle extends StatelessWidget {
  const Lewdle({Key? key}) : super(key: key);
  final String title = "lewdle";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: const WebView(
        initialUrl: 'https://www.lewdlegame.com/',
      ),
    );
  }
}

// Heardle
class Heardle extends StatelessWidget {
  const Heardle({Key? key}) : super(key: key);
  final String title = "heardle";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: const WebView(
        initialUrl: 'https://www.heardle.app/',
      ),
    );
  }
}

// Squirdle
class Squirdle extends StatelessWidget {
  const Squirdle({Key? key}) : super(key: key);
  final String title = "squirdle";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: const WebView(
        initialUrl: 'https://squirdle.fireblend.com/',
      ),
    );
  }
}

// Nerdle
class Nerdle extends StatelessWidget {
  const Nerdle({Key? key}) : super(key: key);
  final String title = "nerdle";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: const WebView(
        initialUrl: 'https://nerdlegame.com/',
      ),
    );
  }
}

// Drugdle
class Drugdle extends StatelessWidget {
  const Drugdle({Key? key}) : super(key: key);
  final String title = "drugdle";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: const WebView(
        initialUrl: 'https://www.drugdle.com/',
      ),
    );
  }
}

// Sweardle
class Sweardle extends StatelessWidget {
  const Sweardle({Key? key}) : super(key: key);
  final String title = "sordle";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: const WebView(
        initialUrl: 'https://sweardle.com/',
      ),
    );
  }
}

// Worldle
class Worldle extends StatelessWidget {
  const Worldle({Key? key}) : super(key: key);
  final String title = "worldle";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: const WebView(
        initialUrl: 'https://worldle.teuteuf.fr/',
      ),
    );
  }
}

// Globle
class Globle extends StatelessWidget {
  const Globle({Key? key}) : super(key: key);
  final String title = "globle";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: const WebView(
        initialUrl: 'https://globle-game.com/game',
      ),
    );
  }
}

// Hogwartle
class Hogwartle extends StatelessWidget {
  const Hogwartle({Key? key}) : super(key: key);
  final String title = "hogwartle";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: const WebView(
        initialUrl: 'https://www.hogwartsishere.com/hogwartle/',
      ),
    );
  }
}
