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
      body: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: < Widget > [
            Container(
              alignment: Alignment.topCenter,
              decoration: BoxDecoration(
                color: Colors.black,
              ),
              child: GestureDetector(
                child: Column(children: < Widget > [
                  Image(image: AssetImage("images/arashi.jpg")),
                  Container(
                    margin: const EdgeInsets.only(top: 25.0),
                      child: Text(
                        'Arashi',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20),
                      )
                  ),
                ]),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) => DetailScreen("images/arashi.jpg"),
                  ));
                },
              ),
            ),
            Container(
              alignment: Alignment.topCenter,
              decoration: BoxDecoration(
                color: Colors.black,
              ),
              child: GestureDetector(
                child: Column(children: < Widget > [
                  Image(image: AssetImage("images/kinpuri.jpg")),
                  Container(
                    margin: const EdgeInsets.only(top: 25.0),
                      child: Text(
                        'King & Prince',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20),
                      )
                  ),
                ]),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) => DetailScreen("images/kinpuri.jpg"),
                  ));
                },
              ),
            ),
            Container(
              alignment: Alignment.topCenter,
              decoration: BoxDecoration(
                color: Colors.black,
              ),
              child: GestureDetector(
                child: Column(children: < Widget > [
                  Image(image: AssetImage("images/sixtones.jpg")),
                  Container(
                    margin: const EdgeInsets.only(top: 25.0),
                      child: Text(
                        'SixTONES',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20),
                      )
                  ),
                ]),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) => DetailScreen("images/sixtones.jpg"),
                  ));
                },
              ),
            ),
            Container(
              alignment: Alignment.topCenter,
              decoration: BoxDecoration(
                color: Colors.black,
              ),
              child: GestureDetector(
                child: Column(children: < Widget > [
                  Image(image: AssetImage("images/hsj.jpg")),
                  Container(
                    margin: const EdgeInsets.only(top: 25.0),
                      child: Text(
                        'Hey! Say! JUMP',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20),
                      )
                  ),
                ]),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) => DetailScreen("images/hsj.jpg"),
                  ));
                },
              ),
            ),
            Container(
              alignment: Alignment.topCenter,
              decoration: BoxDecoration(
                color: Colors.black,
              ),
              child: GestureDetector(
                child: Column(children: < Widget > [
                  Image(image: AssetImage("images/sexyzone.jpg")),
                  Container(
                    margin: const EdgeInsets.only(top: 25.0),
                      child: Text(
                        'Sexy Zone',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20),
                      )
                  ),
                ]),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) => DetailScreen("images/sexyzone.jpg"),
                  ));
                },
              ),
            ),
            Container(
              alignment: Alignment.topCenter,
              decoration: BoxDecoration(
                color: Colors.black,
              ),
              child: GestureDetector(
                child: Column(children: < Widget > [
                  Image(image: AssetImage("images/snowman.jpg")),
                  Container(
                    margin: const EdgeInsets.only(top: 25.0),
                      child: Text(
                        'Snow Man',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20),
                      )
                  ),
                ]),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) => DetailScreen("images/snowman.jpg"),
                  ));
                },
              ),
            ),
          ],
      ),
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
