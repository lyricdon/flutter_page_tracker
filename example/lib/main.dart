import 'package:flutter/material.dart';
import 'package:flutter_page_tracker/flutter_page_tracker.dart';

// 页面
import 'home_page.dart';
import 'detail_page.dart';

void main() => runApp(
  TrackerRouteObserverProvider(
    child: MyApp(),
  )
);

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: TextTheme(
          button: TextStyle(fontSize: 30),
          display1: TextStyle(fontSize: 40),
          display2: TextStyle(fontSize: 40),
          display3: TextStyle(fontSize: 40),
          display4: TextStyle(fontSize: 40),
          headline: TextStyle(fontSize: 40),
          title: TextStyle(fontSize: 40),
          subhead: TextStyle(fontSize: 40),
          body1: TextStyle(fontSize: 20, color: Colors.white),
        )
      ),
      navigatorObservers: [TrackerRouteObserverProvider.of(context)],
      home: MyHomePage(title: 'Flutter_Page_tracker Demo'),
      routes: {
        "home": (_) => MyHomePage(title: 'Flutter_Page_tracker Demo'),
        "detail": (_) => DetailPage(),
      },
    );
  }
}
