import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,

      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text("Mukund"),
              accountEmail: new Text("mukundrastogixyz@gmail.com"),
              currentAccountPicture: new CircleAvatar(
                backgroundColor: Colors.brown,
                child: new Text("M"),
              ),
              otherAccountsPictures: <Widget>[
                new CircleAvatar(
                  backgroundColor: Colors.amber,
                  child: new Text("P"),
                )
              ],
            ),
            new ListTile(
              leading: new Icon(Icons.home),
              title: new Text("My Home Page"),
              trailing: new Icon(Icons.arrow_forward_ios),
              onTap: (){

              },
            ),
            new ListTile(
              leading: new Icon(Icons.mobile_screen_share),
              title: new Text("share mobile screen"),
              trailing: new Icon(Icons.arrow_forward_ios),
              onLongPress: (){

              },
            ),
            new ListTile(
              leading: new Icon(Icons.account_balance),
              title: new Text("Banking"),
              trailing: new Icon(Icons.arrow_forward_ios),
              onTap: (){

              },
            ),
            new ListTile(
              leading: new Icon(Icons.headset_mic),
              title: new Text("Help and Support"),
              trailing: new Icon(Icons.arrow_forward_ios),
              onTap: (){

              },
            ),
            new ListTile(
              leading: new Icon(Icons.settings_applications),
              title: new Text("Settings"),
              trailing: new Icon(Icons.arrow_forward_ios),
              onTap: (){

              },
            ),
            new ListTile(
              leading: new Icon(Icons.wifi),
              title: new Text("Open Network"),
              trailing: new Icon(Icons.arrow_forward_ios),
              onTap: (){

              },
            ),
            new ListTile(
              leading: new Icon(Icons.share),
              title: new Text("share The App"),
              trailing: new Icon(Icons.arrow_forward_ios),
              onTap: (){

              },
            ),
            new ListTile(
              leading: new Icon(Icons.location_on),
              title: new Text("Location"),
              trailing: new Icon(Icons.arrow_forward_ios),
              onTap: (){

              },
            ),
            new ListTile(
              leading: new Icon(Icons.rate_review),
              title: new Text("Rate us"),
              trailing: new Icon(Icons.arrow_forward_ios),
              onTap: (){

              },
            ),
            new Divider(),
            new ListTile(
              title: new Text("Close"),
              trailing: new Icon(Icons.close),
              onTap: () => Navigator.of(context).pop(),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text("Mukund"),
        elevation: defaultTargetPlatform== TargetPlatform.android?5.0:0.0,
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {
                Navigator.of(context).push(
                    CupertinoPageRoute(builder: (context) => SettingsPage()));
              })
        ],
      ),
      body: Container(
        child: Center(

          child: Image.network("https://picsum.photos/300"),
        ),
      ),
    );
  }
}

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text("Settings"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            ListTile(
              contentPadding: EdgeInsets.symmetric(horizontal: 16),
              title: Text(
                "About",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: 18,
              ),
            ),
            ListTile(
              title: Text(
                "Send Feedback",
                style: TextStyle(
                    fontSize: 14, color: Colors.black.withOpacity(0.60)),
              ),
              contentPadding: EdgeInsets.symmetric(horizontal: 16),
              onTap: () {
                print("Tapped");
              },
            ),
            ListTile(
              title: Text(
                "Report a safety emergency",
                style: TextStyle(
                    fontSize: 14, color: Colors.black.withOpacity(0.60)),
              ),
              contentPadding: EdgeInsets.symmetric(horizontal: 16),
            ),
            ListTile(
              title: Text(
                "Rate us on play store",
                style: TextStyle(
                    fontSize: 14, color: Colors.black.withOpacity(0.60)),
              ),
              contentPadding: EdgeInsets.symmetric(horizontal: 16),
            ),
            ListTile(
              title: Text(
                "Log Out",
                style: TextStyle(
                    fontSize: 14, color: Colors.black.withOpacity(0.60)),
              ),
              contentPadding: EdgeInsets.symmetric(horizontal: 16),
            ),
          ],
        ),
      ),
    );
  }
}