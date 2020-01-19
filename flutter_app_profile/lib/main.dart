import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo on Profile',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Profile'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String imgurl =
      "https://files.prokerala.com/res/images/news/984051-akkineni-samantha-aadhi-pinisetty-s-film-u-turn-672085_1200.jpg";
  String youtubeUrl =
      "https://www.youtube.com/watch?v=lNGLKCSyPbk&feature=youtu.be";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10.0,
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          widget.title,
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(5.0),
        children: <Widget>[
          Card(
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                children: <Widget>[
                  Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(color: Colors.grey, blurRadius: 5.0)
                        ],
                        borderRadius: BorderRadius.all(Radius.circular(100)),
                        image: DecorationImage(
                            image: NetworkImage(imgurl), fit: BoxFit.cover)),
                  ),
                  SizedBox(height: 15),
                  Text(
                    "Samantha Akkineni",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "Actress",
                    style: TextStyle(fontSize: 16, color: Colors.black54),
                  ),
                  SizedBox(height: 25),
                  Card(
                    child: Padding(
                      padding: EdgeInsets.only(top: 20, bottom: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Text(
                                "9M",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                              Text(
                                "Followers",
                                style: TextStyle(color: Colors.grey),
                              )
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Text(
                                "640",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                              Text(
                                "Following",
                                style: TextStyle(color: Colors.grey),
                              )
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Text(
                                "806",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                              Text(
                                "Posts",
                                style: TextStyle(color: Colors.grey),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Samantha Akkineni",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                              SizedBox(height: 15),
                              Text(
                                "I am better than I was yesterday, \n but not as good as I will be tomorrow",
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                                textAlign: TextAlign.left,
                              ),
                              SizedBox(height: 15),
                              InkWell(
                                child: Text(
                                  "Jaanu Teaser",
                                  style: TextStyle(color: Colors.blue),
                                ),
                                onTap: () {
                                  launch(youtubeUrl);
                                },
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Joined February 2012",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                              SizedBox(height: 15),
                              Text(
                                "706 Photos",
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                                textAlign: TextAlign.left,
                              ),
                              SizedBox(height: 15),
                              Text(
                                "200 Videos",
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                                textAlign: TextAlign.left,
                              ),
                              SizedBox(height: 15),
                              Text(
                                "780M Hearts",
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
