import 'dart:developer';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: 'Flutter Demo',
      // theme: CupertinoThemeData(
      //   textTheme: CupertinoTextThemeData(
      //     navLargeTitleTextStyle: TextStyle(
      //       fontWeight: FontWeight.bold,
      //       fontSize: 70.0,
      //       color: CupertinoColors.white,
      //     ),
      //   ),
      // ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: [
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.book_solid), label: 'Articles'),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.eye_solid), label: 'Views'),
        ],
      ),
      tabBuilder: (context, i) {
        return CupertinoTabView(
          builder: (context) {
            return CupertinoPageScaffold(
              navigationBar: CupertinoNavigationBar(
                middle: i == 0 ? Text('Articles') : Text('Views'),
              ),
              child: Center(
                child: CupertinoButton(
                  child: Text('This is tab $i', style: CupertinoTheme.of(context).textTheme.navLargeTitleTextStyle),
                  onPressed: () {
                    Navigator.of(context).push(
                      CupertinoPageRoute(builder: (context) {
                        print('pressed $i');
                        return DetailPage(i == 0 ? 'Articles' : 'Views');
                      }),
                    );
                  },
                ),
              ),
            );
          },
        );
      },
    );

    // Hello world
    // return CupertinoPageScaffold(
    //   child: Center(
    //     child: Text(
    //       'Hello, World!',
    //       style: CupertinoTheme.of(context).textTheme.navLargeTitleTextStyle,
    //     ),
    //   )
    // );
  }
}

class DetailPage extends StatelessWidget {
  // const DetailPage({Key? key}) : super(key: key);

  final String topic;
  const DetailPage(this.topic);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Detail'),
      ),
      child: Center(
        child: Text(
          'This is detail page for $topic',
          style: CupertinoTheme.of(context).textTheme.navLargeTitleTextStyle,
        ),
      ),
    );
  }
}
