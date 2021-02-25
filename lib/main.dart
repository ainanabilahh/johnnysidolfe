import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  HomeScreen({
    Key key
  }): super(key: key);

  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State < HomeScreen > {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("Johnny's Entertainment"),
      ),
      body: Center(
        child: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(20),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 2,
            children: < Widget > [
              AspectRatio(
                aspectRatio: 3 / 3,
                child: GestureDetector(
                  child: Image(image: AssetImage("images/arashi.jpg")),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) => DetailScreen("images/arashi.jpg"),
                    ));
                  },
                ),
              ),
              GestureDetector(
                child: Image(image: AssetImage("images/kinpuri.jpg")),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) => DetailScreen("images/kinpuri.jpg"),
                  ));
                },
              ),
              GestureDetector(
                child: Image(image: AssetImage("images/sixtones.jpg")),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) => DetailScreen("images/sixtones.jpg"),
                  ));
                },
              ),
              GestureDetector(
                child: Image(image: AssetImage("images/hsj.jpg")),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) => DetailScreen("images/hsj.jpg"),
                  ));
                },
              ),
              GestureDetector(
                child: Image(image: AssetImage("images/sexyzone.jpg")),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) => DetailScreen("images/sexyzone.jpg"),
                  ));
                },
              ),
              GestureDetector(
                child: Image(image: AssetImage("images/snowman.jpg")),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) => DetailScreen("images/snowman.jpg"),
                  ));
                },
              ),
            ],
        ),
      )
    );
  }
}

class DetailScreen extends StatelessWidget {
  String url;
  DetailScreen(this.url);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        child: Center(
          child: Hero(
            tag: 'imageHero',
            child: Image(image: AssetImage(this.url))
          ),
        ),
        onTap: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
