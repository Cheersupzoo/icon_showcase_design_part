import 'package:flutter/material.dart';
import 'package:icon_showcase_design_part/color_palette.dart';
import 'package:icon_showcase_design_part/icon_data.dart';
import 'package:icon_showcase_design_part/detail_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Icon Showcase',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Icon Showcase'),
      debugShowCheckedModeBanner: false,
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorPalette.grey90,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          title: Text(
            widget.title,
            style: TextStyle(color: ColorPalette.grey10),
          ),
          leading: Icon(
            Icons.menu,
            color: ColorPalette.grey10,
          ),
        ),
        body: ListView.builder(
          itemCount: iconList.length,
          itemBuilder: (context, index) => InkWell(
            onTap: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => DetailPage(
                      iconData: iconList[index],
                    ))),
            child: Card(
              color: ColorPalette.grey10,
              margin: EdgeInsets.all(10),
              elevation: 10.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0)),
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: ListTile(
                  leading: Icon(
                    iconList[index].icon,
                    size: 45.0,
                    color: ColorPalette.grey60,
                  ),
                  title: Text(
                    iconList[index].title,
                    style: TextStyle(color: Colors.black87, fontSize: 20.0),
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
