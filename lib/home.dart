import 'package:flutter/material.dart';
// import 'package:flutter_application_2/groups.dart';
import 'package:stacked/stacked.dart';
import 'package:flutter_application_2/viewmodel/groups.dart';

class HomeScreen extends StatelessWidget {
  final IdolModel model;
  HomeScreen(this.model);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: CustomAppBar(
        //   showLogo: false,
        //   titleText: 'View Attendance',
        // ),
        appBar: AppBar(
          title: Text('Johnny\'s Entertainment'),
          centerTitle: true,
        ),
        body: ViewModelBuilder < IdolModel > .reactive(
          viewModelBuilder: () => IdolModel(),
          onModelReady: (model) {
            model.getAllIdol();
          },
          builder: (context, model, _) {
            return model.isBusy ?
              Container(
                child: Center(child: CircularProgressIndicator()),
              ) :
              model.group.length <= 0 ?
              Text("No data") :
              GridView.count(
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
                  ]
              );
          }),
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
